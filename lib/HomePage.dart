import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:geeve_app/CreateAccount.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentposition=0;
  final totaldots=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame4.png"),alignment: Alignment.bottomRight)),
        // alignment: Alignment.bottomCenter,
        child: Column(
            children: [
          Container(
            margin: EdgeInsets.only(top: 64),
            alignment: Alignment.center,
            height: 66.96,
            width: 162,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("myassets/Frame.png"),),
            ),
          ),
          Container(
                  height: 300,
                  child: PageView(onPageChanged: (int index) {
                      setState(() {
                        currentposition=index;
                      });
                  },
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset("myassets/Frame1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Let’s get started",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "         Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Phasellus\nlaoreet vestibulum erat. Fusce laoreet ",
                              style: TextStyle(color: Colors.grey.shade700,fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset("myassets/Frame1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Let’s get started",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "         Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Phasellus\nlaoreet vestibulum erat. Fusce laoreet ",
                              style: TextStyle(color: Colors.grey.shade700,fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset("myassets/Frame1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Let’s get started",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Phasellus\nlaoreet vestibulum erat. Fusce laoreet ",
                              style: TextStyle(color: Colors.grey.shade700,fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),

              SizedBox(height: 10,),
            new DotsIndicator(
              dotsCount: totaldots,
              decorator: DotsDecorator(color: Colors.grey,activeColor: Colors.orange,),
              position: currentposition,


             ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateAccount();
                },));
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
                  child: Text("Create Account",style: TextStyle(color: Colors.white),),
                ),
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateAccount();
                },));
              },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  height: 55,
                  width: 315,
                  decoration: BoxDecoration(boxShadow: [BoxShadow(
                    offset: Offset(1,5),
                    color: Colors.grey,
                    blurRadius: 10.0,
                  )],borderRadius: BorderRadius.circular(50),color: Colors.white),
                  child: Text("Login",style: TextStyle(color: Colors.orange),),
                ),
              ),
            ]),
            ),
            );
  }
}
