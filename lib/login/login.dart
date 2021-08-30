//import 'dart:html';
import 'dart:ui';
import 'package:detector_test/home.dart';
import 'package:detector_test/register/register.dart';
import 'package:detector_test/splashscreen.dart';
import 'package:flutter/material.dart';


  
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  
  String error = '';
  bool loading = false;

  String _email = '';
  String _password = '';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Murimi" , style: TextStyle(fontWeight: FontWeight.bold)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green[700],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Welcome to',
                      style: TextStyle(
                          fontSize: 32,
                          height: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700]))
            ),

             SizedBox(height: 12.0),
              Image.asset(
                //image that will appear on login screen
                "assets/murimilogo.jpeg",
                height: 250,
              ),

              Text(
                  //appears at top of login screen to indicate to users that this is the login page
                "Login",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  Colors.green[700],
                    fontSize: 32,
                  ),
                ),

              SizedBox(height: 15),
              Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),

                    // TODO : Implement fields
                    SizedBox(
                      width: 400.0,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                  
                        onSaved: (input) => _email = input!,
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.mail_outline),
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
                        onSaved: (input) => _password = input!,
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    SizedBox(
                      width: 105,
                      height: 50,
                      child: new RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.account_circle_outlined),
                            Text(" Sign in", style: TextStyle(fontWeight: FontWeight.bold)),
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

                    //Spacng
                    SizedBox(
                      height: 18.0,
                    ),
                    
                    //OnTap register
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                        
                      },
                      child: new Text("Do not have an account? Register here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 15,
                            color:  Colors.green[700]),
                          ),
                    ),

                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                    
                  ],
                ),
              ),
              ],
          ),
        ));
  }
}