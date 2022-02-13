import 'package:final_year_project/pages/customer/setting/controller/settingcontroller.dart';
import 'package:final_year_project/pages/mutual/login/controller/login_controller.dart';
import 'package:get/get.dart';

class SettingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
