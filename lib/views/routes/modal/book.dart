import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/views/widgets/button/button.dart';
import 'package:explore_mundo/views/widgets/input/input.dart';
import 'package:flutter/material.dart';

class BookModal extends StatelessWidget {
  const BookModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Typo.BodyBold('Preencha os dados para sua reserva'),
                  const SizedBox(
                    height: 12,
                  ),
                  const Input(
                    'Nome',
                    prefixIcon: Icon(Icons.person_rounded),
                  ),
                  const Input(
                    'E-mail',
                    prefixIcon: Icon(Icons.mail),
                  ),
                ],
              ),
              Button('Reservar', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
