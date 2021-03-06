import 'package:final_year_project/pages/laundryOwner/addnewlaundry/controller/addnewlaundry_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundrydetails/controller/mylaundrydetails_controller.dart';
import 'package:get/get.dart';

class MyLaundryDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLaundryDetailsController>(() => MyLaundryDetailsController());
    Get.lazyPut<AddNewLaundryController>(() => AddNewLaundryController());
  }
}
