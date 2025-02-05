import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:terralith/features/application/materi_app_service.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_logic.dart';

import '../../../../../../utility/shared/constants/constants_ui.dart';

class DetailMateriUi extends StatefulWidget {
  final String asset, title, materi;
  const DetailMateriUi({
    super.key,
    required this.asset,
    required this.title,
    required this.materi,
  });

  @override
  State<DetailMateriUi> createState() => _DetailMateriUiState();
}

class _DetailMateriUiState extends State<DetailMateriUi> {
  final _appService = Get.put(MateriAppService());
  final _subMateriLogic = Get.find<SubMateriLogic>();

  PdfViewerController controller = PdfViewerController();
  Timer? _debounce;
  int invisiblePage = 0;

  @override
  void initState() {
    controller.addListener(() {
      final data = controller.pageNumber;
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 300), () {
        setState(() {
          invisiblePage > data
              ? invisiblePage = invisiblePage
              : invisiblePage = data;
        });
      });
    });
    super.initState();
  }

  @override
  void dispose() async {
    _debounce?.cancel();
    await recordProgress();
    super.dispose();
  }

  Future<void> recordProgress() async {
    double progress = (invisiblePage / controller.pageCount) * 100;

    EasyLoading.show();
    await _appService.updateMateriProgress(
      materi: widget.materi,
      subMateri: widget.title,
      progress: progress,
    );
    EasyLoading.dismiss();

    _subMateriLogic.updateProgress(title: widget.title, progress: progress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlueColor),
        backgroundColor: kBlueSemiLightColor,
        shadowColor: kBlackColor.withOpacity(0.25),
        title: Text(
          widget.title,
          style: blueTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset(
        "assets/materi/pdf/${widget.asset}",
        pageSpacing: 1,
        pageLayoutMode: PdfPageLayoutMode.continuous,
        controller: controller,
      ),
    );
  }
}
