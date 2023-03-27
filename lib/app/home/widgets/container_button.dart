import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String titleButton;
  final bool valueButton;
  final VoidCallback oculteCommunity;
  final bool isOculteCommunity;

  const ContainerButton({
    super.key,
    required this.titleButton,
    required this.valueButton,
    required this.oculteCommunity,
    required this.isOculteCommunity,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.amber),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text(titleButton)),
                  Radio(
                    value: valueButton,
                    groupValue: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              const Text(
                  'aSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGAaSDIFGYYDFGA'),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: oculteCommunity,
                          child: const Text('Ocultar Comunidade'))),
                  Switch(
                    value: isOculteCommunity,
                    onChanged: (value) {},
                  )
                ],
              )
            ],
          ),
        ),
      );
}
