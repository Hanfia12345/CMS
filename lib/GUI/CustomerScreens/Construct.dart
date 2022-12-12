//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/Construction_Estimation/HouseEstimation.dart';
import 'package:the_builders/GUI/CustomerScreens/Cart.dart';

class Estimate extends StatefulWidget {
  const Estimate({Key? key}) : super(key: key);

  @override
  State<Estimate> createState() => _EstimateState();
}

class _EstimateState extends State<Estimate> {
  String DropdownValue = 'Wall';
  var items = ['Wall', 'Roof', 'wall Paster', 'Floor'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 200.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/est1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(132, 229, 255, 0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Text(
                    'Contruction Material Estimation ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 81, 0),
                        fontSize: 20.sp),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(100, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Text(
                    'Estimate All Building Materials ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 229, 255, 0),
                        fontSize: 20.sp),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color.fromARGB(132, 229, 255, 0),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: DropdownValue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromARGB(255, 255, 81, 0),
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 81, 0),
                                    fontSize: 22.sp),
                              ),
                              value: items,
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              DropdownValue = newValue!;
                            });
                          }),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EstimateButton()));
                      },
                      child: Text(
                        'Estimate >',
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
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const fiveMarlaHouse()));
            },
            child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(132, 229, 255, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.house,
                        size: 55.r,
                        color: Colors.green,
                      ),
                      Text(
                        '3 Marla House Estimate',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const fiveMarlaHouse()));
            },
            child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(132, 229, 255, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.house,
                        size: 55.r,
                        color: Colors.green,
                      ),
                      Text(
                        '5 Marla House Estimate',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const fiveMarlaHouse()));
            },
            child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(132, 229, 255, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.house,
                        size: 55.r,
                        color: Colors.green,
                      ),
                      Text(
                        '10 Marla House Estimate',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class EstimateButton extends StatefulWidget {
  const EstimateButton({Key? key}) : super(key: key);

  @override
  State<EstimateButton> createState() => _EstimateButtonState();
}

class _EstimateButtonState extends State<EstimateButton> {
  TextEditingController wallheight = TextEditingController();
  TextEditingController wallwidth = TextEditingController();
  TextEditingController bricksrequired = TextEditingController();
  TextEditingController cementrequired = TextEditingController();
  TextEditingController sandrequired = TextEditingController();
  bool isvisible = false;
  bool visible = false;
  void wallEstimate() {
    int width = int.parse(wallwidth.text);
    int height = int.parse(wallheight.text);
    var total_sqft = width * height;
    var bricks_sqft = 12;
    var cement_sqft = 0.0194444444;
    var sand_sqft = 0.071875;
    var totalbricks = bricks_sqft * total_sqft;
    bricksrequired.text = totalbricks.toString() + " Pieces";
    cementrequired.text = (total_sqft * cement_sqft).toString() + " bags";
    sandrequired.text = (total_sqft * sand_sqft).toString() + " cuft";
    print(cementrequired.text);
    print(sandrequired.text);
    print(totalbricks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'Wall',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 250.h,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(29, 255, 102, 0),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      'Walls Dimensions',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 81, 0),
                          fontSize: 28.sp),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 55.h,
                      width: 340.w,
                      child: TextField(
                          controller: wallheight,
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Walls Height (Feet)",
                            // hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 55.h,
                      width: 340.w,
                      child: TextField(
                          controller: wallwidth,
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Walls Width (Feet)",
                            //hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                wallEstimate();
                isvisible = !isvisible;
                setState(() {});
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                //maximumSize: Size(100.w, 40.h),
                padding: EdgeInsets.all(20),
                primary: Color.fromARGB(255, 255, 81, 0),
              ),
            ),
          ),
          Visibility(
            visible: isvisible,
            child: Container(
              height: 450.h,
              margin: EdgeInsets.fromLTRB(10, 30, 10, 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(29, 255, 102, 0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Walls Requirements',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 28.sp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bricks Required',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: bricksrequired,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              //hintText: "1728",
                              //hintStyle: TextStyle(
                              // color: Color.fromARGB(255, 255, 81, 0),
                              //),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cement Required',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: cementrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "2.8 bags",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sand Required',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: sandrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "10.35 cft",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        visible = !visible;
                        setState(() {});
                      },
                      child: Text(
                        'Calculate Cost',
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        //maximumSize: Size(100.w, 40.h),
                        padding: EdgeInsets.all(20),
                        primary: Color.fromARGB(255, 255, 81, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visible,
            child: Container(
              height: 450.h,
              margin: EdgeInsets.fromLTRB(10, 30, 10, 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(29, 255, 102, 0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Walls Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 28.sp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bricks Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: bricksrequired,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              hintText: "17280 Rs",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cement Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: cementrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "2160 Rs",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sand Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: sandrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "207 Rs",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: sandrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "19647 Rs",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 81, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
