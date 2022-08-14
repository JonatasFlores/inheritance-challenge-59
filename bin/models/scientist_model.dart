//AQUI VOU CRIAR O MODELO DO CIENTISTA E EXTENDER DO PERSON_MODEL.DART

import 'person_model.dart';

enum ScientificArea {
  computacao,
  biologica,
  contabeis,
}

enum Nationality {
  brasileiro,
  alemao,
  frances,
  ucraniano,
  estadunidense,
  canadense,
}

class ScientistModel extends PersonModel {
  ScientistModel({
    required super.name,
    required super.age,
    required super.genre,
    required super.skinColor,
    required super.eyesColor,
    required super.typeHair,
    required super.height,
    required super.weight,
    required this.scientificArea,
    required this.nationality,
    required this.masteredLanguages,
  });

  ScientificArea scientificArea; //ÁREA CIENTÍFICA
  Nationality nationality; //NACIONALIDADE
  String masteredLanguages; //IDIOMAS DOMINADOS
  int _energy = 3;

  void inventSomething() {
    //FUNÇÃO DE INVENÇÃO, CHAMA ELA QUANDO FOR INVENTAR ALGO NOVO.
    if (awake == true && alive == true) {
      _energy--;
      print("Pensando... \nAnotando...  \nExecutando...");
      print("Nova Invenção Criada");
    } else {
      print("Está acordado? ${awake}");
      print("Está vivo? ${alive}");
    }
  }

  void riskWarning() {
    //ESSA FUNÇÃO VERIFICA A ENERGIA DO CIENTISTA PARA AVISÁ-LO QUE ELE PODE
    //MORRER SE NÃO TOMAR ALGUMAS MEDIDAS
    if (_energy <= 3 && _energy > 0) {
      print("Cuidado, sua energia está quase zerada,"
          " se alimente ou descanse");
    } else if (_energy > 3) {
      print("ENERGIA BOA");
    } else {
      isDead();
    }
  }

  void isDead() {
    //FUNÇÃO PARA VERIFICAR SE O CIENTISTA ESTÁ MORTO
    if (_energy <= 0) {
      alive = false;
      print("GAME OVER");
    } else {
      print("Você ainda tem ${_energy} de energia");
    }
  }

  void eat() {
    //FUNÇÃO PARA COMER
    if (awake == true && alive == true) {
      _energy++;
      print("Comendo... \nMastigando...  \nEngolindo...");
      print("Ótima refeição");
    } else {
      print("Está acordado? ${awake}");
      print("Está vivo? ${alive}");
    }
  }

  void toSleep() {
    //FUNÇÃO PARA DORMIR
    if (awake == true && alive == true) {
      awake = false;
      _energy++;
      print("Bons Sonhos...");
      print("Dormindo");
    } else {
      print("Está acordado? ${awake}");
      print("Está vivo? ${alive}");
    }
  }

  void toWakeUp() {
    //FUNÇÃO PARA ACORDAR
    if (awake == false && alive == true) {
      awake = true;
      print("Vamos Lá");
      print("Acordado");
    } else {
      print("Está acordado? ${awake}");
      print("Está vivo? ${alive}");
    }
  }
}
