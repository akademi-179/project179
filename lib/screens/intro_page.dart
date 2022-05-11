import 'package:flutter/material.dart';
import 'package:project179/main.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introController = PageController();
  @override
  void dispose() {
    introController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 100),
        child: PageView(
          controller: introController,
          children: [
            Container(
              child: const Center(
                child: Text('Ilk Sayfa'),
              ),
              color: Colors.blue,
            ),
            Container(
              child: Text('Ikinci Sayfa'),
              color: Colors.purple,
            ),
            Container(
              child: Text('Son Sayfa'),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: const Text('Tanıtımı Atla...')),
            TextButton(onPressed: () {}, child: const Text('Devam Et'))
          ],
        ),
      ),
    );
  }
}
