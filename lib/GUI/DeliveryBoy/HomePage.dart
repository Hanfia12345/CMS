import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/GUI/loginpages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    MaterialPageRoute(builder: (context) => HomePage()));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 70.h,
                width: 300.w,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(132, 229, 255, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Order Requests',
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.fire_truck_outlined,
                          size: 34.r,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                height: 220.h,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(29, 255, 102, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'Product:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'steel,bricks',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'From:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Commercial Market Road',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'To:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Raja Bazar',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrackingPage()));
                            },
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              //maximumSize: Size(100.w, 40.h),
                              padding: EdgeInsets.all(20),
                              primary: Color.fromARGB(255, 255, 81, 0),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                          child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Reject',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            //maximumSize: Size(100.w, 40.h),
                            padding: EdgeInsets.all(20),
                            primary: Color.fromARGB(255, 255, 81, 0),
                          ),
                        ),
                      ))
                    ]),
                  ],
                )),
            Container(
                height: 220.h,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(29, 255, 102, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'Product:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'crush,steel',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'From:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        '6th Road rwp',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'To:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Ra.Bazar Rwp',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrackingPage()));
                            },
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              //maximumSize: Size(100.w, 40.h),
                              padding: EdgeInsets.all(20),
                              primary: Color.fromARGB(255, 255, 81, 0),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                          child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Reject',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            //maximumSize: Size(100.w, 40.h),
                            padding: EdgeInsets.all(20),
                            primary: Color.fromARGB(255, 255, 81, 0),
                          ),
                        ),
                      ))
                    ]),
                  ],
                )),
            Container(
                height: 220.h,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(29, 255, 102, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'Product:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Sand',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'From:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Saidpur Road rwp',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: Text(
                        'To:',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      )),
                      TableCell(
                          child: Text(
                        'Sadiqabad rwp',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrackingPage()));
                            },
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              //maximumSize: Size(100.w, 40.h),
                              padding: EdgeInsets.all(20),
                              primary: Color.fromARGB(255, 255, 81, 0),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                          child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Reject',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            //maximumSize: Size(100.w, 40.h),
                            padding: EdgeInsets.all(20),
                            primary: Color.fromARGB(255, 255, 81, 0),
                          ),
                        ),
                      ))
                    ]),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    MaterialPageRoute(builder: (context) => HomePage()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 400.h,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/map.png',
              ),
              fit: BoxFit.fill,
            )),
          ),
          Container(
              height: 220.h,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(29, 255, 102, 0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Table(
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Ordered By:',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Mr Ali.',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Product:',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Sand',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'From:',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Saidpur Road rwp',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'To:',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Sadiqabad rwp',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Contact:',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      '03037275402',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontWeight: FontWeight.bold),
                    ))
                  ]),
                ],
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Not Found',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                //maximumSize: Size(100.w, 40.h),
                padding: EdgeInsets.all(20),
                primary: Color.fromARGB(255, 255, 81, 0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderCompleted()));
              },
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                //maximumSize: Size(100.w, 40.h),
                padding: EdgeInsets.fromLTRB(45, 20, 45, 20),
                primary: Color.fromARGB(255, 255, 81, 0),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  State<OrderCompleted> createState() => _OrderCompletedState();
}

class _OrderCompletedState extends State<OrderCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Order Completed Successfully",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
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
