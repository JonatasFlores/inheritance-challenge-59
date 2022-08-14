class PersonModel {
  String name; //NOME
  int age; //IDADE
  String genre; //GÊNERO
  String skinColor; //COR DA PELE
  String eyesColor; //COR DOS OLHOS
  String typeHair; //TIPO DE CABELO
  double height; //ALTURA
  double weight; //PESO

  PersonModel({
    required this.name,
    required this.age,
    required this.genre,
    required this.skinColor,
    required this.eyesColor,
    required this.typeHair,
    required this.height,
    required this.weight,
  });

  bool awake = true;
  bool alive = true;
}
