import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 110, 43),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Text(
              'Bricks',
              style: TextStyle(
                  color: Color.fromARGB(255, 228, 200, 150), fontSize: 38.sp),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Category :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'A',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Available Stock :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '30000',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Pieces',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Price Per Piece :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProduct()));
                      },
                      child: Text(
                        'Edit',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductRemoved()));
                      },
                      child: Text(
                        'Remove',
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Category :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'B',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Available Stock :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '30000',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Pieces',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Price Per Piece :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '10',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProduct()));
                      },
                      child: Text(
                        'Edit',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductRemoved()));
                      },
                      child: Text(
                        'Remove',
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Category :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Available Stock :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '30000',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Pieces',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Price Per Piece :',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '9',
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProduct()));
                      },
                      child: Text(
                        'Edit',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductRemoved()));
                      },
                      child: Text(
                        'Remove',
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductRemoved extends StatefulWidget {
  const ProductRemoved({Key? key}) : super(key: key);

  @override
  State<ProductRemoved> createState() => _ProductRemovedState();
}

class _ProductRemovedState extends State<ProductRemoved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Product Removed Successfully",
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
                            builder: (context) => ProductDetails()));
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

class EditProduct extends StatefulWidget {
  const EditProduct({Key? key}) : super(key: key);

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pCategory = TextEditingController();
    TextEditingController pUnitPrice = TextEditingController();
    TextEditingController AvailableStock = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 110, 43),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Center(
                child: Text(
                  'Edit Product',
                  style: TextStyle(color: Colors.white, fontSize: 38.sp),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextField(
                    cursorColor: Colors.white,
                    controller: pCategory,
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Product Category",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextField(
                    cursorColor: Colors.white,
                    controller: AvailableStock,
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Available Stock",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextField(
                    cursorColor: Colors.white,
                    controller: pUnitPrice,
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Price/unit",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 210.w),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductEdited()));
                  },
                  child: Text(
                    'Done',
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
      ),
    );
  }
}

class ProductEdited extends StatefulWidget {
  const ProductEdited({Key? key}) : super(key: key);

  @override
  State<ProductEdited> createState() => _ProductEditedState();
}

class _ProductEditedState extends State<ProductEdited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Product Details Updated",
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
                            builder: (context) => ProductDetails()));
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
