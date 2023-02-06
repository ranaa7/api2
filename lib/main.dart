


import 'package:api2/cubit/cubitclass_cubit.dart';
import 'package:api2/provider/weather_provider.dart';
import 'package:api2/view/screens/Post_screen.dart';
import 'package:api2/view/screens/homescreen.dart';
import 'package:api2/view/screens/post_screen2.dart';
import 'package:api2/view/screens/weatherscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';



void main() {
  // runApp(MultiBlocProvider(providers: [           llcubit bs e7na hnsh3'l delw2ty weather screen ely 3mlnha b el provider
  //   BlocProvider(create: (context)=> classCubit())
  // ], child: MyApp(), ));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Weatherprovider()),
      ],


    child: MyApp(),
  ));
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Weatherscreen(),
    );
  }
}

