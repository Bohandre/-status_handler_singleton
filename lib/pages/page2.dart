import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              textButton: 'Establecer Usuario',
              onPressed: () {},
            ),
            CustomButton(
              textButton: 'Cambiar Edad',
              onPressed: () {},
            ),
            CustomButton(
              textButton: 'Añadir Profesión',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String textButton;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    required this.textButton,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.blue,
      child: Text(
        textButton,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
