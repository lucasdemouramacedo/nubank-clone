import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_ui/pages/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //Faz com que os icones do celular (hora, bateria) fiquei em branco
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Faz com que não apraceça o selo de Debug
      title: 'Nubank Design Inspiration', // Titulo da Aplicação
      theme: ThemeData(
        primarySwatch: Colors.purple, //Define a cor de fundo do app
      ),
      home: HomePage(), //Chama a página definida como a Home do app
    );
  }
}
