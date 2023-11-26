void main() {
  final clas = new Scuat(Numero: -12);
  print('Show Retun normal: ${clas.RETUN()}');
  print('Show  SET : -> ${clas.Numero = -12}');
  print('SHow : ${clas.are}');
  final classe = new Class(12.12);
  print('\n\n\n\n\n\nShow ASERCION${classe.func1()}');
}

class Scuat {
  // PARA PONER[_NUMERO] |||  PARA LIBRE [NUMERO]  ------->PRIVADO JAVASCRIPT SI NO TE ACUERDES
  double _Numero;
  Scuat({required double Numero}) : _Numero = Numero;

/*
-NO Pudes llamar la funcion con datos  o el metodo de class 
-Este Metodo GET es para cuando inicialisas la clase se le puede agregar el dato
-Ademas se tiene que colocar _ el guion bajo para poder usar como privado 

final class = new Class(Numero: 12);
+----------------------------------+-----+
| print(class.Numero = 2);         |  x  |
+----------------------------------+-----+
| prin(class.Numero);              |  ✔  |
+----------------------------------+-----+
  double get Numero {
    print(' is false ${_Numero}');
    return _Numero * _Numero;
  }

*/
  double get are {
    return _Numero * _Numero;
  }

  set Numero(double value) {
    print('gett vale ? ${value}');
    if (value < 0) throw 'EL numero Tiene que ser menor x';
    print('EL Valor Paso ✔');
    _Numero = value;
  }

  RETUN() {
    return 2 * _Numero;
  }
}

class Class {
  double data;
  Class(data)
      : assert(data > 0, 'Error'),
        this.data = data;
  func() {
    return data;
  }

  func0() {
    return data;
  }

  func1() {
    return func();
  }
}
