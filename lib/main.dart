import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site/button_widget.dart';
import 'package:site/header_widget.dart';

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
  ///
  ///
  ///
  const Site({super.key});

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    final ThemeData baseTheme = ThemeData(
      colorSchemeSeed: const Color(0xffca8ba2),
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      title: 'testainers',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(baseTheme.textTheme),
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
      backgroundColor: const Color(0xffca8ba2),
      appBar: AppBar(
        title: const Text('testainers'),
        backgroundColor: Colors.black26,
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              /// testainers
              const HeaderWidget('testainers'),
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
                            'Testainers is a powerful Dart plugin '
                            'designed to streamline the management of containers '
                            'for testing purposes.',
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
                            'With Testainers, developers can effortlessly '
                            'create, configure, and manage isolated test '
                            'environments within containers, ensuring consistent '
                            'and reliable testing processes.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Pub.dev
                  ButtonWidget(
                    label: 'pub.dev',
                    iconName: 'dart',
                    url: 'https://pub.dev/packages/testainers',
                  ),

                  /// Github
                  ButtonWidget(
                    label: 'GitHub',
                    iconName: 'github',
                    url: 'https://github.com/testainers',
                  ),

                  /// Docker Hub
                  ButtonWidget(
                    label: 'Docker Hub',
                    iconName: 'docker',
                    url: 'https://hub.docker.com/u/testainers',
                  ),
                ],
              ),

              /// httpbucket
              const SizedBox(height: 16),
              const HeaderWidget('httpbucket'),

              /// sshd-container
              const SizedBox(height: 16),
              const HeaderWidget('sshd-container'),

              /// snmpd-container
              const SizedBox(height: 16),
              const HeaderWidget('snmpd-container'),

              /// check
              const SizedBox(height: 16),
              const HeaderWidget('check'),

              /// Footer
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
