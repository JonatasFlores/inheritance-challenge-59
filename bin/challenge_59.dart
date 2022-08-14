//59) CRIE UMA CLASSE PARA DEFINIR CARACTERÍSTICAS DE UMA PESSOA,
//DEPOIS CRIE OUTRAS CLASSES QUE ESTENDEM ELA,
//POR EXEMPLO; MÉDICO, JOGADOR, ESTUDANTE ETC.
//FIQUE A VONTADE PARA APLICAR SUA CRIATIVIDADE.

import 'models/scientist_model.dart';

void main() {
  ScientistModel cientista = ScientistModel(
      name: "Jonatas Flores Viana dos Santos ",
      age: 23,
      genre: "Masculino",
      skinColor: "Branco",
      eyesColor: "Preto",
      typeHair: "Ondulado, Loiro Escuro",
      height: 1.8,
      weight: 71.3,
      scientificArea: ScientificArea.computacao,
      nationality: Nationality.brasileiro,
      masteredLanguages: "Português BR, Alemão, Inglês, Espanhol, Francês.");

  print("Nome do Cientista: ${cientista.name}");
  print("Está vivo? ${cientista.alive}");
  print("Está acordado? ${cientista.awake}");
  cientista.riskWarning();
  cientista.inventSomething();
  cientista.riskWarning();
  cientista.inventSomething();
  cientista.eat();
  cientista.eat();
  cientista.riskWarning();
  cientista.inventSomething();
  cientista.riskWarning();
  cientista.inventSomething();
  cientista.inventSomething();
  cientista.riskWarning();
  cientista.inventSomething();
}
