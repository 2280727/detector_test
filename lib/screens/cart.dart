import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {

 _Cart createState() => _Cart();

}

class _Cart extends State<Cart>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold
    (

        body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(),
                          ),
                        ),

                        Container(
                          width: 150,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(15.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: AssetImage('assets/wonder.png'),
                          ),),
                    )],)
                ),
              ),
            ),
          ),

      /*body: Container(
          child: ListView(
             children: <Widget>[Card(
                elevation: 10,
                child: Padding(
                padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 8),
                child: Container(
                    height: 150.0,
                    width: 150.0,
                    child: Image(
                      fit: BoxFit.contain,
                      alignment: Alignment.topLeft,
                      image: 
                    ),
                
                //Text('name', style: TextStyle(fontSize: 18)),

              ),
        ),
      )
             ]))*/
        ]));
  }

   Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Container(child: Text("Efekto Wonder",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 10.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("Land Fertiliser",
                    style: TextStyle(color: Colors.black54, fontSize: 10.0,),)),
        
                  Container(child: Text("R140.00",
                    style: TextStyle(color: Colors.black54, fontSize: 10.0,),)),
                ],)),
        ),
        /*ontainer(child: Text("R140.00",
          style: TextStyle(color: Colors.black54, fontSize: 10.0,fontWeight: FontWeight.bold),)),*/
      ],
    );
  }
}