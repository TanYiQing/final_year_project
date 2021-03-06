import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachines_controller.dart';
import 'package:final_year_project/pages/laundryOwner/home/controller/home_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/controller/mywallet_controller.dart';
import 'package:get/get.dart';

class HomeLaundryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeLaundryController>(() => HomeLaundryController());
    Get.lazyPut<MyWalletController>(() => MyWalletController());
    Get.lazyPut<ErrorMachinesController>(() => ErrorMachinesController());
  }
}
