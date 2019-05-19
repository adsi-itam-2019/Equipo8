import 'package:itam_room/fab_bottom_app_bar.dart';

import 'package:itam_room/general_model.dart';
import 'package:itam_room/second_page.dart';
import 'package:itam_room/profile_page.dart';

import 'package:itam_room/wavy_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  child: Image.asset(

                    listImages[index].image,
                    width: 220.0,
                    height: 100.0,

                    fit: BoxFit.cover,),
                  )
            ),
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

  Widget _buildFruitCategoryList(context,index, List<FruitsCategory>listImages) {


    return
      Padding(
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 180.0,
                  height: 90.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0), textAlign: TextAlign.center,)
          ],
        ),
      );
  }

  Widget _buildHomeList(context,index, List<Homes>listImages) {


    return
      Padding(
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 200.0,
                  height: 100.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name)
          ],
        ),
      );
  }
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
    if(index==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(

              children: <Widget>[
                WavyHeader(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top:80.0),
                    child: Container(
                      height: 50.0,

                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                      decoration: new BoxDecoration(
                        color: Color(0xFF216921).withOpacity(0.3),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child:TextField(
                              decoration: const InputDecoration(
                                hintText: 'Encuentra tu propiedad ideal'
                              ),
                            )
                          ),
                          IconButton(icon:Icon(Icons.search), onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondScreen()),
                            );
                          },color: Color(0xFFFCFCFC),iconSize: 30.0,)
                        ],
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Tipos de Propiedad",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),)),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 150.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildFruitCategoryList(context,index,fruitsCategoryList.fruitsCategory);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Text("Populares",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 250.0,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildPopularList(context,index,fruitsCategoryList.popular);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Text("Recomendadas para ti",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 250.0,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildPopularList(context,index,fruitsCategoryList.rec);
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
}