import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'loginpages.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({Key? key}) : super(key: key);

  @override
  State<AccountCreated> createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Account Created Successfully",
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
                        MaterialPageRoute(builder: (context) => login()));
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

class RegisterAsVendor extends StatefulWidget {
  const RegisterAsVendor({Key? key}) : super(key: key);

  @override
  State<RegisterAsVendor> createState() => _RegisterAsVendorState();
}

class _RegisterAsVendorState extends State<RegisterAsVendor> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(255, 81, 0, 1),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Text(
                  "Create Your Seller Account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: name,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: address,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Address",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: phone,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone No",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: email,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: password,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: confirmpassword,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Confirm password",
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
                  height: 60.h,
                ),
                SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountCreated()));
                    },
                    child: Text(
                      'Sign Up',
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
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterAsCustomer()));
                        },
                        child: Text(
                          'Customer',
                          style: TextStyle(color: Colors.green[400]),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterAsDeliveryBoy()));
                        },
                        child: Text('Delivery Boy',
                            style: TextStyle(color: Colors.green[400]))),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

class RegisterAsCustomer extends StatefulWidget {
  const RegisterAsCustomer({Key? key}) : super(key: key);

  @override
  State<RegisterAsCustomer> createState() => _RegisterAsCustomerState();
}

class _RegisterAsCustomerState extends State<RegisterAsCustomer> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(255, 81, 0, 1),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Text(
                  "Create Your Account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: name,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: address,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Address",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: phone,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone No",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: email,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: password,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: confirmpassword,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Confirm password",
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
                  height: 60.h,
                ),
                SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountCreated()));
                    },
                    child: Text(
                      'Sign Up',
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
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterAsVendor()));
                        },
                        child: Text(
                          'Vendor',
                          style: TextStyle(color: Colors.green[400]),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterAsDeliveryBoy()));
                        },
                        child: Text('Delivery Boy',
                            style: TextStyle(color: Colors.green[400]))),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

class RegisterAsDeliveryBoy extends StatefulWidget {
  const RegisterAsDeliveryBoy({Key? key}) : super(key: key);

  @override
  State<RegisterAsDeliveryBoy> createState() => _RegisterAsDeliveryBoyState();
}

class _RegisterAsDeliveryBoyState extends State<RegisterAsDeliveryBoy> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(255, 81, 0, 1),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Text(
                  "Create Your Account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 55.w,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: name,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: address,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Address",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: phone,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone No",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: email,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: password,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 280.w,
                  child: TextField(
                      cursorColor: Colors.white,
                      controller: confirmpassword,
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Confirm password",
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
                  height: 60.h,
                ),
                SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountCreated()));
                    },
                    child: Text(
                      'Sign Up',
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
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterAsVendor()));
                        },
                        child: Text(
                          'Vendor',
                          style: TextStyle(color: Colors.green[400]),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create Acount As',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterAsCustomer()));
                        },
                        child: Text('Customer',
                            style: TextStyle(color: Colors.green[400]))),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
