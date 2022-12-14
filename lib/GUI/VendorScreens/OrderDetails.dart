import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_builders/GUI/VendorScreens/ShowOrders.dart';
import 'package:the_builders/GUI/globalApi.dart' as global;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:collection';

List<Orderdetailss> orderdetailssFromJson(String str) =>
    List<Orderdetailss>.from(
        json.decode(str).map((x) => Orderdetailss.fromJson(x)));

String orderdetailssToJson(List<Orderdetailss> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Orderdetailss {
  Orderdetailss({
    this.name,
    this.pDesc,
    this.pQty,
    required this.oDate,
    required this.deliveryTime,
  });

  String? name;
  String? pDesc;
  int? pQty;
  DateTime oDate;
  DateTime deliveryTime;

  factory Orderdetailss.fromJson(Map<String, dynamic> json) => Orderdetailss(
        name: json["name"],
        pDesc: json["p_desc"],
        pQty: json["p_qty"],
        oDate: DateTime.parse(json["O_date"]),
        deliveryTime: DateTime.parse(json["Delivery_time"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "p_desc": pDesc,
        "p_qty": pQty,
        "O_date": oDate.toIso8601String(),
        "Delivery_time": deliveryTime.toIso8601String(),
      };
}

class PendingOrderDetails extends StatefulWidget {
  const PendingOrderDetails({Key? key}) : super(key: key);

  @override
  State<PendingOrderDetails> createState() => _PendingOrderDetailsState();
}

class _PendingOrderDetailsState extends State<PendingOrderDetails> {
  var vid = Get.arguments;

  List<dynamic> OrderItems = List.empty(growable: true);
  List<dynamic> ItemsQty = List.empty(growable: true);
  //var OrderItems = [];
  // var a = OrderItems.toSet().toList();

  //var ditinct =OrderItems.toSet

  Future<List<Orderdetailss>> GetOrdersDetail() async {
    var httprequest = GetConnect();
    var response =
        await httprequest.get("${global.url}/orderdetails?oid=${vid[1]}");
    print(response.body);
    print(response.statusCode);
    print(vid[1]);
    if (response.statusCode == 200) {
      var res = orderdetailssFromJson(response.bodyString!);
      //List res = jsonDecode(response.bodyString!);
      //return res.map((e) => OrderDetailss.fromJson(e)).toList();
      return res;
    } else {
      print(response.statusCode);
      print(vid[1]);
      throw Exception('Failed to load data');
    }
  }

  String DropdownValue = 'Processing';
  var items = ['Processing', 'Delivered', 'Canceled'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 110, 43),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 81, 0),
          title: Text(
            'Order Details',
            style: TextStyle(color: Colors.white, fontSize: 38.sp),
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  FutureBuilder<List<Orderdetailss>>(
                    future: GetOrdersDetail(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Orderdetailss> Order =
                            snapshot.data as List<Orderdetailss>;
                        if (OrderItems.isEmpty) {
                          for (var i in Order) {
                            OrderItems.add(i.pDesc);
                            //OrderItems.add(i.pQty);
                          }
                        }
                        if (ItemsQty.isEmpty) {
                          for (var i in Order) {
                            ItemsQty.add(i.pQty);
                            //OrderItems.add(i.pQty);
                          }
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ordered Items & Quantity',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25.sp)),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 300.h,
                              child: ListView.builder(
                                  itemCount: OrderItems.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(40, 0, 40, 0),
                                      leading: Text(
                                        ">${OrderItems[index].toString()}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.sp),
                                      ),
                                      trailing: Text(
                                        "${ItemsQty[index].toString()}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.sp),
                                      ),
                                    );
                                  }),
                            ),
                            Divider(
                              height: 3,
                              color: Colors.white,
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        Text(
                                          'Order Id :',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                        SizedBox(
                                          width: 75.w,
                                        ),
                                        Text(
                                          vid[1],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        Text(
                                          'Order By :',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                        SizedBox(
                                          width: 70.w,
                                        ),
                                        Text(
                                          snapshot.data![index].name.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        Text(
                                          'Order Date :',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        SizedBox(
                                          width: 190.w,
                                          child: Text(
                                            "${snapshot.data![index].oDate.day.toString()}/${snapshot.data![index].oDate.month.toString()}/${snapshot.data![index].oDate.year.toString()}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        Text(
                                          'Delivery Time :',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                        SizedBox(
                                          width: 22.w,
                                        ),
                                        SizedBox(
                                          width: 190.w,
                                          child: Text(
                                            "${snapshot.data![index].deliveryTime.day.toString()}/${snapshot.data![index].deliveryTime.month.toString()}/${snapshot.data![index].deliveryTime.year.toString()}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        Text(
                                          'Order Status :',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        DropdownButton(
                                            value: DropdownValue,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: items.map((String items) {
                                              return DropdownMenuItem(
                                                child: Text(
                                                  items,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22.sp),
                                                ),
                                                value: items,
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                DropdownValue = newValue!;
                                              });
                                            })
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      return const CircularProgressIndicator();
                    },
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 210.w),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(ShowOrders(), arguments: "${vid[0]}");
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class DeliveredOrderDetails extends StatefulWidget {
  const DeliveredOrderDetails({Key? key}) : super(key: key);

  @override
  State<DeliveredOrderDetails> createState() => _DeliveredOrderDetailsState();
}

class _DeliveredOrderDetailsState extends State<DeliveredOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 110, 43),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 81, 0),
          title: Text(
            'Order Details',
            style: TextStyle(color: Colors.white, fontSize: 38.sp),
          ),
        ),
        body: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Order Id :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 75.w,
                  ),
                  Text(
                    '122231',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Ordered Items :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 190.w,
                    child: Text(
                      'cement , sand , marble , steel',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Order By :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  Text(
                    'Hanfia',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Order Date :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    '22/07/2022',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Delivery Time :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                  Text(
                    '28/07/2022',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Order Status :',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 210.w),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShowOrders()));
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
