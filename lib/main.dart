import 'package:apppelican_3_flutter/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// https://pelicanapp-api-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/api/books
// https://pelicanapp-api-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/api/articles
// https://pelicanapp-api-dev.thankfulbay-7553abc3.westeurope.azurecontainerapps.io/api/Podcasts

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//statusbar and navigation bar color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 41, 47, 54),
      systemNavigationBarColor: Color.fromARGB(255, 41, 47, 54),
      statusBarBrightness: Brightness.dark,
    ),
  );

  //block orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
      ),
      title: 'Pelican App',
      home: const MainScreen(),
    );
  }
}
