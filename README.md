<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter package that provides you clippers to create tickets.

## Getting started

To use this plugin, add flutter_custom_clippers as a [dependency in your pubspec.yaml file](https://flutter.io/docs/development/packages-and-plugins/using-packages).

## Example

```dart
import 'package:flutter/material.dart';
import 'package:ticket_clippers/ticket_clippers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MyTicketClipper(),
    );
  }
}

class MyTicketClipper extends StatelessWidget {
  const MyTicketClipper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Align(
            child: ClipPath(
              clipper: TicketRoundedEdgeClipper(
                edge: Edge.horizontal,
                position: 150,
                radius: 25,
              ),
              child: Container(
                height: 300,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const Center(
                  child: Text(
                    'Ticket Rounded Clipper',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            child: ClipPath(
              clipper: RoundedEdgeClipper(
                edge: Edge.horizontal,
                points: 5,
                depth: 20,
              ),
              child: Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(
                  child: Text(
                    'Rounded Edge Clipper',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            child: ClipPath(
              clipper: PointedEdgeClipper(
                edge: Edge.horizontal,
                points: 10,
                depth: 10,
              ),
              child: Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(
                  child: Text(
                    'Pointed Edge Clipper',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```
