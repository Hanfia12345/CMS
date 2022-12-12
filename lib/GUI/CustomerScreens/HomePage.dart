import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:the_builders/GUI/CustomerScreens/AllProduct.dart';
import 'package:the_builders/GUI/CustomerScreens/Construct.dart';
import 'package:the_builders/GUI/loginpages.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
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
                color: Color.fromARGB(255, 255, 81, 0),
                size: 33.r,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 81, 0), fontSize: 22.sp),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomerHome()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.construction,
                color: Color.fromARGB(255, 255, 81, 0),
                size: 33.r,
              ),
              title: Text(
                'Construct',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 81, 0), fontSize: 22.sp),
              ),
              onTap: () {
                Get.to(Estimate());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Estimate()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 255, 81, 0),
                size: 33.r,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 81, 0), fontSize: 22.sp),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          //border: Border.all(width: 1.w),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/b.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Bricks',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/cc.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Cement',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 7.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/tiles.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Tiles',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/sand.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Sand',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 7.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/steel.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Steel',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/crush.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Crushed Stone',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 7.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/stone.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Stone',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/marble.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Marble',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 7.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/tiles.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Tiles',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/stone.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Stone',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 7.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/b.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Bricks',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductFromDifferentVendors()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/b.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Center(
                        child: Text(
                      'Bricks',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
