import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:geeve_app/ForgotPassword.dart';
import 'package:geeve_app/ResetPass.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () =>  FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Verification();
          },));
        },
          child: Container(
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
                          return ForgotPassword();
                        },));
                      }, icon: Icon(Icons.arrow_back)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 65,top: 60),
                      child: Text("Verification",style: TextStyle(color: Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 25),),
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                      // ),
                    ),

                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: Text("Type the Verification code \n           we've sent you",style: TextStyle(color: Colors.grey.shade700,fontSize: 15),),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                  // ),
                ),
                SizedBox(height: 30),
                OtpTextField(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  borderRadius: BorderRadius.circular(10),
                  numberOfFields: 4,
                  fieldWidth: 60,

                  cursorColor: Colors.orange,
                  enabledBorderColor: Colors.orange.shade700,
                  disabledBorderColor: Colors.blue,


                  // borderColor: Colors.orange,
                  // borderColor: Color(Co),
                  showFieldAsBox: true,


                 // end onSubmit
                ),
                InkWell(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return ResetPass();
                  },));
                },
                  child:  Container(
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
      ),
    );
  }
}
