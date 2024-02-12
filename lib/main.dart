import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

///
///
///
void main() {
  runApp(const Site());
}

///
///
///
class Site extends StatelessWidget {
  final Color baseColor;

  ///
  ///
  ///
  const Site({
    this.baseColor = const Color(0x00ca8ba2),
    super.key,
  });

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    final ThemeData baseTheme = ThemeData(
      colorSchemeSeed: baseColor,
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      title: 'testainers',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(baseTheme.textTheme),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? baseTheme.colorScheme.primary
                    : null,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

///
///
///
class MyHomePage extends StatefulWidget {
  ///
  ///
  ///
  const MyHomePage({super.key});

  ///
  ///
  ///
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00ca8ba2),
      appBar: AppBar(
        title: const Text('testainers'),
        backgroundColor: Colors.black26,
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              'testainers',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/testainers-250-transparent.png',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Testainers is a powerful Dart plugin designed to streamline '
                          'the management of containers for testing purposes.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'With Testainers, developers can effortlessly create, '
                          'configure, and manage isolated test environments within '
                          'containers, ensuring consistent and reliable testing '
                          'processes.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /// Pub.dev
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () =>
                        launchUrlString('https://pub.dev/packages/testainers'),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/icons/dart.png', height: 16),
                        const SizedBox(width: 8),
                        const Text('pub.dev'),
                      ],
                    ),
                  ),
                ),

                /// Github
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () =>
                        launchUrlString('https://github.com/testainers'),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/icons/github.png', height: 16),
                        const SizedBox(width: 8),
                        const Text('GitHub'),
                      ],
                    ),
                  ),
                ),

                /// Docker Hub
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () => launchUrlString(
                      'https://hub.docker.com/u/testainers',
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/icons/docker.png', height: 16),
                        const SizedBox(width: 8),
                        const Text('Docker Hub'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
