import 'package:flutter/material.dart';

class AppMenuRouteButtons extends StatefulWidget {
  const AppMenuRouteButtons({Key? key}) : super(key: key);

  @override
  State<AppMenuRouteButtons> createState() => _AppMenuRouteButtonsState();
}

class _AppMenuRouteButtonsState extends State<AppMenuRouteButtons> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: renderRouteButtons(context, routeButtonProps),
    );
  }
}

List<Map> routeButtonProps = [
  {
    "name": "My Profile",
    "route": "/players",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2012/04/26/19/43/profile-42914_960_720.png"
  },
  {
    "name": "Teams",
    "route": "/teams",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2016/09/01/17/18/profile-1636642_960_720.png"
  },
  {
    "name": "Sponsors",
    "route": "/sponsors",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2017/06/08/20/18/computer-icon-2384752_960_720.png"
  },
  {
    "name": "Games",
    "route": "/games",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2016/10/30/23/05/controller-1784573_960_720.png"
  },
  {
    "name": "Tournaments",
    "route": "/tournaments",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2020/12/15/16/06/win-5834110_960_720.png"
  },
  {
    "name": "Career",
    "route": "/notices",
    "backgroundImg":
        "https://cdn.pixabay.com/photo/2017/01/13/01/22/magnifying-glass-1976105_960_720.png"
  },
];

List<Widget> renderRouteButtons(
    BuildContext context, List<Map> routeButtonProps) {
  return [
    ...routeButtonProps.map((e) =>
        _routeButtons(context, e['route'], e['name'], e['backgroundImg']))
  ];
}

Widget _routeButtons(BuildContext context, route, name, backgroundImg) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: Container(
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      width: 160,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: NetworkImage(backgroundImg),
              fit: BoxFit.cover,
              opacity: 0.5)),
    ),
  );
}
