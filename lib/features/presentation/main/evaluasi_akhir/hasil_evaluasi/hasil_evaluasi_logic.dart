import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:terralith/features/domain/auth/model/user_model.dart';
import 'package:terralith/features/presentation/main/evaluasi_akhir/hasil_evaluasi/hasil_evaluasi_state.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class HasilEvaluasiLogic extends GetxController {
  HasilEvaluasiState state = HasilEvaluasiState();

  @override
  void onInit() {
    state.myEvaluasi = Get.arguments;
    super.onInit();
  }

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

  Future<UserModel> getUserData({required String userId}) async {
    Get.log('cek userid dong $userId');
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Fetch user data using userId
    QuerySnapshot userSnapshot = await firestore
        .collection('users')
        .where('userId', isEqualTo: userId)
        .get();

    if (userSnapshot.docs.isNotEmpty) {
      Map<String, dynamic> userData =
          userSnapshot.docs.first.data() as Map<String, dynamic>;
      return UserModel.fromJson(userData);
    }

    // Return default user if not found
    return UserModel(
      avatar: 'assets/avatars/1.png',
      name: 'arman',
      userId: '',
      email: '',
    );
  }
}
