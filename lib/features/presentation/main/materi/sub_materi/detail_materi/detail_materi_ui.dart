import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
  PdfViewerController controller = PdfViewerController();
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
