import 'package:bnb_bloc/Business_logic/counter/counter_bloc.dart';
import 'package:bnb_bloc/Presentations/Routes/generated_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Business_logic/switch_animation/switch_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),
        BlocProvider<SwicthBloc>(create: (BuildContext context) => SwicthBloc()),
      ],
      child: MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.teal),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator().generatedRoutes,
      ),
    );
  }
}
