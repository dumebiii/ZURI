import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NAD extends StatefulWidget {
  @override
  _NADState createState() => _NADState();
}

class _NADState extends State<NAD> {
  @override
  final enteredcontroller = new TextEditingController();
  String entertext;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 0.h),
        child: Image.asset("images/HNG.png"),
      ),
      SizedBox(
        height: 5.h,
      ),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 0.h, right: 10.w, bottom: ScreenUtil().setHeight(0)),
            child: RichText(
                text: TextSpan(
                    text: "Visit ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'https://hng.tech/', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal)),
                      TextSpan(text: ' to join the ongoing ', style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: '  HNG Internship',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25.sp,
                        ),
                      )
                    ]),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text("YOU JUST TYPED :   $entertext"),
          Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.h, right: 15.h, top: 19.h),
              child: TextField(
                controller: enteredcontroller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'TYPE and press the button below...',
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      borderSide: const BorderSide(color: Colors.blue, style: BorderStyle.solid)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 0.h,
                  left: ScreenUtil().setWidth(80),
                  right: ScreenUtil().setWidth(80),
                  bottom: ScreenUtil().setHeight(0),
                ),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 9.0),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      entertext = enteredcontroller.text;
                    });
                  },
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Text(" now click me ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.sp, letterSpacing: 6)),
                )),
          ),
        ],
      )
    ]));
  }
}
