void main() {

  // Operador ??
  String? nombre;
  String resultado = nombre ?? "Usuario";

  print("Operador ?? : $resultado");

  // Operador ?.
  String? mensaje = "Hola";

 print("Operador ?. : ${mensaje.length}");
  // Operador ...
  List<int> numeros1 = [1, 2, 3];

  List<int> numeros2 = [
    ...numeros1,
    4,
    5
  ];

  print("Operador ... : $numeros2");
}