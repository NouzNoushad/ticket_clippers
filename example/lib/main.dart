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
