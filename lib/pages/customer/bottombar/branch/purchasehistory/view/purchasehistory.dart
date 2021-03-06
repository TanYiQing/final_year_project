import 'package:final_year_project/pages/customer/bottombar/branch/purchasehistory/tile/purchasehistory_tile.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class PurchaseHistoryPage extends StatelessWidget {
  final controller = Get.lazyPut<BottomBarController>(
      () => BottomBarController(),
      fenix: true);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Order History".tr,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GetBuilder<BottomBarController>(builder: (controller) {
          return (controller.completedOrderList.length != 0)
              ? Column(
                  children: [
                    Container(
                        child: Flexible(
                            child: Center(
                                child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: ((screenWidth / screenHeight) / 0.23),
                      children: List.generate(
                          controller.completedOrderList.length, (index) {
                        return GestureDetector(
                            onTap: () {
                              controller.viewCompletedOrderDetails(index);
                            },
                            child: PurchaseHistoryTile(
                                controller.completedOrderList[index]));
                      }),
                    )))),
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight / 3,
                        child: Lottie.asset(
                          "assets/lottie/purchasehistory-not-found.json",
                        ),
                      ),
                      Text("NO ORDER HISTORY",
                          style: TextStyle(
                              fontSize: screenWidth / 18,
                              fontWeight: FontWeight.bold)),
                      Text("Explore and order now",
                          style: TextStyle(fontSize: screenWidth / 25))
                    ],
                  ),
                );
        }));
  }
}
