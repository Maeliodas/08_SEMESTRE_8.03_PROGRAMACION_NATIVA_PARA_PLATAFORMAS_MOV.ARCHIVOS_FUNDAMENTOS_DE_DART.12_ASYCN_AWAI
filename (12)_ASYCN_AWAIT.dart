void main() async{ //para quitar la instancia de funcion debemos indicarle el async y el await 
  print('Inicio del programa'); 
  try { 
    final value = await httpGet('http://api.victor.dev'); //Una forma es agregando el .then otra forma es usando funciones async y await 
    print(value);
  } catch(err) { 
    print('Error: $err');
  } 
    print('Fin del programa'); 
}
Future<String> httpGet(String url) async{ //significa lo mismo que en js al añadir async 
  await Future.delayed(const Duration(seconds: 2)); 
  throw 'Error en la petición'; 
  //return 'Tenemos un valor'; 
}