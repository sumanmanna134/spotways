

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:spotways/api_manager/api_services.dart';
import 'package:spotways/screens/HomePage.dart';
import 'package:spotways/screens/mainpage.dart';
import 'package:spotways/utils/utils.dart';

void main() async {
  

  WidgetsFlutterBinding.ensureInitialized();
  await DotEnv.load();
  runApp(MyApp());

  
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpotWays',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


