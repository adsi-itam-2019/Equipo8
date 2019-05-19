import 'package:flutter/material.dart';
import 'package:itam_room/fab_bottom_app_bar.dart';
import 'package:itam_room/home_page.dart';
import 'package:itam_room/wavy_header.dart';
import 'package:itam_room/general_model.dart';

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
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "RoomITAM",
                      style: TextStyle(fontSize: 40.0,color: Colors.white, fontWeight: FontWeight.bold),
                    ),
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
              Padding(
                padding: const EdgeInsets.only(left:10.0, top: 20.0),
              ),
              Text(
                "Tus propiedades:",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
               Container(
                  padding: EdgeInsets.only(left: 10.0),
                  height: 250.0,
                  width: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return _buildPopularList(context,index,fruitsCategoryList.popular);
                      }),
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

  Widget _buildPopularList(context,index, List<Homes>listImages) {
    return
      Container(
        width: 200.0,
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 220.0,
                  height: 100.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            Text(listImages[index].desc,style: TextStyle(color: Colors.grey),),
            Text(listImages[index].price,style: TextStyle(fontSize: 12.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.star,color: Color(0xFF33A433),size: 15.0,),
                Icon(Icons.star,color: Color(0xFF33A433),size: 15.0,),
                Icon(Icons.star,color: Color(0xFF33A433),size: 15.0,),
                Icon(Icons.star,color: Color(0xFF33A433),size: 15.0,),
                Icon(Icons.star,color: Color(0xFF33A433),size: 15.0,),

                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(listImages[index].rating),
                ),

              ],
            )
          ],
        ),
      );
  }

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