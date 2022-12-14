import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/GUI/CustomerScreens/BookVehicle.dart';
import 'package:the_builders/GUI/CustomerScreens/HomePage.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 30.sp),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 120.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    'Products Added ',
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 81, 0),
                        fontSize: 28.sp),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: const Color.fromARGB(255, 255, 81, 0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CustomerHome()));
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Buy More',
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 130.h,
            child: Row(
              children: [
                Container(
                  height: 130.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/b.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                //height: 50.h,
                                width: 180.w,
                                child: Text(
                                  'Sand Lime Bricks  ',
                                  style: TextStyle(fontSize: 18.sp),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      textStyle: TextStyle(
                                          decoration: TextDecoration.underline),
                                      primary: const Color.fromARGB(
                                          255, 255, 81, 0)),
                                  onPressed: () {},
                                  child: const Text('Remove')),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 130.h,
            child: Row(
              children: [
                Container(
                  height: 130.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/sand.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                //height: 50.h,
                                width: 180.w,
                                child: Text(
                                  'Sand ',
                                  style: TextStyle(fontSize: 18.sp),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      textStyle: TextStyle(
                                          decoration: TextDecoration.underline),
                                      primary: const Color.fromARGB(
                                          255, 255, 81, 0)),
                                  onPressed: () {},
                                  child: const Text('Remove')),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '800',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 130.h,
            child: Row(
              children: [
                Container(
                  height: 130.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/cc.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                //height: 50.h,
                                width: 180.w,
                                child: Text(
                                  'Mapple Leaf Cement ',
                                  style: TextStyle(fontSize: 18.sp),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      textStyle: TextStyle(
                                          decoration: TextDecoration.underline),
                                      primary: const Color.fromARGB(
                                          255, 255, 81, 0)),
                                  onPressed: () {},
                                  child: const Text('Remove')),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '780',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              Text(
                                '2',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200.h,
            color: Colors.white,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookVehicle()));
                  },
                  child: Text(
                    'Book Vehicle',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    primary: Color.fromARGB(255, 255, 81, 0),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      'Sub Total: : ',
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      'Rs. ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      '2373',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Delivery Charges: : ',
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      'Rs. ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      '800',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0.sp,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Total',
                icon: Row(
                  children: [
                    Text(
                      'Total: : ',
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      'Rs. ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      '3173',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                  ],
                )),
            BottomNavigationBarItem(
              label: 'Check Out',
              icon: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckOut()));
                },
                child: Text(
                  'Check Out',
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

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 30.sp),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 100.h,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            height: 100.h,
            child: Row(
              children: [
                Container(
                  height: 100.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/b.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                //height: 50.h,
                                width: 190.w,
                                child: Text(
                                  'Sand Lime Bricks  ',
                                  style: TextStyle(fontSize: 18.sp),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Qty: ',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 100.h,
            child: Row(
              children: [
                Container(
                  height: 100.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/sand.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                //height: 50.h,
                                width: 190.w,
                                child: Text(
                                  'Sand ',
                                  style: TextStyle(fontSize: 18.sp),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '800',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Qty: ',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 100.h,
            child: Row(
              children: [
                Container(
                  height: 100.h,
                  width: 130.w,
                  child: Image.asset(
                    'assets/cc.png',
                  ),
                ),
                Container(
                  width: 260.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            //height: 50.h,
                            width: 190.w,
                            child: Text(
                              'Mapple Leaf Cement ',
                              style: TextStyle(fontSize: 18.sp),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                              Text(
                                '780',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Qty: ',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              Text(
                                '2',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Delivery Charges: : ',
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                ),
                Text(
                  'Rs. ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 81, 0),
                    fontSize: 22.sp,
                  ),
                ),
                Text(
                  '800',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 81, 0),
                    fontSize: 22.sp,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0.sp,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Total',
                icon: Row(
                  children: [
                    Text(
                      'Total: : ',
                      style: TextStyle(
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      'Rs. ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      '3173',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 22.sp,
                      ),
                    ),
                  ],
                )),
            BottomNavigationBarItem(
              label: 'Place Order',
              icon: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderPlaced()));
                },
                child: Text(
                  'Place Order',
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

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Order Placed Successfully",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(207, 241, 82, 9)),
          ),
          SizedBox(
            height: 50.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 40.h,
                width: 70.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerHome()));
                  },
                  child: Text(
                    'Ok',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
