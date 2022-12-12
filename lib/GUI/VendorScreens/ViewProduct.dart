import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_builders/GUI/VendorScreens/ProductDetails.dart';
import 'dart:convert';
import 'package:the_builders/GUI/globalApi.dart' as global;

// To parse this JSON data, do
//
//     final vendorProductss = vendorProductssFromJson(jsonString);

import 'dart:convert';

List<VendorProductss> vendorProductssFromJson(String str) =>
    List<VendorProductss>.from(
        json.decode(str).map((x) => VendorProductss.fromJson(x)));

String vendorProductssToJson(List<VendorProductss> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VendorProductss {
  VendorProductss({
    this.pid,
    this.pDesc,
    this.pCtg,
    this.pImage,
    this.pUnit,
    this.unitcost,
  });

  int? pid;
  String? pDesc;
  String? pCtg;
  String? pImage;
  String? pUnit;
  int? unitcost;

  factory VendorProductss.fromJson(Map<String, dynamic> json) =>
      VendorProductss(
        pid: json["pid"],
        pDesc: json["p_desc"],
        pCtg: json["p_ctg"],
        pImage: json["P_image"] == null ? null : json["P_image"],
        pUnit: json["p_unit"],
        unitcost: json["unitcost"],
      );

  Map<String, dynamic> toJson() => {
        "pid": pid,
        "p_desc": pDesc,
        "p_ctg": pCtg,
        "P_image": pImage == null ? null : pImage,
        "p_unit": pUnit,
        "unitcost": unitcost,
      };
}

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key}) : super(key: key);

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  var vid = Get.arguments;
  //var pid;

  Future<List<VendorProductss>> GetVendorProducts() async {
    var httprequest = GetConnect();
    httprequest.timeout = Duration(seconds: 20);
    var response = await httprequest
        .get("${global.url}/displayVendorProducts?id=${vid[0]}");
    print(response.body);
    //print(response.statusCode);
    //print(vid[0]);
    if (response.statusCode == 200) {
      var res = vendorProductssFromJson(response.bodyString!);
      //pid=response.body["pid"];
      return res;
    } else {
      //print(response.statusCode);
      //print(vid[0]);
      throw Exception('Failed to load data');
    }
  }

  var pImagesUrl = "http://192.168.1.31/apii/Images/productImages/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 110, 43),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 81, 0),
          title: Text(
            'All Products',
            style: TextStyle(color: Colors.white, fontSize: 38.sp),
          ),
        ),
        body: Center(
          child: FutureBuilder<List<VendorProductss>>(
            future: GetVendorProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    itemCount: snapshot.data!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                              elevation: 3.0,
                              child: Image.network(
                                pImagesUrl +
                                    snapshot.data![index].pImage.toString(),
                                fit: BoxFit.cover,
                                height: 147,
                                width: 175,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                    snapshot.data![index].pDesc.toString(),
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.to(ProductDetails(),
                              arguments: "${vid}${snapshot.data![index].pid}");
                          print(snapshot.data![index].pid);
                        },
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        )

        //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //       Column(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => ProductDetails()));
        //             },
        //             child: Image.asset(
        //               'assets/b.png',
        //               width: 180.w,
        //               height: 140.h,
        //             ),
        //           ),
        //           Center(
        //               child: Text(
        //             'Bricks',
        //             style: TextStyle(fontSize: 22.sp, color: Colors.white),
        //           ))
        //         ],
        //       ),
        //       Column(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => ProductDetails()));
        //             },
        //             child: Image.asset(
        //               'assets/cc.png',
        //               width: 180.w,
        //               height: 140.h,
        //             ),
        //           ),
        //           Center(
        //               child: Text(
        //             'Cement',
        //             style: TextStyle(fontSize: 22.sp, color: Colors.white),
        //           ))
        //         ],
        //       ),
        //     ]),

        );
  }
}
