

import 'package:assignment/main.dart';
import 'package:assignment/personalInfromation.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordPage(),
//      home:  Container(
//        color: Colors.white,
//        child: CustomPaint(
//          painter: CurvePainter(),
//        ),
//      ),
    );
  }
}

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final passwordController = TextEditingController();
  bool isShowPassword = true;
  var nineChar = false,
      oneSpecialChar=false,
       lowercase = false,
      uppercase = false,
      numeric=false ,
      isStrong = false,
     isVisible = false;
   String passwordState = "Very Weak";
   Color passwordStateColor = Colors.orange;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController.addListener(() {
      setState(() {
        nineChar = passwordController.text.length > 9;
        lowercase=passwordController.text.isNotEmpty &&
            passwordController.text.contains(RegExp(r'[a-z ]'), 0);

        uppercase=passwordController.text.isNotEmpty &&
            passwordController.text.contains(RegExp(r'[A-Z ]'), 0);

        numeric=passwordController.text.isNotEmpty &&
            passwordController.text.contains(RegExp(r'[0-9 ]'), 0);

        if(nineChar == true && lowercase == true && uppercase == true && numeric == true){
          setState(() {
            isVisible = true;
            isStrong = true;
            passwordStateColor = Color.fromRGBO(129, 162, 98, 1.0);
            passwordState = "Strong";
          });

        }else{
          setState(() {
            isVisible = true;
            isStrong = false;
            passwordState = "Very Weak";
            passwordStateColor = Colors.orange;
          });

        }

      });
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomPadding: false,
     backgroundColor: Color.fromRGBO(81, 134, 222, 1.0),
     body: Container(
         margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
         child: Column(
           children: <Widget>[
             Container(
               height: MediaQuery.of(context).size.height * 0.04,
               //color: Color.fromRGBO(81, 134, 222, 1.0),
               //color: Colors.red,
               child: Container(
                 child:  Row(
                   children: <Widget>[
                     FlatButton.icon(
                   icon: Icon(Icons.arrow_back, color: Colors.white,), //`Icon` to display
                   label: Text('Create Accounts', style: TextStyle(fontSize: 15,color: Colors.white),), //`Text` to display
                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => MyApp()),
                     );
                   },
                 ),
                   ],
                 ),
               ),
             ),
             Container(
               height: MediaQuery.of(context).size.height * 0.2,
               //color: Color.fromRGBO(81, 134, 222, 1.0),
               color: Colors.transparent,
               child: Container(
                 margin: EdgeInsets.all(20),
                 child: Row(
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.15,
                       //color: Colors.red,
                       decoration: new BoxDecoration(
                           color: Color.fromRGBO(129, 162, 98, 1.0),
                           shape: BoxShape.circle,
                           border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                       ),
                       child: Center(
                         child: Text("1",
                           style: TextStyle(fontSize: 17),
                         ),
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.07,
                       height: 2,
                       color: Colors.black,
                       child: Divider(),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.15,
                       //color: Colors.red,
                       decoration: new BoxDecoration(
                           color: Color.fromRGBO(248, 249, 250, 1.0),
                           shape: BoxShape.circle,
                           border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                       ),
                       child: Center(child: Text("2",
                         style: TextStyle(fontSize: 17),

                       )),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.07,
                       height: 2,
                       color: Colors.black,
                       child: Divider(),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.15,
                       //color: Colors.red,
                       decoration: new BoxDecoration(
                           color: Color.fromRGBO(248, 249, 250, 1.0),
                           shape: BoxShape.circle,
                           border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                       ),
                       child: Center(child: Text("3",
                         style: TextStyle(fontSize: 17),
                       )
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.07,
                       height: 2,
                       color: Colors.black,
                       child: Divider(),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
                       width: MediaQuery.of(context).size.width * 0.15,
                       //color: Colors.red,
                       decoration: new BoxDecoration(
                           color: Color.fromRGBO(248, 249, 250, 1.0),
                           shape: BoxShape.circle,
                           border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                       ),
                       child: Center(child: Text("4",
                         style: TextStyle(fontSize: 17),
                       )
                       ),
                     )
                   ],

                 ),
               ),
             ),
             Expanded(
               child: Container(
                 child: Column(
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(left: 20,right: 20),
                       height: MediaQuery.of(context).size.height * 0.1,

                       child: Column(
                         children: <Widget>[
                           Container(
                             height: MediaQuery.of(context).size.height * 0.03,
                             width : MediaQuery.of(context).size.width,
                             child: Text("Create Password",
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.white
                               ),
                             ),
                           ),
                           SizedBox(
                             height: MediaQuery.of(context).size.height * 0.005,
                           ),
                           Container(
                             height: MediaQuery.of(context).size.height * 0.04,
                             width : MediaQuery.of(context).size.width,
                             child: Text("Password will be used to login to account",
                               style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.white70
                               ),
                             ),
                           )


                         ],
                       ),
                     ),
                     Expanded(
                       child: SingleChildScrollView(

                         child: Container(
                           child: Column(
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,left: 20,right: 20) ,
                                 //color: Colors.red,
//                                 height:  MediaQuery.of(context).size.height * 0.08,
                                 child: Column(
                                   children: <Widget>[
                                     Form(
                                       //key: _formKey,
                                       // autovalidate: _autoValidate,
                                       child: TextFormField(
                                         keyboardType: TextInputType.emailAddress,
                                         controller: passwordController,
                                         obscureText: isShowPassword,
                                         decoration: InputDecoration(
                                           border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(10),

                                           ),
                                           hintText: 'Create Password',
                                           fillColor: Color.fromRGBO(248, 249, 250, 1.0),
                                           focusedBorder: InputBorder.none,
                                           filled: true,
                                         suffixIcon: IconButton(
                                             icon: Icon(Icons.remove_red_eye,),
                                             onPressed: () {
                                               if(isShowPassword == false){
                                                 setState(() {
                                                   isShowPassword = true;
                                                 });
                                               }
                                               else{
                                                 setState(() {
                                                   isShowPassword = false;
                                                 });
                                               }
                                             }

                                         ),
                                         ),
                                         //validator: validateEmail,
//                           onSaved: (String val) {
//                             _email = val;
//                           },


                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                                       //color: Colors.red,
                                       child: Column(
                                         children: <Widget>[
                                           Container(
                                             child: Row(
                                               children: <Widget>[
                                                 Container(

                                                   child: Text("Complexcity:",
                                                     style: TextStyle(
                                                         color: Colors.white70,
                                                         fontSize: 17.0
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Container(
                                                   child: isVisible ? Text(passwordState,
                                                     style: TextStyle(
                                                         color: passwordStateColor,
                                                         fontSize: 17.0
                                                     ),
                                                   ) :
                                                   Text("",
                                                     style: TextStyle(
                                                         color: passwordStateColor,
                                                         fontSize: 17.0
                                                     ),
                                                   )
                                                   ,
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Container(
                                             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05,left: 20,right: 20),
                                             child: Row(
                                               children: <Widget>[
                                                 Container(

                                                   child: Column(
                                                     children: <Widget>[
                                                       lowercase ? Container(
//                                                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
//                                                   width: MediaQuery.of(context).size.width * 0.15,
                                                         //color: Colors.red,
                                                         decoration: new BoxDecoration(
                                                           color: Color.fromRGBO(129, 162, 98, 1.0),
                                                           shape: BoxShape.circle,
                                                           // border: Border.
                                                         ),
                                                         child: Center(
                                                             child: Icon(Icons.check,color: Colors.white,)
                                                         ),
                                                       )
                                                           : Text("a",
                                                         style: TextStyle(
                                                             color: Colors.white70,
                                                             fontSize: 26.0,
                                                             fontWeight: FontWeight.bold
                                                         ),
                                                       )
                                                       ,
                                                       SizedBox(
                                                         height: 10,
                                                       ),
                                                       Text("Lowercase",
                                                         style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: 12.0
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Container(

                                                   child: Column(
                                                     children: <Widget>[
                                                       uppercase ?  Container(
//                                                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
//                                                   width: MediaQuery.of(context).size.width * 0.15,
                                                         //color: Colors.red,
                                                         decoration: new BoxDecoration(
                                                           color: Color.fromRGBO(129, 162, 98, 1.0),
                                                           shape: BoxShape.circle,
                                                           // border: Border.all(width: 1,color: Colors.black,style: BorderStyle.solid)
                                                         ),
                                                         child: Center(
                                                             child: Icon(Icons.check,color: Colors.white,)
                                                         ),
                                                       )
                                                           :Text("A",
                                                         style: TextStyle(
                                                             color: Colors.white70,
                                                             fontSize: 26.0,
                                                             fontWeight: FontWeight.bold
                                                         ),
                                                       ),
                                                       SizedBox(
                                                         height: 10,
                                                       ),
                                                       Text("Uppercase",
                                                         style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: 12.0
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Container(

                                                   child: Column(
                                                     children: <Widget>[
                                                       numeric ? Container(
//                                                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
//                                                   width: MediaQuery.of(context).size.width * 0.15,
                                                         //color: Colors.red,
                                                         decoration: new BoxDecoration(
                                                           color: Color.fromRGBO(129, 162, 98, 1.0),
                                                           shape: BoxShape.circle,
                                                           // border: Border.all(width: 1,color: Colors.black,style: BorderStyle.solid)
                                                         ),
                                                         child: Center(
                                                             child: Icon(Icons.check,color: Colors.white,)
                                                         ),
                                                       )
                                                           : Text("123",
                                                         style: TextStyle(
                                                             color: Colors.white70,
                                                             fontSize: 26.0,
                                                             fontWeight: FontWeight.bold
                                                         ),
                                                       ),
                                                       SizedBox(
                                                         height: 10,
                                                       ),
                                                       Text("Numeric",
                                                         style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: 12.0
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Container(

                                                   child: Column(
                                                     children: <Widget>[
                                                       nineChar ?  Container(
//                                                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0001),
//                                                   width: MediaQuery.of(context).size.width * 0.15,
                                                         //color: Colors.red,
                                                         decoration: new BoxDecoration(
                                                           color: Color.fromRGBO(129, 162, 98, 1.0),
                                                           shape: BoxShape.circle,
                                                           //  border: Border.all(width: 1,color: Colors.black,style: BorderStyle.solid)
                                                         ),
                                                         child: Center(
                                                             child: Icon(Icons.check,color: Colors.white,)
                                                         ),
                                                       )
                                                           :Text("9+",
                                                         style: TextStyle(
                                                             color: Colors.white70,
                                                             fontSize: 26.0,
                                                             fontWeight: FontWeight.bold

                                                         ),
                                                       ),
                                                       SizedBox(
                                                         height: 10,
                                                       ),
                                                       Text("Characters",
                                                         style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: 12.0
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           )

                                         ],
                                       ),
                                     ),
                                   ],
                                 ),

                               ),
                       Container(

//                                 height: MediaQuery.of(context).size.height * 0.08,
                               height: 48,
                                 width:MediaQuery.of(context).size.width,
                                 margin: EdgeInsets.only(left: 20,right: 20,top: MediaQuery.of(context).size.height * 0.12),
                                 child: RaisedButton(
                                   color: Color.fromRGBO(111, 163, 231, 1.0),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: new BorderRadius.circular(8.0),
                                   ),
                                   child: Text("Next",
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 20
                                     ),
                                   ),
                                   onPressed: (){

                                     if(isStrong == true){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => PersonalInformation()),
                                       );

                                     }else {
                                       _showAlert();
                                     }

                                   },
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     SafeArea(
                       child: SizedBox(
                         height:1
                       ),
                     )
                   ],
                 ),
               ),
             )


           ],
         )
     )
   );
  }


  void _showAlert() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          //title: new Text('You clicked on'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('Please set valid Password. Password contain 1 lowercase character, 1 uppercase character, '
                    '1 number and password length require more than 9 characters.' ),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}