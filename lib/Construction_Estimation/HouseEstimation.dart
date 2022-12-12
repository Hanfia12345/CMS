import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class fiveMarlaHouse extends StatefulWidget {
  const fiveMarlaHouse({Key? key}) : super(key: key);

  @override
  State<fiveMarlaHouse> createState() => _fiveMarlaHouseState();
}

class _fiveMarlaHouseState extends State<fiveMarlaHouse> {
  TextEditingController coveredarea = TextEditingController();
  TextEditingController sandrequired = TextEditingController();
  TextEditingController bricksrequired = TextEditingController();
  TextEditingController cementrequired = TextEditingController();
  TextEditingController steelrequired = TextEditingController();
  TextEditingController crushrequired = TextEditingController();
  TextEditingController labourcostpersqft = TextEditingController();

  TextEditingController labourcost = TextEditingController();
  TextEditingController roricost = TextEditingController();
  TextEditingController cementcost = TextEditingController();
  TextEditingController crushcost = TextEditingController();
  TextEditingController sandcost = TextEditingController();
  TextEditingController steelcost = TextEditingController();
  TextEditingController totalcost = TextEditingController();
  TextEditingController brickscost = TextEditingController();

  bool isvisible = false;
  bool visible = false;

  void RequiredMatrialForHouse() {
    var total_sqft = int.parse(coveredarea.text);

    //bricks Required
    var bricksPerSqft = 26;
    var totalBricks = total_sqft * bricksPerSqft;
    bricksrequired.text = totalBricks.toString();
    var costOfBricks = totalBricks * 13;
    brickscost.text = "Rs. " + costOfBricks.toString();

    //Cement Required in bags
    var cementPerSqft = 0.32;
    var totalCement = total_sqft * cementPerSqft;
    cementrequired.text = totalCement.toString() + " bags";
    var costOfCement = totalCement * 1250;
    cementcost.text = "Rs. " + costOfCement.toString();

    //Sand Required in cft
    var sandPerSqft = 1.4;
    var totalSand = total_sqft * sandPerSqft;
    sandrequired.text = totalSand.toString() + " Cft";
    var costOfSand = totalSand * 25;
    sandcost.text = "Rs. " + costOfSand.toString();

    //Steel Required in Tons
    var steelPerSqft = 0.00218;
    var totalSteel = total_sqft * steelPerSqft;
    steelrequired.text = totalSteel.toString() + " Tons";
    var costOfSteel = totalSteel * 190000;
    steelcost.text = "Rs. " + costOfSteel.toString();

    //Crush Required in cft
    var crushPerSqft = 0.93;
    var totalCrush = total_sqft * crushPerSqft;
    crushrequired.text = totalCrush.toString() + " Cft";
    var costOfCrush = totalCrush * 45;
    crushcost.text = "Rs. " + costOfCrush.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'House Estimate',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
              height: 50.h,
              color: Colors.green,
              child: Center(
                  child: Text('Gray Structure Cost - 5 Marla House',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                      )))),
          Container(
            height: 180.h,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                      'Covered Area ',
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
                          controller: coveredarea,
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Covered Area (Square Feet)",
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
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                RequiredMatrialForHouse();
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
              height: 750.h,
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
                        'Grey Structure 5 Marla House',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 22.sp),
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
                              hintText: "50000",
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
                              hintText: "525 bags",
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
                              hintText: "3850 cft",
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
                        'Steel Required',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: steelrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "1125 kg",
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
                        'Crush Required',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: crushrequired,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "1500 cft",
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
                        'Labour Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: labourcostpersqft,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              hintText: "50000",
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
              height: 750.h,
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
                        'Grey Structure 5 Marla House',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 22.sp),
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
                            controller: brickscost,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              hintText: "600000 Rs",
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
                            controller: cementcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "338625 Rs",
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
                            controller: sandcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "77000 cft",
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
                        'Steel Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: steelcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "270000 Rs",
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
                        'Crush Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: crushcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "111000 Rs",
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
                        'Labour Cost',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 180.w,
                        child: TextField(
                            readOnly: true,
                            controller: labourcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "770250 Rs",
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
                            controller: totalcost,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            decoration: InputDecoration(
                              hintText: "2166875 Rs",
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
