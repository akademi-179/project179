import 'package:flutter/material.dart';
import 'package:project179/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introController = PageController(initialPage: 0);
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
            singlePage(
                backgroundColor: Colors.blueAccent,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: "E-Spor'da Kariyer",
                richText:
                    'Amatör veya Profesyonel fark etmeksizin bütün e-sporcular için çeşitli kariyer imkanları.'),
            singlePage(
                backgroundColor: Colors.purple,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: 'Takımlar ve Sponsorlar',
                richText:
                    'Bir takım oluşturabilir ya da katılabilir, sponsorlarla anlaşma sağlayabilirsin.'),
            singlePage(
                backgroundColor: Colors.deepPurple,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: 'Profiller ve Sosyalleşme',
                richText:
                    'Hemen bir profil oluşturup diğer platformlardaki hesaplarını bağlayabilirsin.'),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  introController.jumpToPage(2);
                },
                child: const Text(
                  'ATLA...',
                )),
            Center(
              child: SmoothPageIndicator(
                controller: introController,
                count: 3,
                effect: ExpandingDotsEffect(
                    spacing: 15,
                    dotColor: Colors.black,
                    activeDotColor: Colors.amber),
                onDotClicked: (index) => introController.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn),
              ),
            ),
            TextButton(
                onPressed: () {
                  introController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                child: const Text('DEVAM ET'))
          ],
        ),
      ),
    );
  }

  Widget singlePage({
    required Color backgroundColor,
    required String imgUrl,
    required String pageTitle,
    required String richText,
  }) =>
      Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              pageTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                richText,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      );
}

// TODO Kendime not 
//https://www.youtube.com/watch?v=AmsXazhGMQ0
// 2:15'te kaldım