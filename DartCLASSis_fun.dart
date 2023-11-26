void main() {
  final Map<String, dynamic> json = {
    "Name": "Juan",
    "Estado": true,
    "Power": 1
  };
  final User felipe =
      new User(Name: "Felipe", Estado: json["Estado"] ?? false, Power: 2);
  print(felipe.toString());
  final User Juan = new User.New(json);
  print(Juan.toString());
}

class User {
  String Name;
  bool Estado;
  int Power;

  User({required this.Name, required this.Estado, required this.Power});

  User.New(Map<String, dynamic> json)
      : this.Name = json["Name"] ?? "No hya nada",
        this.Estado = json["Estado"] ?? false,
        this.Power = json["Pawer"] ?? 12;
  @override
  String toString() {
    return "\nName: $Name,\nEstado: ${Estado ? 'Estado activo' : 'Estado inactivo'},\nPawer: $Power\n ";
  }
}
