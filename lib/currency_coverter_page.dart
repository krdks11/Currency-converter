import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrrencyConverterMaterialPageState();
  }
}

class _CurrrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(
      () {
        result = double.parse(textEditingController.text) *
            86.54; //as of 20/1/2025 rate
      },
    );
  }

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
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
          'Currency Coverter',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centers the content
                children: [
                  const Icon(
                    Icons.currency_rupee, // Use rupee icon
                    size: 35,
                    color: Color.fromARGB(255, 255, 255, 255),
                    weight: 1,
                  ),
                  Text(
                    result != 0
                        ? result.toStringAsFixed(3)
                        : result.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: convert,
              style: ElevatedButton.styleFrom(
                elevation: (15),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Colors.white,
                fixedSize: (Size(150, 50)),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
