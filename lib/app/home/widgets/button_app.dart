import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final String titleButton;
  final bool valueButton;

  const ButtonApp({
    super.key,
    required this.titleButton,
    required this.valueButton,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: 80,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.amber),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Text(titleButton)),
              Radio(
                value: valueButton,
                groupValue: true,
                onChanged: (value) {},
              )
            ],
          ),
        ),
      );
}
