// class User{
//       late final String Firstname;
//       final String Lastname;
//       final String Email;
//       final String Phone;
//       final String Password;
//       final String Conformpassword;
//
//     User({required this.Firstname, required this.Lastname, required this.Email, required this.Phone, required this.Password, required this.Conformpassword});

    // List<User>ArrModel=[
    //       User(Firstname: ,Lastname: 'Bhayani', Email: 'Mitali@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    //       User(Firstname:'eshva',Lastname: 'sorthiya',Email: 'eshva@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    //       User(Firstname:'vruti',Lastname: 'goti',    Email: 'Mitali@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    //       User(Firstname:'isha',Lastname: 'shingala', Email: 'Mitali@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    //       User(Firstname:'Mansi',Lastname: 'sorthiya',Email: 'Mitali@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    //       User(Firstname:'jinal',Lastname: 'nasit',   Email: 'Mitali@gmail.com',Phone: '1234567890', Password: '123', Conformpassword: '123'),
    // ];

//`     User objUser = new User(Firstname: Firstname, Lastname: Lastname, Email: Email, Phone: Phone, Password: Password, Conformpassword: Conformpassword)
//
//     ArrayModel.append();
// }
class User {
  String? firstname;
  String? lastname;
  String? email;
  String? phone;
  String? password;
  String? confirmpassword;
  bool?  isLoggedIn;

  User({this.firstname,
      this.lastname,
      this.email,
      this.phone,
      this.password,
      this.confirmpassword,
      this.isLoggedIn});



   // User(
   //    {this.firstname,
   //      this.lastname,
   //      this.email,
   //      this.phone,
   //      this.password,
   //      this.confirmpassword
   //      // this.isLoggedIn;
   //
   //
   //    });



// class AuthModel {
  // bool isLoggedIn;
  //
  // AuthModel({required this.isLoggedIn});
  // }

  // User.fromJson(Map  json) {
  //   firstname = json['Firstname'];
  //   lastname = json['Lastname'];
  //   email = json['Email'];
  //   phone = json['Phone'];
  //   password = json['Password'];
  //   confirmpassword = json['confirmpassword'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['Firstname'] = this.firstname;
  //   data['Lastname'] = this.lastname;
  //   data['Email'] =   this.email;
  //   data['Phone'] =   this.phone;
  //   data['Password'] = this.password;
  //   data['confirmpassword'] = this.confirmpassword;
  //   return data;
  // }
}