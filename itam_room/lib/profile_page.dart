import 'package:flutter/material.dart';
import 'package:itam_room/fab_bottom_app_bar.dart';
import 'package:itam_room/home_page.dart';
import 'package:itam_room/wavy_header.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
              children: <Widget>[
                WavyHeader(),
                Padding(
                  padding: const EdgeInsets.only(left:100.0,top: 90.0),
                  child: Text(
                    "RoomITAM",
                    style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
             ),
            IconButton(icon:Icon(Icons.account_box), onPressed: (){

            },color: Colors.grey,iconSize: 110.0,),
              Text(
                "Hola Unestudiante! ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Tus propiedades:",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      bottomNavigationBar: FABBottomAppBar(

        color: Colors.grey,
        selectedColor: Color(0xFF33A433),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Inicio'),
          FABBottomAppBarItem(iconData: Icons.account_circle, text: 'Perfil', ),
        ],
      ),

    );
  }

  String _lastSelected = 'TAB: 1';


  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
    if(index==0){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

}