activiti() {
  final Map<String, dynamic> pokemon = {
    'name': 'Dito',
    'hp': 100,
    'isAlive': true,
    'abilidades': <String>['impostor'],
    'strip0': [
      {1: "ghjgjhg"},
      {2: "ss"}
    ],
    'strip': {1: "/001", 2: "/002"}
  };

  print('---> $pokemon');
  print("---> ${pokemon["name"][2]}");
  print("---> ${pokemon["strip"][1]}");
}

activiti0() {
  final num = [1, 2, 3, 4, 5, 5, 5, 6, 2, 7, 8, 9, 10];
  /*
      ->  num
      ->  num.length
      ->  num[0]
      ->  num.first
      ->  num.reversed
  */
  print(
      "_____________________________________________________________________________________");
  print('| num          | show list orginal      |-> $num|');
  print(
      '| num.length   | length                 |-> ${num.length}                                      |');
  print(
      '| num[0]       | Index 0                |-> ${num[0]}                                       |');
  print(
      '| num.first    | El primer dato o first |-> ${num.first}                                       |');
  print('| num.reversed | alreves o Reversed     |-> ${num.reversed}|');
  print(
      "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

  final ReversdNum = num.reversed;
  print("\nOrgin -> $num");
  print('RESULT REVES -> $ReversdNum');
  print('List o array[] -> ${ReversdNum.toList()}');
  print('Set O UNICO -> ${ReversdNum.toSet()}');
  // create map((item)=>{consol.log(item)}) javascritp Interacion
  final numMap = num.where((element) {
    return element > 4;
  });
  print('interacion $numMap');
  print('filtrar los unicos ${numMap.toSet()}');
}

//activiti1

//------------------>

//funcion de flecha funcion arrow
String funcion_de_flecha() => "hello";
funcion_de_flechaSinDifinicion() => "hello";
funcion_de_flecha_Definida_datos(int a, int b) => a + b;

int funcion_difinida_datos(int a, int b) {
  return a + b;
}

int funcion_default_valor(int a, [int b = 0]) {
  // int funcion_default_valor(int a, [int b ]) {
  // b?? = 0;
  return a + b;
}

String funcion_opcinal({String? user, String? comentari}) {
  return "user :  $user  ,\n      cometo  : $comentari";
}

String funcion_DEfinido_Requerido_Estricto(
    {required String name, String messag = "hello"}) {
  return '$messag $name';
}

dynamic hello() {
  return print("hllo");
}

void main() {
  /*
  var unter = "uygugi";
  final String nuw = "sdsa";
  final int num = 100;
  final bool Bole = true;
  final valor_x = "ssas";
  final cadena = <int>[1, 2, 3];
  late final cadena_2 = <String>["A", "B", "C"];
  final llave = {1, "name", 2, 3};

  //dynameic javascript
  dynamic valuefloat = "";
  valuefloat = [
    12,
    3,
    "ada",
    true,
    {"ssqa": 12}
  ];
  print("\n dynamic-----> $valuefloat");
  valuefloat = {"ddfg", 545646, 6765, "ghgh"};
  print("\n dynamic-----> $valuefloat \n");

  hello();
  print(""" $valor_x 
  $Bole 
  $cadena 
  $cadena_2 
  $llave ---> 
  $valuefloat \n\n\n
  
  
  """);

//actividad
  activiti();
//actividad0
  activiti0();*/
//actividad1
/*
  print("\nA-------------");
  print(funcion_de_flecha());
  print(funcion_de_flechaSinDifinicion());
  print(funcion_difinida_datos(1, 3));
  print(funcion_de_flecha_Definida_datos(10, 20));
  print("B  -------------\n");
  //funcion es la misma
  print(funcion_default_valor(2, 3));
  print(funcion_default_valor(12));
  print("C  --------------\n");
  //funcion no estricta
  print(funcion_opcinal());
  print(funcion_opcinal(comentari: "like", user: "JUanito"));
  // funcion estricta
  print("D  -------------------\n");
  print(funcion_DEfinido_Requerido_Estricto(name: "Ana"));
  print(funcion_DEfinido_Requerido_Estricto(name: "juan", messag: "hola"));

*/
}
