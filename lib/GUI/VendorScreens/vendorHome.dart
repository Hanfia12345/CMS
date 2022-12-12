import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/GUI/VendorScreens/AddNewProduct.dart';
import 'package:the_builders/GUI/VendorScreens/ShowOrders.dart';
import 'package:the_builders/GUI/VendorScreens/ViewProduct.dart';
import 'package:the_builders/GUI/loginpages.dart';
import 'package:get/get.dart';

class VendorHome extends StatefulWidget {
  const VendorHome({Key? key}) : super(key: key);

  @override
  State<VendorHome> createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
  var id = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 110, 43),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 255, 110, 43)),
              child: Text(
                'My Profile',
                style: TextStyle(color: Colors.white, fontSize: 28.sp),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'Products',
                  style: TextStyle(color: Colors.white, fontSize: 28.sp),
                ),
                SizedBox(
                  width: 30.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(AddNewProduct(), arguments: "${id[0]}");
                  },
                  child: Text(
                    'ADD',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(ViewProducts(), arguments: "${id[0]}");
                  },
                  child: Text(
                    'VIEW',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'Orders',
                  style: TextStyle(color: Colors.white, fontSize: 28.sp),
                ),
                SizedBox(
                  width: 55.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(ShowOrders(), arguments: "${id}");
                  },
                  child: Text(
                    'SHOW',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 450.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(onConfirm: () {
                      Get.to(login());
                    });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text('LogOut'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
