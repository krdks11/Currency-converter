import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPage();
}

class _CurrencyConverterCupertinoPage
    extends State<CurrencyConverterCupertinoPage> {
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
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 255, 208, 0),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeGreen,
        middle: Text(
          'Currency Coverter',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
              fontSize: 30),
        ),
      ),
      child: Center(
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
                  const Text(
                    '₹', // Use rupee icon
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                placeholder: 'Enter the Amount',
                prefix: Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(40.0),
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              onPressed: convert,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Text(
                'Convert',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
