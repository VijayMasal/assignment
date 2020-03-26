

import 'package:assignment/ScheduleVideoCall.dart';
import 'package:assignment/main.dart';
import 'package:assignment/password.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersonalInformationPage(),

    );
  }
}

class PersonalInformationPage extends StatefulWidget {
  @override
  _PersonalInformationPageState createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  String _goalDownValue ;
  String _monthlyDownValue ;
  String _expenseDownValue ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
                              MaterialPageRoute(builder: (context) => Password()),
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
                          height: MediaQuery.of(context).size.height * 0.18,

                          child: Column(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.04,
                                width : MediaQuery.of(context).size.width,
                                child: Text("Personal Information",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.08,
                                width : MediaQuery.of(context).size.width,
                                child: Text("Please fill in the information below and your goal for digital savings.",
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
                                          child: Text("Goal for Activation",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey
                                            ),
                                          ),
                                        ),

                                        Container(
                                          height: MediaQuery.of(context).size.height * 0.042,
                                          padding: EdgeInsets.only(left: 10),
                                          child: DropdownButtonHideUnderline(

                                            child: DropdownButton(
                                              hint: _goalDownValue == null
                                                  ? Text('- Choose Option -',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                                  : Text(
                                                _goalDownValue,
                                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                              ),
                                              isExpanded: true,
                                              iconSize: 30.0,
                                              style: TextStyle(color: Colors.blue),
                                              items: ['Daily','Weekly', 'Monthly', 'Yearly'].map(
                                                    (val) {
                                                  return DropdownMenuItem<String>(
                                                    value: val,
                                                    child: Text(val),
                                                  );
                                                },
                                              ).toList(),
                                              onChanged: (val) {
                                                setState(
                                                      () {
                                                        _goalDownValue = val;
                                                  },
                                                );
                                              },
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
                                            child: Text("Monthly income",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.042,
                                            padding: EdgeInsets.only(left: 10),
                                            child: DropdownButtonHideUnderline(

                                              child: DropdownButton(
                                                hint: _monthlyDownValue == null
                                                    ? Text('- Choose Option -',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                                    : Text(
                                                  _monthlyDownValue,
                                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                                ),
                                                isExpanded: true,
                                                iconSize: 30.0,
                                                style: TextStyle(color: Colors.blue),
                                                items: ['20000', '40000', '60000','100000'].map(
                                                      (val) {
                                                    return DropdownMenuItem<String>(
                                                      value: val,
                                                      child: Text(val),
                                                    );
                                                  },
                                                ).toList(),
                                                onChanged: (val) {
                                                  setState(
                                                        () {
                                                          _monthlyDownValue = val;
                                                    },
                                                  );
                                                },
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
                                            child: Text("Monthly expense",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.042,
                                            padding: EdgeInsets.only(left: 10),
                                            child: DropdownButtonHideUnderline(

                                              child: DropdownButton(
                                                hint: _expenseDownValue == null
                                                    ? Text('- Choose Option -',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                                    : Text(
                                                  _expenseDownValue,
                                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                                ),
                                                isExpanded: true,
                                                iconSize: 30.0,
                                                style: TextStyle(color: Colors.blue),
                                                items: ['10000', '20000', '30000','40000','50000'].map(
                                                      (val) {
                                                    return DropdownMenuItem<String>(
                                                      value: val,
                                                      child: Text(val),
                                                    );
                                                  },
                                                ).toList(),
                                                onChanged: (val) {
                                                  setState(
                                                        () {
                                                          _expenseDownValue = val;
                                                    },
                                                  );
                                                },
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

                                        if(_goalDownValue == null && _monthlyDownValue == null && _expenseDownValue == null){
                                          _showAlert();

                                        }else{
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ScheduleVideoCall()),
                                          );

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
                new Text('Please set Goal, Monthly income and Monthly expense' ),
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