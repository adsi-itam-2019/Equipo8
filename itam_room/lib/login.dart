import 'package:flutter/material.dart';
import 'package:itam_room/home_page.dart';
import 'package:itam_room/wavy_header.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  final controllerU = new TextEditingController();
  final controllerP = new TextEditingController();
  var controllerC = new TextEditingController();

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
            Padding(
              padding: const EdgeInsets.only(top: 10),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              decoration: new BoxDecoration(
                color: Color(0xFF216921).withOpacity(0.3),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child:Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Tu correo del ITAM',
                      ),
                      controller: controllerU,
                    ),

                  ),
                  Text("@itam.mx", style: TextStyle(fontSize: 22.0,color: Colors.grey)),
                ],
              ) ,
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              decoration: new BoxDecoration(
                color: Color(0xFF216921).withOpacity(0.3),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.visibility_off),
                  hintText: 'Contraseña'
                ),
                controller: controllerP,
                obscureText: true,
              ),
            ),
            Container(
              height: 40,
              width: 200,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              decoration: new BoxDecoration(
                color: Color(0xFF216921).withOpacity(0.9),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: GestureDetector(
                onTap: (){
                  if((controllerU.text == "jdoe") && (controllerP.text == "a")){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }else{
                    controllerC.text = "*Usuario o contraseña erroneos";
                  }
                },
                child: Text("Iniciar Sesión", style: TextStyle(fontSize: 22.0,color: Colors.black)),
              ),
            ),
            TextField(
              controller: controllerC,
            ),
          ],
        ),
      ),
    );
  }
}