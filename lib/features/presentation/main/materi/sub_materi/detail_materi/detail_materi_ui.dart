import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:terralith/features/application/materi_app_service.dart';

import '../../../../../../utility/shared/constants/constants_ui.dart';

class DetailMateriUi extends StatefulWidget {
  final String asset, title;
  const DetailMateriUi({
    super.key,
    required this.asset,
    required this.title,
  });

  @override
  State<DetailMateriUi> createState() => _DetailMateriUiState();
}

class _DetailMateriUiState extends State<DetailMateriUi> {
  final _appService = Get.put(MateriAppService());
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
  void dispose() {
    _debounce?.cancel();
    recordProgress();
    super.dispose();
  }

  void recordProgress() async {
    EasyLoading.show();
    final data = await _appService.updateMateriProgress(
      materi: widget.title,
      progress: (invisiblePage / controller.pageCount) * 100,
    );
    EasyLoading.dismiss();

    data.fold(
      (l) => Get.log('error nih $l'),
      (r) => Get.log('berhasil nih'),
    );
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
