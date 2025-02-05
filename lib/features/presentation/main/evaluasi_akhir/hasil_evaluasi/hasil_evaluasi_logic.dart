import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/hasil_evaluasi/hasil_evaluasi_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class HasilEvaluasiLogic extends GetxController {
  HasilEvaluasiState state = HasilEvaluasiState();

  Widget peringkatWidget(int peringkat) {
    switch (peringkat) {
      case 1:
        return Image.asset('assets/icons/satu.png', width: 35);
      case 2:
        return Image.asset('assets/icons/dua.png', width: 35);
      case 3:
        return Image.asset('assets/icons/tiga.png', width: 35);
      default:
        return SizedBox(
          width: 35,
          height: 35,
          child: Center(
            child: Text(
              '$peringkat',
              style: darkBlueTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
          ),
        );
    }
  }
}
