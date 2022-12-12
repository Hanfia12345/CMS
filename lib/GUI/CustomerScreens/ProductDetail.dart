import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/GUI/CustomerScreens/AllProduct.dart';
import 'package:the_builders/GUI/CustomerScreens/Cart.dart';
import 'package:the_builders/GUI/CustomerScreens/HomePage.dart';
import 'package:the_builders/GUI/loginpages.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'Product Details',
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
              onTap: () {},
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              Container(
                height: 400.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/b.png',
                  ),
                  fit: BoxFit.fill,
                )),
              ),
              Container(
                color: Colors.white,
                height: 120.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Rs. ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 38.sp),
                        ),
                        Text(
                          '13',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 38.sp),
                        ),
                      ],
                    ),
                    Text(
                      'Sand Lime Bricks',
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          //color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 28.sp),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 170.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MJ Building Material.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 28.sp),
                    ),
                    Text(
                      'Location ',
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 18.sp),
                    ),
                    Text(
                      'Commercial Market Rd Rawalpindi',
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          //color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 28.sp),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 215.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rocommended For You',
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
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
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 140.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.black),
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
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 140.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.black),
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
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 140.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.black),
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
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 140.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                    style: TextStyle(
                                        fontSize: 22.sp, color: Colors.black),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0.sp,

          //backgroundColor: Colors.orangeAccent[200],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Buy Now',
              icon: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy Now ',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  primary: Color.fromARGB(255, 253, 166, 3),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Add To Cart',
              icon: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddToCart()));
                },
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  primary: Color.fromARGB(255, 255, 81, 0),
                ),
              ),
            ),
          ]),
    );
  }
}
