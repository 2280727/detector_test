import 'package:detector_test/register/register.dart';
import 'package:detector_test/screens/cart.dart';
import 'package:detector_test/screens/home.dart';
import 'package:detector_test/screens/marketpage.dart';
import 'package:detector_test/screens/profile.dart';
import 'package:flutter/material.dart';
 

class Bottomnav extends StatefulWidget {
 _Bottomnav createState() => _Bottomnav();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _Bottomnav extends State<Bottomnav>{
    //Var for indexing
  int current_Index = 0;

  //Navigation
  final List<Widget> _children = [
    MarketPlace(),
    Home(),
    Cart(),
    Profile(),  
    
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold
    (

      appBar: AppBar(
         title: Text("Murimi"),
         backgroundColor: Colors.green,
       ),
      body: _children[current_Index],
      bottomNavigationBar: BottomNavigationBar(
        
        // Index
        currentIndex: current_Index,

        //Color
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.green,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.green,
             ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Detect"),
            backgroundColor: Colors.green,
             ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Cart"),
            backgroundColor: Colors.green,
             ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            backgroundColor: Colors.green,
             ),

        ],
        onTap: (index){
            setState((){
            current_Index = index;
          });

        }
      ));
    /*return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home, color: Colors.green),
                  Icon(Icons.person_outline, color: Colors.green)
                ],
              )
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color: Colors.green),
                  Icon(Icons.shopping_basket, color: Colors.green)
                ],
              )
            ),
          ]
        )
      )
    );*/
  }
}