void main() async {
   print("Hola Mundo");

//variables
    String nombre = "Ana Milena De Jesus";
    int edad = 14;

     print("Mi nombre es: $nombre");
     print("Mi edad es: $edad");

// var y final
  var ciudad = "Popayán";
   ciudad = "Bogóta";
  final pais = "Colombia";

  print("ciudad: $ciudad");
  print("pais: $pais");

  //Números y Strings
   double altura = 1.55;
  String cita = "El éxito se consigue con esfuerzo.";

  print("Altura: $altura metros");
  print("Cita favorita: $cita");
// Booleanos y Condiones
 bool esMayorDeEdad = edad >= 18;

  if (esMayorDeEdad) {
    print("Soy mayor de edad.");
  } else {
    print("Soy menor de edad.");
  }

//Listas
 List<String> amigos = ["Laura", "Camila", "Andrés"];
 print("amigos: ");

  for (String amigo in amigos) {
    print(amigo);
  }

  //Sets: Un Set no permite elementos duplicados. 
 
  Set<String> ciudades = {"Popayán", "Cali", "Pasto"};

  ciudades.add("Bogotá");
  ciudades.remove("Cali");

  print("Ciudades: $ciudades");

  //Maps
   Map<String, String> paises = {
    "Colombia": "Bogotá",
    "Ecuador": "Quito",
    "Perú": "Lima"
  };

  print("Capital de Colombia: ${paises["Colombia"]}");

  //Operadores Aritméticos

   int numero1 = 20;
  int numero2 = 5;

  int suma = numero1 + numero2;
  int resta = numero1 - numero2;
  int multiplicacion = numero1 * numero2;
  double division = numero1 / numero2;

  print("Suma: $suma");
  print("Resta: $resta");
  print("Multiplicación: $multiplicacion");
  print("División: $division");

// Operadores de comparación
 int a = 10;
  int b = 20;

  print("¿Son iguales? ${a == b}");
  print("¿El primero es mayor? ${a > b}");
  print("¿Son diferentes? ${a != b}");

  // Funciones
   print("Resultado de la suma: ${sumar(15, 10)}");

   // Records
    var libro = (
    titulo: "Cien años de soledad",
    autor: "Gabriel García Márquez",
    anio: 1967
  );

  print("Título: ${libro.titulo}");
  print("Autor: ${libro.autor}");
  print("Año: ${libro.anio}");

  //EJERCICIOS DE APLICACION
  // Análisis de una palabra
  print("\nPUNTO 13");

   String palabra = "Programacion";
  print("Palabra: $palabra");
  print("Longitud: ${palabra.length}");
  print("Primer carácter: ${palabra[0]}");
  print("Últimos 3 caracteres: ${palabra.substring(palabra.length - 3)}");

  String resultado = palabra.length > 5
      ? palabra.toUpperCase()
      : palabra;

  print("Palabra modificada: $resultado");

  //Lista de notas
 print("\nPUNTO 14");

  List<double> notas = [4.0, 3.5, 4.5, 2.8, 3.8];

  print("Notas: $notas");

  double promedio = notas.reduce((a, b) => a + b) / notas.length;

  print("Promedio: $promedio");

  if (promedio >= 3.0) {
    print("El aprendiz aprueba.");
  } else {
    print("El aprendiz no aprueba.");
  }

   // 15. Lista dinámica de información mixta
  print("\nPUNTO 15");

  List<dynamic> informacion = [
  "Liseth",
  18,
  true,
  [10, 20, 30]
];

List<String> nombres = [
  "Nombre",
  "Edad",
  "Estado booleano",
  "Lista"
];
int i = 0;

for (var elemento in informacion) {
  print("${nombres[i]}: $elemento");
  i++;
}
 // 16. Información personal con Map
  print("\nPUNTO 16");

  Map<String, dynamic> persona = {
    "identificacion": "1061986729",
    "nombre": "Liseth",
    "edad": 18,
    "estatura": 1.50
  };

  print("Edad: ${persona["edad"]}");
  print("Estatura: ${persona["estatura"]}");


 // PUNTO 17: Función que retorna un Map
  print("\nPUNTO 17");

  Map<String, int> analizarNumeros(List<int> numeros) {
    if (numeros.isEmpty) {
      throw ArgumentError("La lista no puede estar vacía");
    }

    int mayor = numeros.first;
    int menor = numeros.first;

    for (int numero in numeros) {
      if (numero > mayor) {
        mayor = numero;
      }

      if (numero < menor) {
        menor = numero;
      }
    }

    return {
      "cantidad": numeros.length,
      "mayor": mayor,
      "menor": menor
    };
  }

  List<int> numeros = [10, 25, 5, 40, 15];

  Map<String, int> resultadoNumeros = analizarNumeros(numeros);

  print("Cantidad: ${resultadoNumeros["cantidad"]}");
  print("Número mayor: ${resultadoNumeros["mayor"]}");
  print("Número menor: ${resultadoNumeros["menor"]}");

   print("\nPUNTO 18");

  CuentaBancaria cuenta = CuentaBancaria(100000);

  cuenta.depositar(50000);

  cuenta.depositar(30000);

  cuenta.retirar(20000);

  print("Saldo final: ${cuenta.consultarSaldo()}");

  
}


// Funciones
 int sumar(int n1, int n2) {
    return n1 + n2;
  }

  //punto 18

  class CuentaBancaria {
  double _saldo;

  CuentaBancaria(this._saldo);

  void depositar(double monto) {
    if (monto > 0) {
      _saldo += monto;
      print("Deposito realizado: $monto");
    } else {
      print("El deposito debe ser positivo.");
    }
  }

  void retirar(double monto) {
    if (monto < 0) {
      print("No se permiten retiros negativos.");
    } else if (monto == 0) {
      print("El retiro debe ser mayor que cero.");
    } else if (monto > _saldo) {
      print("Saldo insuficiente.");
    } else {
      _saldo -= monto;
      print("Retiro realizado: $monto");
    }
  }

  double consultarSaldo() {
    return _saldo;
  }
}




 

