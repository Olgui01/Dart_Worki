class heroe {
  String Nombre;
  String Poder;

  heroe(String nombre, String poder)
      : Nombre = nombre,
        Poder = poder;
}

// = igual diferente estructura
class Villano {
  String Nombre;
  String poder;

  Villano(this.Nombre, this.poder);
}

class Anegota {
  String Tema;
  String Ganador;
  Anegota({required this.Tema, this.Ganador = ""});

  @override
  String toString() {
    return 'QUIEN SABE SEGUDA PARTE';
  }
}

void main() {
  final heroe Heroe1 = new heroe("Super Pawer", "el pawer");
  final Villano villano1 = new Villano("Meta", "El Super pawer meta");
  final Anegota agne = new Anegota(
    Tema: "",
  );
  print(Heroe1);
  print("->El Nombre : ${Heroe1.Nombre} \n->SU Poder : ${Heroe1.Poder}\n");
  print(villano1);
  print("->El Nombre : ${villano1.Nombre} \n->SU Poder : ${villano1.poder}\n");
  print(agne.toString());
}
