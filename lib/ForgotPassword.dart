import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:geeve_app/SignIn.dart';
import 'package:geeve_app/Verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController t1=TextEditingController();
  bool error_email=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () =>  FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame4.png"),alignment: Alignment.bottomRight)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Password();
                            },));
                    }, icon: Icon(Icons.arrow_back)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 30,top: 60),
                    child: Text("Forgot Password",style: TextStyle(color: Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 25),),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                    // ),
                  ),

                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: Text("Enter your email id to reset your\n                 password",style: TextStyle(color: Colors.grey.shade700,fontSize: 15),),
                // decoration: BoxDecoration(
                //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                // ),
              ),
              SizedBox(height: 30,),
              Container(
                // margin: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                height: 60,
                width: 315,
                child: TextField(
                  controller: t1,decoration: InputDecoration(hintText: "Your Email Address",errorText: (error_email)?"Your Email Address":null,prefixIcon: Icon(Icons.email),contentPadding: EdgeInsets.only(top: 20),border: InputBorder.none),
                ),
              ),
              InkWell(onTap: () {
                String email=t1.text;
                String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                RegExp regExp = new RegExp(patttern);
                if(email.trim()==""|| !EmailValidator.validate(email.trim()))
                {
                  error_email=true;
                }
                else
                {
                  error_email=false;
                }
                if(!error_email)
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Verification();
                    },));
                  }
                setState(() {

                });

              },
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  height: 55,
                  width: 315,
                  decoration: BoxDecoration(boxShadow: [BoxShadow(
                    offset: Offset(1,5),

                    color: Colors.grey,
                    blurRadius: 10.0,
                  )],borderRadius: BorderRadius.circular(50),color: Colors.orange.shade700),
                  child: Text("Continue",style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
