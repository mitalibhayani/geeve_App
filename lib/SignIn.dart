import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geeve_app/CreateAccount.dart';
import 'package:geeve_app/DonationPage.dart';
import 'package:geeve_app/user.dart';

class Password extends StatefulWidget {
  List<User>?userlist;
  User? userdetails;

  Password([this.userdetails,this.userlist]);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log("====>>>------${widget.userdetails}");
  }
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  bool error_email=false;
  bool password=false;
  bool ischeck=false;
  bool ispassword=false;
  bool isemailfound=false;
  bool ispasswordfound=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame4.png"),alignment: Alignment.bottomRight)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 74),
                alignment: Alignment.center,
                height: 66.96,
                width: 162,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("myassets/Frame.png"),),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                // margin: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                height: 60,
                width: 315,
                child: TextField(
                  // autofocus: true,

                  controller: t1,decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 20),
                    border: InputBorder.none,hintText: "Your Email Address",errorText: (error_email)?"Both Email is not Match":null),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                height: 60,
                width: 315,
                child: TextField(
                  autofocus: true,
                  obscureText: !ispassword,
                  controller: t2,decoration: InputDecoration(hintText: "Password",errorText: (password)?"Password":null,prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        ispassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          ispassword = !ispassword;
                        });
                      },
                    ),
                    contentPadding:
                    EdgeInsets.only(top: 20),
                    border: InputBorder.none),
                ),
              ),
              Row(
                children: [
                  Container(
                   height: 31.68,
                   width: 31.68,
                    margin: EdgeInsets.only(left: 20,top: 25),
                    decoration: BoxDecoration(image:
                    DecorationImage(image: AssetImage("myassets/Frame16.png"))),
                    child: Checkbox(fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey.shade200.withOpacity(.32);
                      }
                      return Colors.grey.shade200;
                    }),

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),value: ischeck, onChanged: (value) {
                      setState(() {
                        ischeck=value!;

                      });
                    },),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5,top: 25),
                    child: Text("Remember me",style: TextStyle(color: Colors.grey),),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                    // ),
                  ),

                ],
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
                if (t2.text == "") {
                  password = true;
                }
                else{
                  password = false;
                }
                if (!error_email && !password) {
                  // if (t1.text == widget.userdetails?.email) {
                  //   if (t2.text == widget.userdetails?.password) {
                  List<User>? list=widget.userlist;
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return DonationPage(list);
                      // }),
                      // );

                      for (User user in list??{}) {
                      if (user.email == t1.text) {
                      // Email found
                      isemailfound = true;

                      // Check if password matches
                      if (user.password == t2.text) {
                      // Password matches
                      ispasswordfound = true;
                      } else {
                      // Incorrect password
                      ispasswordfound = false;
                      }
                      // No need to continue looping if email is found
                      break;
                      }
                      }

                      if(isemailfound==true && ispasswordfound ==true)
                        {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DonationPage(widget.userlist);
                        }),
                        );
                        }
                      else if(isemailfound==false)
                        {
                          Fluttertoast.showToast(
                            msg: "encrrecot email",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.orange.shade700,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        }
                      else if(ispasswordfound==false)
                        {
                          Fluttertoast.showToast(
                            msg: "encrrecot password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.orange.shade700,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        }
                      else
                        {
                          Fluttertoast.showToast(
                                  msg: "encrrecot details",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.orange.shade700,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                        }


                // for(int i=0;i<list.length;i++)
                      // {
                      //   if(list.isEmpty==t1.text)
                      //   {
                      //     isemailfound=true;
                      //   }
                      //   if(list.isEmpty==t2.text)
                      //     {
                      //       ispasswordfound=false;
                      //     }
                      //   break;
                      //
                      //
                      //
                      // }
                      // if(isemailfound==true && ispasswordfound==true)
                      //   {
                      //
                      //   }
                      // else if(isemailfound==false)
                      //   {
                      //     Fluttertoast.showToast(
                      //       msg: "encrrecot email",
                      //       toastLength: Toast.LENGTH_SHORT,
                      //       gravity: ToastGravity.CENTER,
                      //       timeInSecForIosWeb: 1,
                      //       backgroundColor: Colors.orange.shade700,
                      //       textColor: Colors.white,
                      //       fontSize: 16.0,
                      //     );
                      //   }
                      // else if(ispasswordfound==false)
                      //   {
                      //     Fluttertoast.showToast(
                      //       msg: "incorrect password",
                      //       toastLength: Toast.LENGTH_SHORT,
                      //       gravity: ToastGravity.CENTER,
                      //       timeInSecForIosWeb: 1,
                      //       backgroundColor: Colors.orange.shade700,
                      //       textColor: Colors.white,
                      //       fontSize: 16.0,
                      //     );
                      //   }

                    // } else {
                    //   Fluttertoast.showToast(
                    //     msg: "Password is incorrect",
                    //     toastLength: Toast.LENGTH_SHORT,
                    //     gravity: ToastGravity.CENTER,
                    //     timeInSecForIosWeb: 1,
                    //     backgroundColor: Colors.orange.shade700,
                    //     textColor: Colors.white,
                    //     fontSize: 16.0,
                    //   );
                    // }
                  // } else {
                  //   Fluttertoast.showToast(
                  //     msg: "Email is incorrect. Please enter correct email.",
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     gravity: ToastGravity.CENTER,
                  //     timeInSecForIosWeb: 1,
                  //     backgroundColor: Colors.orange.shade700,
                  //     textColor: Colors.white,
                  //     fontSize: 16.0,
                  //   );
                  // }
                } else if (!error_email && password) {
                  Fluttertoast.showToast(
                    msg: "Please enter correct email.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.orange.shade700,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                } else if (error_email && !password) {
                  Fluttertoast.showToast(
                    msg: "Please enter password.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.orange.shade700,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                } else {
                  Fluttertoast.showToast(
                    msg: "Please enter both email and password.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.orange.shade700,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
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
                  child: Text("Sign in",style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18,right: 45),
                alignment: Alignment.topRight,
                child: Text("Forgot Password?",style: TextStyle(color: Colors.orange),),
                // height: 15,
                // width: 98,
                // decoration: BoxDecoration(
                //   image: DecorationImage(image: AssetImage("myassets/text7.png"),),
                // ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50),
                child: Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                // decoration: BoxDecoration(
                //   image: DecorationImage(image: AssetImage("myassets/text6.png"),),
                // ),
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateAccount();
                },));
              },
                child: Container(
                  margin: EdgeInsets.only(top: 10),

                  child: Text("Sign up",style: TextStyle(color: Colors.orange),),
                  // height: 15,
                  // width: 41,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage("myassets/text9.png"),),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
