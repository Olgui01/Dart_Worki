void main() {
  tiemporeal().listen((value) {
    print('el valor $value');
  });
  TiempoREAL_ASYNC().listen((event) {
    print(event);
  });
}

Stream<int> tiemporeal() {
  return Stream.periodic(const Duration(milliseconds: 500), (value) {
    return value;
  }).take(5);
  /*return Stream.periodic(const Duration(milliseconds: 500), (value) {
    return value;
  })*/
}

Stream TiempoREAL_ASYNC() async* {
  final value = [1, 2, 3, 4, 5];
  for (var x in value) {
    await Future.delayed(const Duration(microseconds: 500));
    // return x  // <- no se puede usar return se usa yield
    yield x;
  }
}
