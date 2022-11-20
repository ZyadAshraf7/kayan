import 'package:flutter/material.dart';
import 'package:kayan/providers/information_registiration_controller.dart';
import 'package:kayan/ui/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>InformationRegistirationController()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  SplashScreen(),
        ),
      ),
    );
  }
}

