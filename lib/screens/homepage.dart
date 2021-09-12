import 'package:detector_test/botombar.dart';
import 'package:detector_test/screens/home.dart';
import 'package:detector_test/login/login.dart';
import 'package:detector_test/screens/marketpage.dart';
import 'package:detector_test/register/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  _HomePage createState() => _HomePage();
  
}

class _HomePage extends State<HomePage>

  with SingleTickerProviderStateMixin {

  late TabController _tabController  ;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  //Var for indexing
  int current_Index = 0;

  //Navigation
  final List<Widget> _children = [
    MarketPlace(),
    Home(),
    RegisterScreen(),
    Home(), 
  ];

  @override
  Widget build(BuildContext context)
  {
    
     return Scaffold(
     /* appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),*/
        title: Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),*/
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Pesticides',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Weeds',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Pest Control',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Home(),
                    Home(),
                    Home(),
                  ]
                )
              )
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottomnav(),
      );
   
    /*
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
            icon: Icon(Icons.medical_services),
            title: Text("Pesticides"),
            backgroundColor: Colors.green,
             ),

             BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Orders"),
            backgroundColor: Colors.green,
             ),

        ],
        onTap: (index){
            setState((){
            current_Index = index;
          });

        }
      ));*/
  }
}