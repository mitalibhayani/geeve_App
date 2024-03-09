import 'package:flutter/material.dart';
import 'package:geeve_app/DonationPage.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool iscliced=false;
  bool iscliced1=false;

  void Doner() {
    setState(() {
      iscliced = true;
      iscliced1 = false;
    });
  }
  void Donne() {
    setState(() {
      iscliced1 = true;
      iscliced = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        // width: 500,
          backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)),),
          child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[

                SizedBox(
                  height: 250,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                              height:92,
                              width: 92,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(image: DecorationImage(image:
                              AssetImage("myassets/Elips.png"),alignment: Alignment.center,)),
                              child: Container(
                                height: 54,
                                width: 54,
                                alignment: Alignment.center,
                                child: Center(child: Image(image: AssetImage("myassets/Frame9.png"),)),
                              )
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(

                                  height: 22,
                                  width: 22,
                                  alignment: Alignment.center,
                                  //  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(image: DecorationImage(image:
                                  AssetImage("myassets/Ellipse8.png"),)),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    alignment: Alignment.center,
                                    child:
                                    Center(child: Image(image: AssetImage("myassets/ic_round-edit.png"),)),
                                  )

                              ),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 48,
                                    width: 200,
                                    child: Text("Jesus House Toronto",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 145,
                            alignment: Alignment.center,
                            child: Text("asma@jesushouse.com",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                          )

                        ],
                      )

                  ),
                ),

                InkWell(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return DonationPage();
                  },));
                },
                  child: ListTile(
                    shape: Border(top: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black),),
                    title: Text("Dashbord",style: TextStyle(color: Colors.orange.shade700,fontSize: 16),),
                    leading: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/mdi-light_view-dashboard.png"))),
                    ),
                  ),
                ),
                ListTile(
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  title:
                  Text("Donation Pages",style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  leading: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame15.png"))),
                  ),
                ),
                ListTile(
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  title:
                  Text("Text 2 Give",style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  leading: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame 14.png"))),
                  ),

                ),
                ListTile(
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  title:
                  Text("Transactions",style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  leading: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame13.png"))),
                  ),

                ),
                ListTile(
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  title:  Text('Analytics',style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  leading: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame12.png"))),
                  ),

                ),
                ListTile(
                  shape: Border(bottom: BorderSide(color: Colors.black)),
                  title:Text('Settings',style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  leading: Container(
                    height: 24,
                    width: 24,
                    // margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame11.png"))),
                  ),

                ),
                InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Container(
                    // margin: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.all(40),
                    alignment: Alignment.center,
                    height: 55,
                    width: 30,
                    child: Text("Logout",style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(boxShadow: [BoxShadow(
                      offset: Offset(1,5),

                      color: Colors.grey,
                      blurRadius: 10.0,
                    )],borderRadius: BorderRadius.circular(50),color: Colors.orange.shade700),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(image: AssetImage("myassets/Frame10.png"))
                    // ),
                  ),
                )
              ],
              ),
          ),
        appBar: AppBar(title: Text("Registration"),  backgroundColor: Colors.orange.shade700,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          bottom: PreferredSize(child: Text(""), preferredSize: Size.square(10)),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame4.png"),alignment: Alignment.bottomRight)),
        child: Column(
          children: [
            // SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(top: 90),
              alignment: Alignment.center,
              child: Text("i am a",style: TextStyle(color: Colors.grey.shade700,fontSize: 20),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: Doner,
                  child: Container(
                    margin: EdgeInsets.only(top: 30,left: 30),
                    height: 125,
                    width: 125,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: (iscliced)?Border.all(width: 5,color: Colors.orange.shade700):Border.all(width: 5,color: Colors.white),
                        // border: Border.all(style: !iscliced ? BorderStyle.solid :BorderStyle.none,color: Colors.orange.shade700,width: 5),
                        color: Colors.white,borderRadius: BorderRadius.circular(100),
                        boxShadow: [BoxShadow(
                      offset: Offset(1,5),
                      color: Colors.grey,
                      blurRadius: 10.0,),]),
                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Ellipse 6.png"))),
                    child: Text("Donar",style: TextStyle(color: Colors.orange.shade700,fontSize: 18),),
                  ),
                ),


                InkWell(onTap: Donne,
                  child: Container(
                    margin: EdgeInsets.only(top: 30,right: 20),
                    height: 125,
                    width: 125,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: (iscliced1)?Border.all(width: 5,color: Colors.orange.shade700):Border.all(width: 5,color: Colors.white),color: Colors.white,borderRadius: BorderRadius.circular(100),boxShadow: [BoxShadow(
                      offset: Offset(1,5),
                      color: Colors.grey,
                      blurRadius: 10.0,),]),
                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Ellipse 6.png"))),
                    child: Text("Donee",style: TextStyle(color: Colors.orange.shade700,fontSize: 18),),
                  ),
                ),
    //   decoration: BoxDecoration(
    //       border: (isDonorTapped)
    //           ? Border.all(width: 5, color: Colors.orange)
    //           : Border.all(width: 5, color: Colors.white),
    //       shape: BoxShape.circle,
    //       color: Colors.white,
    //       boxShadow: [
    //       BoxShadow(
    //       offset: Offset(1, 3),
    //   color: Colors.grey,
    //   blurRadius: 10.0,
    // ),
    // ]),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(35),
                            bottomLeft: Radius.circular(35) ,
                            topRight: Radius.circular(35),
                            bottomRight: Radius.circular(35)),),

                      title: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: 180.72,
                              width: 249.84,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/donet.png"))),
                            ),
                            Container(
                              child: Text("Congratualation",style: TextStyle(color: Colors.orange.shade700,fontSize: 17),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Now you are Registread",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Get ready with geeve",style: TextStyle(color: Colors.grey.shade700,fontSize: 15),),
                            ),
                            InkWell(onTap: () {
                              Navigator.pop(context);
                            },
                              child: Container(
                                margin: EdgeInsets.only(top: 30),
                                alignment: Alignment.center,
                                height: 55,
                                width: 281,
                                decoration: BoxDecoration(boxShadow: [BoxShadow(
                                  offset: Offset(1,5),

                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                )],borderRadius: BorderRadius.circular(50),color: Colors.orange.shade700),
                                child: Text("Sign up",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },);
                },
                  child: Container(
                    margin: EdgeInsets.only(top: 20,right: 9),
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.orange.shade700,borderRadius: BorderRadius.circular(100),boxShadow: [BoxShadow(
                        offset: Offset(1,5),
                      color: Colors.grey,
                      blurRadius: 10.0,),]),
                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Ellipse 6.png"))),
                    child: Text("Go",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,right: 5),
                  height: 48.5,
                  width: 11.5,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Vector 1.png"))),
                  // child: Text("Donee",style: TextStyle(color: Colors.orange,fontSize: 18),),
                ),
              ],
            ),
          ],
        ),
      ),



    );
  }
}
