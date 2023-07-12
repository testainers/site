import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      primarySwatch: MaterialColor(baseColor.value, <int, Color>{
        50: baseColor,
        100: baseColor,
        200: baseColor,
        300: baseColor,
        400: baseColor,
        500: baseColor,
        600: baseColor,
        700: baseColor,
        800: baseColor,
        900: baseColor,
      }),
      brightness: PlatformDispatcher.instance.platformBrightness,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/testainers-250-transparent.png'),
            Text(
              'testainers',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
