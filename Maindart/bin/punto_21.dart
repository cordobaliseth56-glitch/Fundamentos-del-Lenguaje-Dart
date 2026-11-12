
extension ExtensionTexto on String {

  String convertirMayusculas() {
    return toUpperCase();
  }

}

void main() {

  String texto = "hola mundo";

  print(texto.convertirMayusculas());

}
