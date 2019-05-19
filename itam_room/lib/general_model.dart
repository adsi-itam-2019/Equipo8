import 'dart:ui';

class FruitsCategory{
  final String name;
  final String image;

  FruitsCategory({this.name, this.image});


}
class Homes{
  final String name;
  final String image;
  final String desc;
  final String price;
  final String rating;

  Homes({this.name, this.image, this.desc, this.price, this.rating});


}


class GeneralModelList{

  final List<FruitsCategory> fruitsCategory;
  final List<Homes> popular;
  final List<Homes> rec;

  GeneralModelList({this.fruitsCategory, this.popular, this.rec});


}

final GeneralModelList  fruitsCategoryList = new GeneralModelList(
    fruitsCategory: [
      FruitsCategory(
          name: "Casas",
          image: "assets/images/casa.jpeg"
      ),
      FruitsCategory(
          name: "Departamentos",
          image: "assets/images/depa.jpeg"
      ),
      FruitsCategory(
          name: "Cuartos privados",
          image: "assets/images/cuarto.jpeg"
      )
    ],
    popular: [
      Homes(
          name: "Hermosa casa con jardín",
          desc: "Hermosa casa con vistas, jardín y alberca.",
          image: "assets/images/casa.jpeg",
          price: "\$10000 por mes",
          rating: "984"
      ),
      Homes(
          name: "Casa cerca del ITAM con tres cuartos",
          desc: "Perfecto si tienes muchos roomies.",
          image: "assets/images/depa.jpeg",
          price: "\$12000 por mes",
          rating: "788"
      ),
      Homes(
          name: "Increible departamento",
          desc: "A 5 minutos caminando de la universidad",
          image: "assets/images/house1.jpg",
          price: "\$13000 por mes",
          rating: "900"
      ),
    ],
    rec: [
      Homes(
          name: "Casa cerca del ITAM con tres cuartos",
          desc: "Perfecto si tienes muchos roomies.",
          image: "assets/images/cuarto.jpeg",
          price: "\$12000 por mes",
          rating: "788"
      ),
      Homes(
          name: "Increible departamento",
          desc: "A 5 minutos caminando de la universidad",
          image: "assets/images/house1.jpg",
          price: "\$13000 por mes",
          rating: "900"
      ),
      Homes(
          name: "Departamento con dos cuartos",
          desc: "Increible departamento cerca del ITAM.",
          image: "assets/images/house2.jpeg",
          price: "\$10000 por mes",
          rating: "984"
      ),
    ]
);