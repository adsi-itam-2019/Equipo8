import 'dart:ui';

class FruitsCategory{
  final String name;
  final String image;

  FruitsCategory({this.name, this.image});


}
class Popular{
  final String name;
  final String image;
  final String desc;
  final String price;
  final String rating;

  Popular({this.name, this.image, this.desc, this.price, this.rating});


}

class Homes{
  final String image;
  final String name;

  Homes({this.image, this.name});

}


class GeneralModelList{

  final List<FruitsCategory> fruitsCategory;
  final List<Popular> popular;
  final List<Homes> homes;

  GeneralModelList({this.fruitsCategory, this.popular, this.homes});


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
      ),
      FruitsCategory(
          name: "Roomies",
          image: "assets/images/roomie.jpeg"
      )
    ],
    popular: [
      Popular(
          name: "Departamento con dos cuartos",
          desc: "Increible departamento cerca del ITAM.",
          image: "assets/images/house2.jpeg",
          price: "\$10000 por mes",
          rating: "984"
      ),
      Popular(
          name: "Casa cerca del ITAM con tres cuartos",
          desc: "Perfecto si tienes muchos roomies.",
          image: "assets/images/meals.jpeg",
          price: "\$12000 por mes",
          rating: "788"
      ),
      Popular(
          name: "Increible departamento",
          desc: "A 5 minutos caminando de la universidad",
          image: "assets/images/house1.jpg",
          price: "\$13000 por mes",
          rating: "900"
      ),
    ],
    homes: [
      Homes(
          image: "assets/images/house1.jpg",
          name: "Casa 3 recamaras"
      ),
      Homes(
          image: "assets/images/homes.jpeg",
          name: "Casa 2 recamaras"
      ),
      Homes(
          image: "assets/images/house2.jpeg",
          name: "Cuarto 1 recamara"
      ),
    ]
);