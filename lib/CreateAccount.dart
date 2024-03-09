import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geeve_app/DonationPage.dart';
import 'package:geeve_app/SignIn.dart';
import 'package:geeve_app/user.dart';

class CreateAccount extends StatefulWidget {
  List<User>?userlist;
   CreateAccount([this.userlist]);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();
  TextEditingController t5=TextEditingController();
  TextEditingController t6=TextEditingController();


  bool ischeck=false;
  bool f_name=false;
  bool l_name =false;
  bool error_email=false;
  bool error_phone=false;
  bool password=false;
  bool c_password=false;
  final bool autofocus=false;
 static List<User> userlist=[];


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              // height: double.infinity,
              // width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame4.png"),alignment: Alignment.bottomRight)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.center,
                      height: 66.96,
                      width: 162,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("myassets/Frame.png"),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,

                      child: TextFormField(
                        // scrollController: FixedExtentScrollController(initialItem: 1),
                        controller: t1,

                        decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "First name",errorText: (f_name)?"First Name":null),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 15, left: 3),
                      // alignment: Alignment.,
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,
                      child: TextField(
                        controller: t2,decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "Last name",errorText: (l_name)?"Last name":null),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 3),
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,
                      child: TextField(
                        controller: t3,decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "Email",errorText: (error_email)?"Email":null),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 3),
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,
                      child: TextField(
                        controller: t4,decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "Phone",errorText: (error_phone)?"Phone":null),
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 3),
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,
                      child: TextField(
                        controller: t5,decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "Password",errorText: (password)?"Password":null),
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 3),
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      height: 55,
                      width: 315,
                      child: TextField(
                        controller: t6,decoration: InputDecoration(contentPadding: EdgeInsets.all(10.0),border: InputBorder.none,hintText: "Enter Confirm Password",errorText: (c_password)?"both password is not match":null),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 10),
                          decoration: BoxDecoration(image:
                          DecorationImage(image: AssetImage("myassets/Frame16.png"))),
                          child: Transform.scale(scale: 1.5,
                            child: Checkbox(  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
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
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5,top: 10),
                          alignment: Alignment.center,

                        child: Text("I agree to the geeve ",style: TextStyle(color: Colors.grey),),
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(image: AssetImage("myassets/text3.png"),),
                        // ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3,top: 10),
                          alignment: Alignment.center,

                          child: Text("Terms and Condition ",style: TextStyle(color: Colors.orange.shade700),),
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(image: AssetImage("myassets/text3.png"),),
                          // ),
                        ),

                      ],
                    ),
                    InkWell(onTap: () {

                      String email=t3.text;
                      bool emailExists = userlist.any((user) => user.email == email);
                      String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                      RegExp regExp = new RegExp(patttern);
                      if (t1.text == "") {
                        f_name = true;
                      }
                      else{
                        f_name = false;
                      }
                      if (t2.text == "") {
                        l_name = true;
                      }
                      else{
                        l_name = false;
                      }
                      if(email.trim()==""|| !EmailValidator.validate(email.trim()))
                      {
                        error_email=true;
                      }
                      else
                      {
                        error_email=false;
                      }
                      if (t4.text == "" || !regExp.hasMatch(t4.text)) {
                        error_phone = true;
                      } else {
                        error_phone = false;
                      }
                      if (t5.text == "") {
                        password = true;
                      }
                      else{
                        password = false;
                      }
                      if (t6.text == "") {
                        c_password = true;
                      }
                      else
                      {
                        c_password= false;
                      }
                      if(t5.text!=t6.text)
                        {
                          c_password=true;
                        }
                      else
                        {
                          c_password=false;

                        }
                      if (!f_name &&
                          !l_name &&
                          !error_email &&
                          !error_phone &&
                          !password &&
                          !c_password && !emailExists
                          ){
                        User userdetails=User(
                          firstname: '${t1.text}',
                          lastname: '${t2.text}',
                          email: '${t3.text}',
                          phone: '${t4.text}',
                          password: '${t5.text}',
                          confirmpassword: '${t6.text}',
                        );
                        userlist.add(userdetails!);


                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Password(userdetails,userlist);
                        },));
                      }
                      else
                        {
                          Fluttertoast.showToast(
                              msg: "Email is not exist",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.orange.shade700,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }
                      setState(() {

                      });
                    },
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        alignment: Alignment.center,
                        height: 55,
                        width: 315,
                        decoration: BoxDecoration(boxShadow: [BoxShadow(
                          offset: Offset(1,5),

                          color: Colors.grey,
                          blurRadius: 10.0,
                        )],borderRadius: BorderRadius.circular(50),color: Colors.orange.shade700),
                        child: Text("Sign up",style: TextStyle(color: Colors.white),),
                       ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 19 ),
                      alignment: Alignment.center,
                      // height: 15,
                      // width: 139,
                      child: Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: AssetImage("myassets/text5.png"),),
                      // ),

                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Password();
                      },));
                    },
                      child: Container(
                        margin: EdgeInsets.only(top: 5 ),
                        alignment: Alignment.center,
                        child: Text("Sign in",style: TextStyle(color: Colors.orange),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
