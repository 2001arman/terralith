import 'package:get/get.dart';
import 'package:terralith/features/domain/auth/model/user_model.dart';

class GlobalVariable {
  Future<GlobalVariable> init() async {
    return this;
  }

  var userData = Rxn<UserModel>();

  clearData() {
    userData.value = null;
  }

  setUserData(UserModel data) {
    userData.value = data;
  }
}
