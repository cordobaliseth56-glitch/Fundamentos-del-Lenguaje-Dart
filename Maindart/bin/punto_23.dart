
Future<String> obtenerMensaje() async {

  await Future.delayed(Duration(seconds: 2));

  return "Hola, la operacion termino correctamente.";

}

void main() async {

  print("Iniciando operacion...");

  String resultado = await obtenerMensaje();

  print(resultado);

}
