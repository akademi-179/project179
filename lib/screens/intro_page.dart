import 'package:flutter/material.dart';
import 'package:project179/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introController = PageController(initialPage: 0);
  bool sonSayfa = false;
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
          onPageChanged: (index) {
            setState(() => sonSayfa = (index) == 2);
          },
          children: [
            singlePage(
                backgroundColor: Colors.blueAccent,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: "E-Spor'da Kariyer",
                richText:
                    'Amatör veya Profesyonel fark etmeksizin bütün e-sporcular için çeşitli kariyer imkanları.'),
            singlePage(
                backgroundColor: Colors.orange,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: 'Takımlar ve Sponsorlar',
                richText:
                    'Bir takım oluşturabilir ya da mevcut bir takıma katılabilir, sponsorlarla anlaşma sağlayabilirsin.'),
            singlePage(
                backgroundColor: Colors.blueGrey,
                imgUrl: 'assets/images/akademi.png',
                pageTitle: 'Profiller ve Sosyalleşme',
                richText:
                    'Hemen bir profil oluşturup diğer platformlardaki hesaplarını bağlayabilirsin.'),
          ],
        ),
      ),
      bottomSheet: sonSayfa
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  primary: Colors.black,
                  backgroundColor: Colors.blue,
                  minimumSize: const Size.fromHeight(100)),
              onPressed: () async {
                final introTercihler = await SharedPreferences.getInstance();
                introTercihler.setBool('gitAnaSayfa', true);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                        title: 'Flutter Demo Home Page', data: 'Test')));
              },
              child: Text(
                'BAŞLA !',
                style: TextStyle(fontSize: 24),
              ))
          : Container(
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
                        textAlign: TextAlign.center,
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: introController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          spacing: 15,
                          dotColor: Colors.black,
                          activeDotColor: Colors.amber),
                      onDotClicked: (index) => introController.animateToPage(
                          index,
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
                      child: const Text(
                        'DEVAM ET',
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            ),
    );
  }

  Widget singlePage({
    required final Color backgroundColor,
    required final String imgUrl,
    required final String pageTitle,
    required final String richText,
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
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                richText,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      );
}
