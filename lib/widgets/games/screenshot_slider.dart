import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project179/models/game.dart';

class ScreenshotSlider extends StatefulWidget {
  const ScreenshotSlider({Key? key, required this.game}) : super(key: key);
  final Game game;

  @override
  State<ScreenshotSlider> createState() => _ScreenshotSliderState();
}

class _ScreenshotSliderState extends State<ScreenshotSlider> {
  int currentPosition = 0;

  @override
  Widget build(final BuildContext context) {
    final List<String> imgUrls = widget.game.screenshots
        .map((final e) =>
            "https:${e.url.replaceAll("t_thumb", "t_screenshot_huge")}")
        .toList();

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider.builder(
                itemCount: imgUrls.length,
                itemBuilder: (context, index, _) =>
                    screenshot(context, imgUrls.elementAt(index)),
                options: CarouselOptions(
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPosition = index;
                      });
                    })),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgUrls.map((final url) {
              int index = imgUrls.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPosition == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
    ;
  }
}

Widget screenshot(final BuildContext context, final String imageUrl) {
  return Stack(children: [
    SizedBox(
      child: Center(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: const CircularProgressIndicator()),
      ),
    ),
    Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: const BoxDecoration(color: Colors.amber),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        )),
  ]);
  ;
}
