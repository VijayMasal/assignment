import 'package:assignment/password.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(81, 134, 222, 1.0),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                children: <Widget>[

                  Expanded(
                    child: Container(
                      color: Color.fromRGBO(81, 134, 222, 1.0),
                      //height: MediaQuery.of(context).size.height * 0.6 ,
                      width: MediaQuery.of(context).size.width,
                      child: CustomPaint(
                        painter: CurvePainter(),
                        child: Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
                          child: Column(
                            children: <Widget>[
                              Expanded(//ScrollView
                                child: SingleChildScrollView(

                                  child: Container(
                                    margin: EdgeInsets.only(left: 20.0,right: 20.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                            width: MediaQuery.of(context).size.width,
                                            child: Text("Welcome to",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            )
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.01,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "GIN",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Container(
                                              child: Text("Finans",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(81, 134, 222, 1.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.03,
                                        ),
                                        Container(
                                            width: MediaQuery.of(context).size.width,
                                            child: Text("Welcome to The Bank of The Future. \nManage and track your accounts on\n the go.",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            )
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.05,
                                        ),
                                        Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height * 0.11,
                                            //color: Colors.white,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              color: Colors.white,

                                            ),
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context).size.height * 0.022,
                                                bottom: MediaQuery.of(context).size.height * 0.01,
                                                left: MediaQuery.of(context).size.height * 0.015,
                                                right: MediaQuery.of(context).size.height * 0.015
                                            ),
                                            child: Form(
                                              key: _formKey,
                                              //autovalidate: _autoValidate,
                                              child: TextFormField(
                                                keyboardType: TextInputType.emailAddress,
                                                controller: emailController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),

                                                  ),
                                                  hintText: 'Email',
                                                  fillColor: Color.fromRGBO(248, 249, 250, 1.0),
                                                  focusedBorder: InputBorder.none,
                                                  filled: true,
                                                  prefixIcon: Icon(
                                                    Icons.mail_outline,
                                                  ),
                                                ),
                                                validator: validateEmail,
                                                onSaved: (String val) {
                                                  _email = val;
                                                },


                                              ),
                                            )
                                        ),



                                      ],
                                    ),

                                  ),
                                ),
                              ),
                              Container(
                               // height: MediaQuery.of(context).size.height * 0.08,
                                height: 48,
                                width:MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                                child: RaisedButton(
                                  color: Color.fromRGBO(81, 134, 222, 1.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(8.0),
                                  ),
                                  child: Text("Next",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                  ),
                                  onPressed: _validateInputs,
                                ),
                              ),
                              SafeArea(
                                child: SizedBox(
//                                  height:MediaQuery.of(context).size.height * 0.01,
                                height: 1,
                                ),
                              )
                            ],

                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            //color: Color.fromRGBO(81, 134, 222, 1.0),
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                    width: MediaQuery.of(context).size.width * 0.15,
                    //color: Colors.red,
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(248, 249, 250, 1.0),
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
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: 2,
                    color: Colors.black,
                    child: Divider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: 2,
                    color: Colors.black,
                    child: Divider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: 2,
                    color: Colors.black,
                    child: Divider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
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
        ],
      )
    );
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      emailController.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Password()),
      );
    } else {
//    If all data are not valid then start auto validation.
    _showAlert();
      setState(() {
        _autoValidate = true;
      });
    }


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
                new Text('Please Enter valid Email' ),
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


class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromRGBO(248, 249, 250, 1.0);

    paint.style = PaintingStyle.fill;

    var path = Path();

   // path.moveTo(0, size.height * 0.9167);
    path.moveTo(0, size.height * 0.1 );
    path.quadraticBezierTo(size.width * 0.0001, size.height * 0.002 ,
        size.width , size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}