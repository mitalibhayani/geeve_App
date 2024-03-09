import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geeve_app/CreateAccount.dart';
import 'package:geeve_app/HomePage.dart';
import 'package:geeve_app/SignIn.dart';
import 'package:geeve_app/user.dart';

class DonationPage extends StatefulWidget {
  // User? userdetails;
   List<User>? userlist;

  DonationPage([this.userlist]);

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  List<User>? userlist ;




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        // width: 500,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        ),
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
                          height: 92,
                          width: 92,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("myassets/Elips.png"),
                            alignment: Alignment.center,
                          )),
                          child: Container(
                            height: 54,
                            width: 54,
                            alignment: Alignment.center,
                            child: Center(
                                child: Image(
                              image: AssetImage("myassets/Frame9.png"),
                            )),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              //  margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("myassets/Ellipse8.png"),
                              )),
                              child: Container(
                                height: 12,
                                width: 12,
                                alignment: Alignment.center,
                                child: Center(
                                    child: Image(
                                  image:
                                      AssetImage("myassets/ic_round-edit.png"),
                                )),
                              )),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 48,
                                width: 200,
                                child: Text(
                                  "Jesus House Toronto",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 145,
                        alignment: Alignment.center,
                        child: Text(
                          "asma@jesushouse.com",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade700),
                        ),
                      )
                    ],
                  )),
            ),
            InkWell(
              onTap: () {

                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return DonationPage();
                  },
                ));
              },
              child: ListTile(
                shape: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                ),
                title: Text(
                  "Dashbord",
                  style: TextStyle(color: Colors.orange.shade700, fontSize: 16),
                ),
                leading: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "myassets/mdi-light_view-dashboard.png"))),
                ),
              ),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.black)),
              title: Text(
                "Donation Pages",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              leading: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame15.png"))),
              ),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.black)),
              title: Text(
                "Text 2 Give",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              leading: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame 14.png"))),
              ),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.black)),
              title: Text(
                "Transactions",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              leading: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame13.png"))),
              ),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.black)),
              title: Text(
                'Analytics',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              leading: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame12.png"))),
              ),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.black)),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              leading: Container(
                height: 24,
                width: 24,
                // margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame11.png"))),
              ),
            ),
            InkWell(onTap: () {
              List<User> list = widget.userlist!;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CreateAccount(list);
              },));

            },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                // margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("myassets/Frame10.png"))),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Donation Page"),
        backgroundColor: Colors.orange.shade700,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        bottom: PreferredSize(child: Text(""), preferredSize: Size.square(10)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: ListView.builder(
          itemCount: widget.userlist!.length,
          itemBuilder: (context, index) {
            User user = widget.userlist![index];
            return Row(
              children: [
                Expanded(flex: 10,
                  child: Container(decoration: BoxDecoration( boxShadow: [
                      BoxShadow(
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(.3),
                      blurRadius: 10.0,
                    ),
                      ],),
                    child: Card(
                      child: ListTile(shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),),
                        title: Text("Name:-${widget.userlist![index].firstname}"),
                        // title: Text("Name:-${user.firstname ?? 'Unknown'}"),
                        subtitle: Text("Email:-${widget.userlist![index].email}"),

                      ),
                    ),
                  ),
                ),
                  Expanded(
                    child: Container(
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Group.png"))),
                          ),
                  ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 7),
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/Frame17.png"))),
                          ),
                        ),
              ],
            );
          },
        ),
      ),
    );
  }
}
