import 'package:bnb_bloc/Presentations/Routes/generated_routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter App",
    theme: ThemeData(primarySwatch: Colors.teal),
    initialRoute: '/',
    onGenerateRoute: RouteGenerator().generatedRoutes
    );
  }
}
