import 'package:flutter/material.dart';
import 'package:geeve_app/Registration.dart';
import 'package:geeve_app/Verification.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  bool ispassword=false;
  bool ispass1=false;
  bool password=false;
  bool c_password=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ResetPass();
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
                          return Verification();
                        },));
                      }, icon: Icon(Icons.arrow_back)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 60,top: 60),
                      child: Text("Reset Password",style: TextStyle(color: Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 25),),
                    ),


                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: Text("Enter your new  \n     password",style: TextStyle(color: Colors.grey.shade700,fontSize: 17),),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                  height: 60,
                  width: 315,
                  child: TextField(
                    obscureText: !ispassword,
                    controller: t1,decoration: InputDecoration(prefixIcon: Icon(Icons.lock), suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      ispassword=!ispassword;
                    });
                  }, icon: Icon(ispassword?Icons.visibility:Icons.visibility_off_outlined),
                    color: Colors.black,
                  ),
                      contentPadding:
                      EdgeInsets.only(top: 20 ),border: InputBorder.none,hintText: "Password",errorText: (password)?"Password":null),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                  height: 60,
                  width: 315,
                  child: TextField(
                    obscureText: !ispass1,
                    controller: t2,decoration: InputDecoration(prefixIcon: Icon(Icons.lock), suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      ispass1=!ispass1;
                    });
                  }, icon: Icon(ispass1?Icons.visibility:Icons.visibility_off_outlined),
                    color: Colors.black,
                  ),
                      contentPadding:
                      EdgeInsets.only(top: 20),border: InputBorder.none,hintText: "Enter Confirm Passsword",errorText: (c_password)?"Enter Confirm Passsword":null),
                  ),
                ),
                InkWell(onTap: () {
                  if (t1.text == "") {
                    password = true;
                  }
                  else{
                    password = false;
                  }
                  if (t2.text == "") {
                    c_password = true;
                  } else{
                    c_password= false;
                  }
                  if(!password && !c_password)
                    {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return Registration();
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
                    child: Text("submit",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
