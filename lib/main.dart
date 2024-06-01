// ignore_for_file: no_adjacent_strings_in_list

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site/button_widget.dart';
import 'package:site/description_widget.dart';
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              /// Global
              /// Github
              // ButtonWidget(
              //   label: 'GitHub',
              //   iconName: 'github',
              //   url: 'https://github.com/testainers/testainers',
              // ),

              /// Docker Hub
              // ButtonWidget(
              //   label: 'Docker Hub',
              //   iconName: 'docker',
              //   url: 'https://hub.docker.com/u/testainers',
              // ),

              /// testainers
              HeaderWidget('testainers'),
              DescriptionWidget(
                imageName: 'testainers-250-transparent',
                paragraphs: <String>[
                  'Testainers is a powerful Dart plugin designed to '
                      'streamline the management of containers for testing '
                      'purposes.',
                  'With Testainers, developers can effortlessly create, '
                      'configure, and manage isolated test environments '
                      'within containers, ensuring consistent and reliable '
                      'testing processes.',
                ],
              ),
              Row(
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
                    url: 'https://github.com/testainers/testainers',
                  ),

                  /// Web
                  // TODO(edufolly): https://testainers.testainers.com/
                ],
              ),
              SizedBox(height: 36),

              /// httpbucket
              HeaderWidget('httpbucket'),
              DescriptionWidget(
                imageName: 'testainers-250-transparent',
                paragraphs: <String>[
                  'httpucket is a powerful microservice designed specifically '
                      'for testing HTTP requests with a wide range of request '
                      'URLs. It serves as a valuable tool for developers, '
                      'quality assurance teams, and anyone involved in API '
                      'development. By providing a flexible and user-friendly '
                      'interface, HTTPBucket simplifies the process of testing '
                      'and validating various types of HTTP requests.',
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Github
                  ButtonWidget(
                    label: 'GitHub',
                    iconName: 'github',
                    url: 'https://github.com/testainers/httpbucket',
                  ),

                  /// Docker Hub
                  ButtonWidget(
                    label: 'Docker Hub',
                    iconName: 'docker',
                    url: 'https://hub.docker.com/r/testainers/httpbucket',
                  ),

                  /// Web
                  // TODO(edufolly): https://httpbucket.testainers.com/
                ],
              ),
              SizedBox(height: 36),

              /// sshd-container
              HeaderWidget('sshd-container'),
              DescriptionWidget(
                imageName: 'testainers-250-transparent',
                paragraphs: <String>[
                  'The small container image is designed specifically for '
                      'testing SSH connections.',
                  'It serves as a lightweight and efficient tool to verify '
                      'and troubleshoot SSH connectivity in various scenarios. '
                      'With its compact size, the container can be easily '
                      'deployed and run on different systems or platforms '
                      'without consuming excessive resources.',
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Github
                  ButtonWidget(
                    label: 'GitHub',
                    iconName: 'github',
                    url: 'https://github.com/testainers/sshd-container',
                  ),

                  /// Docker Hub
                  ButtonWidget(
                    label: 'Docker Hub',
                    iconName: 'docker',
                    url: 'https://hub.docker.com/r/testainers/sshd-container',
                  ),

                  /// Web
                  // TODO(edufolly): Create web page
                ],
              ),
              SizedBox(height: 36),

              /// snmpd-container
              HeaderWidget('snmpd-container'),
              DescriptionWidget(
                imageName: 'testainers-250-transparent',
                paragraphs: <String>[
                  'The small container image is designed specifically for '
                      'testing SNMP connections.',
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Github
                  ButtonWidget(
                    label: 'GitHub',
                    iconName: 'github',
                    url: 'https://github.com/testainers/snmpd-container',
                  ),

                  /// Docker Hub
                  ButtonWidget(
                    label: 'Docker Hub',
                    iconName: 'docker',
                    url: 'https://hub.docker.com/r/testainers/snmpd-container',
                  ),

                  /// Web
                  // TODO(edufolly): Create web page
                ],
              ),
              SizedBox(height: 36),

              /// check
              HeaderWidget('check'),
              DescriptionWidget(
                imageName: 'testainers-250-transparent',
                paragraphs: <String>[
                  'Our CLI HTTP Request tool engineered to simplify and '
                      'expedite your web interactions. With its user-friendly '
                      'commands and comprehensive features, Check empowers '
                      'users to seamlessly navigate HTTP requests for tasks '
                      'like API testing, data retrieval, and web development. '
                      'Say farewell to cumbersome setups and clunky '
                      'interfaces; Check prioritizes intuitive usability '
                      'without sacrificing functionality. Whether you are a '
                      'seasoned developer or just dipping your toes into web '
                      'technologies, Check is your dependable companion for '
                      'confidently mastering the intricacies of web requests.',
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /// Github
                  ButtonWidget(
                    label: 'GitHub',
                    iconName: 'github',
                    url: 'https://github.com/testainers/check',
                  ),

                  /// Web
                  // TODO(edufolly): https://check.testainers.com/
                ],
              ),
              SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }
}
