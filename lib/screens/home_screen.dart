import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_eligibility_textfield/providers/textfield_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer<TextFieldProvider>(
              builder: ((context, value, child) => Text(
                    value.eligibilityMessage.toString(),
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ))),
          TextField(
            decoration: InputDecoration(hintText: "Enter your age"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              Provider.of<TextFieldProvider>(context, listen: false)
                  .testeligibility(int.parse(value));
            },
          )
        ],
      ),
    );
  }
}
