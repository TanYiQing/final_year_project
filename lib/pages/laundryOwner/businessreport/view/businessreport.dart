import 'package:final_year_project/pages/laundryOwner/businessreport/controller/businessreport_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/controller/mylaundry_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/tile/laundry_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessReportPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Business Report".tr,
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Column(
            children: [
              GetX<BusinessReportController>(builder: (_) {
                return Container(
                    child: Flexible(
                        child: Center(
                            child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: ((screenWidth / screenHeight) / 0.2),
                  children: List.generate(_.laundryList.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          _.viewLaundryDetails(index);
                        },
                        child: LaundryTile(_.laundryList[index]));
                  }),
                ))));
              }),
            ],
          )),
    );
  }
}
