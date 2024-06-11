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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)),
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
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            Align(
              child: TicketClipper(
                clipper: TicketRoundedEdgeClipper(
                  edge: Edge.horizontal,
                  position: 150,
                  radius: 25,
                ),
                shadowRadius: ShadowRadius.circular(20),
                shadow: const BoxShadow(
                  color: Color.fromARGB(255, 4, 234, 250),
                  offset: Offset(12, 12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 300,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 0, 85)),
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                      child: Text(
                        'Ticket Rounded Clipper',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
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
              child: TicketClipper(
                clipper: RoundedEdgeClipper(
                  edge: Edge.horizontal,
                  points: 5,
                  depth: 20,
                ),
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: const BoxDecoration(color: Colors.purple),
                  child: const Center(
                    child: Text(
                      'Rounded Edge Clipper',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
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
              child: TicketClipper(
                clipper: PointedEdgeClipper(
                  edge: Edge.horizontal,
                  points: 10,
                  depth: 10,
                ),
                shadow: const BoxShadow(
                  color: Colors.yellowAccent,
                  offset: Offset(10, 10),
                ),
                shadowRadius: ShadowRadius.circular(20),
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Pointed Edge Clipper',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
