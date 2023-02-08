import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'First Page',
            onTap: () {
              Navigator.of(context).pushNamed(
                '/first',
                arguments: 'This is first page parameter text--11',
              );
            },
          ),
          CustomButton(
            text: 'Second Page',
            onTap: () {
              Navigator.of(context).pushNamed(
                '/second',
                arguments: 'This is second page parameter text- 2222',
              );
            },
          ),
        ],
      ))),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
      style: ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
    );
  }
}
