import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnGoingOrderTile extends StatelessWidget {
  final Order order;
  final int index;

  OnGoingOrderTile(this.order, this.index);
  final bottombarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID " + "#" + order.orderId.toString()),
                  Text("Receipt ID " + "#" + order.receiptId.toString()),
                  Divider(color: Colors.black),
                  Text("Machine ID " + "#" + order.machineId.toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(order.machineType.toString()),
                      Text("RM " + order.price.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Addon Item"),
                      (order.ordermethod.toString() == "Delivery")
                          ? Text("RM " +
                              (double.parse(order.totalPrice.toString()) -
                                      double.parse(order.price.toString()) -
                                      5.00)
                                  .toStringAsFixed(2))
                          : Text("RM " +
                              (double.parse(order.totalPrice.toString()) -
                                      double.parse(order.price.toString()))
                                  .toStringAsFixed(2)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Charge"),
                      (order.ordermethod.toString() == "Delivery")
                          ? Text("RM 5.00")
                          : Text("RM 0.00")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 20)),
                      Text("RM " + order.totalPrice.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 20)),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: GetBuilder<BottomBarController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      controller.trackOrder(index);
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Track Order".tr,
                            ),
                          )),
                    ),
                  );
                }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
