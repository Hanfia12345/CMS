// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_builders/GUI/VendorScreens/vendorHome.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:the_builders/GUI/globalApi.dart' as global;
import 'package:image_picker/image_picker.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  var vid = Get.arguments;
  TextEditingController pname = TextEditingController();
  TextEditingController pCategory = TextEditingController();
  TextEditingController pUnit = TextEditingController();
  TextEditingController pUnitPrice = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  File? _imageFIle;

  void addProducts() async {
    var response = await http.post(Uri.parse(
      "${global.url}/addproduct?vid=${int.parse(vid[0])}&name=${pname.text}&ctg=${pCategory.text}&unit=${pUnit.text}&unitcost=${pUnitPrice.text.toString()}",
    ));
    print(response.body);
    print(response.statusCode);
    print("id=" + vid);
    if (response.statusCode == 200) {
      print(response.statusCode);
      Get.snackbar("Message", "Product  added");
    } else {
      Get.snackbar("Message", "Product not added");
      print('product not Added');
    }
    print(response.body.toString());
  }

//------------------------------------------------------

  Future<void> addProductss(File f) async {
    try {
      String uri = "${global.url}/addproducttt";
      var request = http.MultipartRequest(
        'Post',
        Uri.parse(uri),
      );
      request.headers.addAll({'Content-type': 'multipart/form-data'});
      //print(image.path);
      request.files.add(await http.MultipartFile.fromPath("", f.path));
      print(f.path);
      request.fields.addAll({
        "p_desc": pname.text.toString(),
        "p_ctg": pCategory.text.toString(),
        "p_unit": pUnit.text.toString(),
        "vid": vid[0].toString(),
        "unitcost": pUnitPrice.text.toString(),
      });
      var response = await request.send();
      print(response.stream);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.statusCode);
        Get.snackbar("Message", "Product  added");
        Get.to(VendorHome());
      } else {
        Get.snackbar("Message", "Product not added");
        Get.to(VendorHome());
      }
      //print(responses);

    } catch (Exception) {
      print("Failed");
    }
  }

  // var response = await http.post(Uri.parse(
  //   "${global.url}/addproduct?vid=${int.parse(vid[0])}&name=${pname.text}&ctg=${pCategory.text}&unit=${pUnit.text}&unitcost=${pUnitPrice.text.toString()}",
  // ));

  // print(response.body);
  // print(response.statusCode);
  // print("id=" + vid);
  // if (response.statusCode == 200) {
  //   print(response.statusCode);
  //   Get.snackbar("Message", "Product  added");
  //   Get.to(VendorHome());
  // } else {
  //   Get.snackbar("Message", "Product not added");
  //   print('product not Added');
  // }
  // print(response.body.toString());

  // Future<void> addProduct(String id, String pname, String pcategory,
  //     String punit, int unitcost) async {
  //   var response = await http.post(
  //       Uri.parse("http://192.168.43.117/apii/api/apii/addproduct"),
  //       headers: <String, String>{
  //         'Cntent-Type': 'application/json; charset=UTF-8'
  //       },
  //       body: jsonEncode(<String, dynamic>{
  //         'vid': id,
  //         'name': pname,
  //         'ctg': pcategory,
  //         'unit': punit,
  //         'unitcost': unitcost
  //       }));
  //   print(response.statusCode);
  //   print(response.body.toString());
//  }

  //Future<XFile?> imageFile;
  // pickImageFromGallery() {
  //   setState(() {
  //     imageFile = picker.pickImage(source: ImageSource.gallery);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
        title: Text(
          ' Add product',
          style: TextStyle(color: Colors.white, fontSize: 38.sp),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 110, 43),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180.h,
                  width: 180.w,
                  color: Colors.white,
                  child: _imageFIle == null
                      ? Center(child: Text('NO Image'))
                      : Image.file(
                          _imageFIle!,
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              Center(
                  child: ElevatedButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (builder) {
                        return AlertDialog(
                          title: Text("Choose your source"),
                          actions: [
                            TextButton(
                              onPressed: () async {
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.gallery);

                                if (image != null) {
                                  _imageFIle = File(image.path);
                                  //await addProductss(_imageFIle!);
                                }
                                Navigator.of(context).pop();
                              },
                              child: Text("Gallery"),
                            ),
                            TextButton(
                              onPressed: () async {
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.camera);
                                if (image != null) {
                                  _imageFIle = File(image.path);
                                }
                                Navigator.of(context).pop();
                              },
                              child: Text("Camera"),
                            )
                          ],
                        );
                      });
                  setState(() {});
                },
                child: Text(
                  'Pick Image',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400],
                ),
              )),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextField(
                    cursorColor: Colors.white,
                    controller: pname,
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Product Name",
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
                    controller: pUnit,
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Unit",
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
                    setState(() {
                      //addProducts();
                      //print(_imageFIle);
                      addProductss(_imageFIle!);
                    });
                  },
                  child: Text(
                    'ADD',
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

class ProductAdded extends StatefulWidget {
  const ProductAdded({Key? key}) : super(key: key);

  @override
  State<ProductAdded> createState() => _ProductAddedState();
}

class _ProductAddedState extends State<ProductAdded> {
  var id = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Product Added Successfully",
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
                height: 50.h,
                width: 120.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(VendorHome(), arguments: "${id}");
                  },
                  child: Text(
                    'Go Back',
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
