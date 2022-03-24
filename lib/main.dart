import 'package:flutter/material.dart';

import 'package:nav/Fav.dart';
import 'package:nav/Home.dart';
import 'package:nav/Profile.dart';
import 'package:nav/Settings.dart';

void main(){
  runApp(MyApp());
  
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: MyNavbar(),
      
      ),
     
            
                );
   }
}


// ========================================================================
                      
                      // BOTTOM NAVIGATION BAR


class MyNavbar extends StatefulWidget {
 @override
  _MyNavbarState createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {

int _currentIndex = 0;
final List _children = [
  Home(),
  Profile(),
  Fav(),
  Settings(),
];

void onTappedBar (int index) {
  setState(() {
    _currentIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
        _children[_currentIndex] ,
       bottomNavigationBar: BottomNavigationBar(
         
         type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue[50] ,
          elevation: 40,
          iconSize: 25,
          // fixedColor: Colors.white,
          selectedFontSize: 10,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue[200],
          
          
           onTap: onTappedBar,
          currentIndex: _currentIndex,

          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("Home"),
              
              // backgroundColor: Colors.blue,
               ),

               BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                 title:Text("Profile"),
                //  backgroundColor: Colors.green,
                 ),


                 BottomNavigationBarItem(
                 icon: Icon(Icons.favorite),
                 title:Text("favorite"),
                //  backgroundColor: Colors.red,
                 ),


                 BottomNavigationBarItem(
                 icon: Icon(Icons.settings),
                 title:Text("Settings"),
                //  backgroundColor: Colors.yellow,
                 ),
          ],

         ),
      
    );
  }
}