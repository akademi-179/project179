import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final bool isEdit;

  const ProfileWidget(
      {Key? key,
      required this.imagePath,
      required this.onClicked,
      this.isEdit = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(children: [
        buildImage(),
        Positioned(bottom: 0, right: 4, child: buildEditIcon(Colors.amber))
      ]),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
            image: image,
            fit: BoxFit.cover,
            width: 128,
            height: 128,
            child: InkWell(
              onTap: onClicked,
            )),
      ),
    );
  }

  Widget buildEditIcon(MaterialColor amber) => BuildCircle(
        Color: Colors.white,
        all: 3,
        child: BuildCircle(
            Color: Colors.amber,
            all: 8,
            child: Icon(
              isEdit ? Icons.add_a_photo : Icons.edit,
              size: 20,
              color: Colors.white,
            )),
      );
}

Widget BuildCircle({
  required Widget child,
  required double all,
  required Color,
}) =>
    ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: Color,
        child: child,
      ),
    );
