import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, '4000 +', 'Oyun Süresi'),
            buildDivider(),
            buildButton(context, '15', 'Takipçi'),
            buildDivider(),
            buildButton(context, '3', 'Başarılar'),
          ],
        ),
      );

  Widget buildButton(
          BuildContext context, String numbers, String explanation) =>
      MaterialButton(
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              numbers,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 2),
            Text(
              explanation,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2)
          ],
        ),
      );

  Widget buildDivider() => Container(height: 24, child: VerticalDivider());
}
