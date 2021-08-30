
import 'dart:ui';

import 'package:detector_test/home.dart';
import 'package:detector_test/login/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _userName = TextEditingController();
  final _cellno = TextEditingController();
  final _email = TextEditingController();
  final _idNumber = TextEditingController();
  final _password = TextEditingController();
  final _confirmpass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _submitted = false;
  bool _isLoading = false;

   static const textInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2.0)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2.0)
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Registration Page"),
      backgroundColor: Colors.green,
      ),
      body: Container(
          // Even Padding On All Sides
          alignment: Alignment.topCenter,
          child: ListView(
              children:[
                Form(
                child: Column(
                  children: <Widget>[
                //Person details
                  SizedBox(
                      height: 20.0,
                    ),
                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Firstname',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Lastname',
                          prefixIcon: Icon(Icons.person),
                        
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'ID Number',
                          prefixIcon: Icon(Icons.person),
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Cellphone Number',
                          prefixIcon: Icon(Icons.phone),
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                  SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                         
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                   SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(
                              icon: Icon( Icons.visibility),
                            onPressed: () {
                            },
                          ),
                        ),
                        validator: (val) => val!.length < 6 ? 'Password needs to be at least 6 characters' : null,
                      
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                SizedBox(
                      width: 105,
                      height: 50,
                      child: new RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.account_circle_outlined),
                            Text("Register", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),

                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        color: Colors.green[700],
                        textColor: Colors.white,
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                          
                        },
                      ),
                    ),
                    
              ],
            ),
          ),
    ],
          )));
  }
}
