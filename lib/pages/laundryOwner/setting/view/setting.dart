import 'package:final_year_project/pages/laundryOwner/setting/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.language, color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Language".tr),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GetX<SettingLaundryController>(
                            init: SettingLaundryController(),
                            builder: (controller) {
                              controller.changeLanguage();
                              return Text(controller.language.value);
                            }),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.help_center, color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Help Centre"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/aboutus');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_laundry_service_outlined,
                            color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("About Us"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.my_library_books_outlined,
                            color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Terms and Conditions"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            // ListTile(
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Icon(Icons.dark_mode, color: Colors.amber),
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Text("Dark Mode".tr),
            //           ),
            //         ],
            //       ),
            //       Obx(() {
            //         return Switch(
            //           onChanged: (value) {}, value: true,
            //           // value: themecontroller.isSwitching.value,
            //           // onChanged: (value) {
            //           //   themecontroller.toggleSwitch();
            //           // }
            //         );
            //       })
            //     ],
            //   ),
            // ),
            GetBuilder<SettingLaundryController>(builder: (controller) {
              return GestureDetector(
                  onTap: () {
                    // AccountController().clickLogout();
                    controller.clickLogout();
                  },
                  child: ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.logout, color: Colors.black),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Logout".tr),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            })
          ],
        )),
      ),
    );
  }
}
