

import 'package:assignment/main.dart';
import 'package:assignment/password.dart';
import 'package:assignment/personalInfromation.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class ScheduleVideoCall extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScheduleVideoCallPage(),
//      home:  Container(
//        color: Colors.white,
//        child: CustomPaint(
//          painter: CurvePainter(),
//        ),
//      ),
    );
  }
}

class ScheduleVideoCallPage extends StatefulWidget {
  @override
  _ScheduleVideoCallPageState createState() => _ScheduleVideoCallPageState();
}

class _ScheduleVideoCallPageState extends State<ScheduleVideoCallPage> with TickerProviderStateMixin {

  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final GlobalKey<FormState> _dateformKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _timeformKey = GlobalKey<FormState>();
  String _goalDownValue ;
  String _monthlyDownValue ;
  String _expenseDownValue ;
  AnimationController animation;
  Animation<double> _fadeInFadeOut;
  DateTime selectedDate = DateTime.now();
   TimeOfDay selectedTime;
  ValueChanged<TimeOfDay> selectTime;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


      animation = AnimationController(vsync: this, duration: Duration(seconds: 2),);
      _fadeInFadeOut = Tween<double>(begin: 0.2, end: 0.5).animate(animation);
      animation.addStatusListener((status){
        if(status == AnimationStatus.completed){
          animation.reverse();
        }
        else if(status == AnimationStatus.dismissed){
          animation.forward();
        }
      });
      animation.forward();





  }



  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null) {
      selectedTime = picked;
      print("selected time ${selectedTime}");
    }

    setState(() {
      timeController.text = selectedTime.format(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              MaterialPageRoute(builder: (context) => PersonalInformation()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  //color: Color.fromRGBO(81, 134, 222, 1.0),
                  color: Colors.transparent,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                              color: Color.fromRGBO(129, 162, 98, 1.0),
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
                               color: Color.fromRGBO(129, 162, 98, 1.0),
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
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 20,right: 20),
                          height: MediaQuery.of(context).size.height * 0.28,
                          child: Column(

                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  FadeTransition(
                                    opacity: _fadeInFadeOut,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.2,
                                      height:  MediaQuery.of(context).size.width * 0.2,

                                      decoration: new BoxDecoration(
                                          color: Color.fromRGBO(133, 178, 237, 1.0),
                                          shape: BoxShape.circle,
//                                        border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)
                                      ),
                                      child: Icon(
                                        Icons.calendar_today,
                                        size: MediaQuery.of(context).size.width * 0.1,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                height: MediaQuery.of(context).size.height * 0.03,
                                width : MediaQuery.of(context).size.width,
                                child: Text("Schedule Video Call",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.008,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.08,
                                width : MediaQuery.of(context).size.width,
                                child: Text("Choose the date and time that you preferred, We will send a link via email "
                                    "to make a video call on the scheduled date and time.",
                                  style: TextStyle(
                                      fontSize: 16,
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
                                      margin: EdgeInsets.only(left: 20,right: 20),
                                      width: MediaQuery.of(context).size.width,
                                      //color: Colors.white,
                                      height: MediaQuery.of(context).size.height * 0.068,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.white,

                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height * 0.023,
                                            padding: EdgeInsets.only(top: 5,left: 10),
                                            child: Text("Date",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.042,
                                            padding: EdgeInsets.only(left: 10),

                                          child: Form(
                                            key: _dateformKey,
                                            child: TextFormField(
                                            controller: dateController,
                                              decoration: InputDecoration(
                                             border: InputBorder.none,
                                                hintText: '- Choose Date -',
                                                fillColor: Colors.transparent,
                                                focusedBorder: InputBorder.none,
                                                filled: true,
                                                suffixIcon: IconButton(
                                                    icon: Icon(Icons.arrow_drop_down,),
                                                    onPressed: () {
                                                      _selectDate(context);

                                                    }

                                                ),
                                              ),
                                              readOnly: true,
                                              //validator: validateEmail,
                                    ),
                                          ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20,right: 20, top: MediaQuery.of(context).size.height * 0.04),
                                      width: MediaQuery.of(context).size.width,
                                      //color: Colors.white,
                                      height: MediaQuery.of(context).size.height * 0.068,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.white,

                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height * 0.023,
                                            padding: EdgeInsets.only(top: 5,left: 10),
                                            child: Text("Time",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.042,
                                            padding: EdgeInsets.only(left: 10),
                                          child: Form(
                                            key: _timeformKey,
                                            child: TextFormField(
                                              controller: timeController,
                                              decoration: InputDecoration(
                                           border: InputBorder.none,
                                                hintText: '- Choose Time -',
                                                fillColor: Colors.transparent,
                                                focusedBorder: InputBorder.none,
                                                filled: true,
                                                suffixIcon: IconButton(
                                                    icon: Icon(Icons.arrow_drop_down,),
                                                    onPressed: () {
                                                      _selectTime(context);

                                                    }

                                                ),
                                              ),
                                              readOnly: true,

                                            ),
                                          ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
//                                    height: MediaQuery.of(context).size.height * 0.08,
                                    height: 48,
                                    width:MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(left: 20,right: 20,top: MediaQuery.of(context).size.height * 0.06),
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

                                          if(selectedDate == null && selectedTime == null){
                                            _showAlert("Please select date and time");
                                          }
                                          else{
                                            _showAlert("Scheduled Video Call. We will send a link via email "
                                                "to make a video call on the scheduled date and time.");
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
//                            height:MediaQuery.of(context).size.height * 0.01,
                            height: 1,
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


  void _showAlert(String msg) {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          //title: new Text('You clicked on'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text(msg ),
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