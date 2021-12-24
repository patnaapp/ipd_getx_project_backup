import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/login1_controller.dart';

class Login1View extends GetView<Login1Controller> {

  TextEditingController phoneController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        body: SafeArea(

          top: false,
          bottom: false,
          child: Form(
            key: _formKey,
            child: Container(
              height: double.infinity,
              width: double.infinity,

              decoration: BoxDecoration(

              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 80.0,bottom: 40.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/login_img.png", width: 300.0, height: 300.0, fit: BoxFit.cover),

                    Container(
                        margin: const EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: Column(

                          children: [
                            Align(alignment: Alignment.centerLeft,child: Text('Login', style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold))),
                            SizedBox(height: 10),
                            Align(alignment: Alignment.centerLeft,child: Text('Please Login To proceed', style: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.normal), textAlign: TextAlign.left)),

                          ],
                        )),

                    new Container(
                        height: 55,
                        margin: const EdgeInsets.only(left: 30,right: 30,top: 15),
                        child:   TextFormField(controller: phoneController,
                          keyboardType: TextInputType.number,autofocus: true,

                          style: style,
                          decoration: InputDecoration(fillColor:kPrimaryColour, filled: true,

                              hintText: "User ID",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none,)),
                          validator: (value) {
                            if (value == null || value.length!=10) {
                              return 'required';
                            }
                            return null;
                          },

                        )

                    ),
                    SizedBox(height: 10),
                    new Container(
                        height: 55,
                        margin: const EdgeInsets.only(top: 5.0,left: 30,right: 30),
                        child:   TextFormField(controller: passwordController,
                          keyboardType: TextInputType.text,

                          style: style,
                          decoration: InputDecoration(fillColor: kPrimaryColour, filled: true,

                              hintText: "Password",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none,)),
                          validator: (value) {
                            if (value == null || value.length==0) {
                              return 'required';
                            }
                            return null;
                          },

                        )

                    ),
                    new Container(
                      width: 300,
                      height: 45,
                      margin: const EdgeInsets.only(top: 20.0,left: 30,right: 30),


                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color:kButtonPrimaryColour, spreadRadius: 3),
                        ],),

                      child: FlatButton(
                        shape: Border.all(color: kButtonPrimaryColour,width: 15,),

                        child: Text('LOGIN', style: TextStyle(fontSize: 20.0,color: Colors.white),),
                        color: kButtonPrimaryColour,

                        onPressed: () {
                         // Navigator.of(context).push(MaterialPageRoute(builder: (context) => QrCodeScanning_Screen()));
                        },
                      ),),
                    new Padding(padding: new EdgeInsets.only(top: 20.0 ),),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
