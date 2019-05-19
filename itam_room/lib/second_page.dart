import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:itam_room/profile_page.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),

              flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    child: Stack(
                      children: <Widget>[
                        Image.asset('assets/images/casa.jpeg', fit: BoxFit.cover ,),
                      ],
                    ),
                  )),

              // Extruding edge from the sliver appbar, may need to fix expanded height
              expandedHeight: MediaQuery.of(context).size.height /3.8,
              backgroundColor: const Color(0xFF97D197),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                child: Text(
                  "Hermosa casa con jardín",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                            AssetImage('assets/images/roomie.jpeg'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Casa",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Alojado por",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => ProfileScreen()),
                                            );
                                          },
                                          child: Text(
                                            "Juan",
                                            style:
                                            TextStyle(color: Color(0xFF298329)),
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Calificación",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "*****",
                                        style:
                                        TextStyle(color: Color(0xFF298329)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF298329),
                              ),
                              Text(
                                "Calle Guerrero",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.group,
                          color: Color(0xFF298329),
                          size: 30.0,
                        ),

                        Icon(
                          Icons.event_note,
                          color: Color(0xFF298329),
                          size: 30.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Sobre este departamento",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Hermosa casa con vistas, jardín y alberca.\n asfda"
                                  "adsfasd asdf afasdf a aha  dg aadgadfga gasd gad "
                                  "adsf asdf ads asfda.",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 400.0,
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        options: GoogleMapOptions(
                          cameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar:new Container(
          decoration: new BoxDecoration(
            //   shape: BoxShape.circle,
              gradient: new LinearGradient(colors: [
                const Color(0xFF298329),
                const Color(0xFF33A433),
              ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.9, 0.0),
                  stops: [0.0, 0.9],
                  tileMode: TileMode.clamp

              )
          ),
          child: new MaterialButton(
            onPressed: () {
              //  saveMoist();
            },

            child: new Padding(
              padding: const EdgeInsets.all(24.0),
              child:new Text("Agendar una cita",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600)),
            ),
          ),
        )
    );
  }
}