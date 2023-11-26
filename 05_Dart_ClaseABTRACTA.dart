void main() {
  final PE = new palanta_energia(Energia: 129);
  print('la conecion de la red electrica ${red_electrica(PE)}');
  final PEN = new planta_nuclear(energia_producida: 122);
  print(
      'la conecion de la red electrica CON ENERGIA NUCLEAR ${red_electrica(PEN)}');
  //final c = new C.a();
  // print(c);
}

double red_electrica(Material plat) {
  if (plat.energia_producida < 10) {
    throw "Falta materiar para generar luz ";
  }
  return plat.energia_producida - 10;
}

// "enum" es un dato especial
//        |
//        ▼
enum Tipo { Nuclear, wind, warter }

//clase abstracta
abstract class Material {
  //Tipo type;
  final Tipo type;

  double energia_producida;

  Material({required this.energia_producida, required this.type});

  void ConsumooEvaporar(double params);
}

//extens o extender
//->funciona para poder requerir todo lo de la clase
class palanta_energia extends Material {
  palanta_energia({required double Energia})
      //  "enum"
      //     |
      //     ▼
      : super(energia_producida: Energia, type: Tipo.Nuclear);

  @override
  void ConsumooEvaporar(double params) {
    energia_producida -= params;
  }
}

// implement
//->solo funciona para implementar metodos en concreto
class planta_nuclear implements Material {
//
  @override
  double energia_producida;
  @override
  final Tipo type = Tipo.Nuclear;

  planta_nuclear({required this.energia_producida});
  @override
  void ConsumooEvaporar(double params) {
    energia_producida -= (params * 0.5);
  }
}

/*
class C {
  C.a() : this.b();
  C.b();
}

*/
