abstract class anmimal {}

abstract class Mamifero extends anmimal {}

abstract class Ave extends anmimal {}

abstract class Pez extends anmimal {}

abstract mixin class Volar {
  void volar() => print("volar");
}

abstract mixin class Nadar {
  void nadar() => print("Nadar");
}

abstract mixin class Caminar {
  void caminar(params) => print("Caminar");
}

class Delfin extends Mamifero with Nadar {}

class pato extends Ave with Volar, Caminar, Nadar {}

class paloma extends Ave with Volar, Caminar {}

class Tiporo extends Pez with Nadar {}

class pollo extends Ave with Volar, Caminar {}

void main() {
  final delfin = new Delfin();
  delfin.nadar();
}
