import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eligibility_textfield/providers/textfield_provider.dart';
import 'package:provider_eligibility_textfield/screens/home_screen.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
    ChangeNotifierProvider<TextFieldProvider>(create: (context)=> TextFieldProvider())
    ], 
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),);
  }
}
