import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final borderFocused = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 100, 214, 42), // green border when focused
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    );

    final borderenabled = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 0, 0, 0), // green border when focused
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    );

    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.black87,
              child: const Text(
                'Currency Converter',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the Amount',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: const Color.fromARGB(41, 255, 255, 255),
                  enabledBorder: borderenabled,
                  focusedBorder: borderFocused,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print('button was clicked');
                }
              },
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
