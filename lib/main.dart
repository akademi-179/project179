import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project179/screens/app_menu.dart';
import 'package:project179/screens/games/games.dart';
import 'package:project179/screens/intro_page.dart';
import 'package:project179/screens/notices/notices_home.dart';
import 'package:project179/screens/players/profile_edit.dart';
import 'package:project179/screens/players/profile_view.dart';
import 'package:project179/screens/sponsors/sponsors.dart';
import 'package:project179/screens/teams/find_team.dart';
import 'package:project179/screens/teams/my_teams.dart';
import 'package:project179/screens/teams/teams_home.dart';
import 'package:project179/screens/tournaments/tournaments.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final tercihler = await SharedPreferences.getInstance();
  final gitAnaSayfa = tercihler.getBool('gitAnasayfa') ?? false;
  runApp(MyApp(gitAnaSayfa: gitAnaSayfa));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final bool gitAnaSayfa;

  MyApp({
    Key? key,
    required this.gitAnaSayfa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // TO DO: Don't forget to remove it before releasing the app.
        theme: ThemeData(
            //
            primarySwatch: Colors.blue,
            dividerColor: Colors.black),
        initialRoute: '/',
        routes: {
          '/screens/intro_page.dart': (context) => IntroPage(),
          '/app_menu': (context) => AppMenu(),
          '/players': (context) => ProfileView(),
          '/players/edit': (context) => ProfileEdit(),
          '/teams': (context) => TeamProfile(),
          '/teams/my_teams': (context) => MyTeams(),
          '/teams/find_team': (context) => FindTeam(),
          '/sponsors': (context) => Sponsors(),
          '/notices': (context) => Notices(),
          '/games': (context) => Games(),
          '/tournaments': (context) => Tournaments(),
        },
        home: gitAnaSayfa
            ? FutureBuilder(
                future: _fbApp,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print('You have an error! ${snapshot.error.toString()}');
                    return Text('Something went wrong! ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return MyHomePage(
                        title: 'Flutter Demo Home Page',
                        data: snapshot.data.toString());
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )
            : IntroPage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.data})
      : super(key: key);

  final String title;
  final String data;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //
          //
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Firebase is connected: ${widget.data}"),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text("Auth or Not Auth user will be directed to App Menu"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/app_menu');
              },
              child: Text("App Page"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screens/intro_page.dart');
                },
                child: Text("Intro Menu")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
