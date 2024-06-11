Flutter package that provides you clippers to create tickets.

## Getting started

To use this plugin, add ticket_clippers as a [dependency in your pubspec.yaml file](https://flutter.io/docs/development/packages-and-plugins/using-packages).
```dart
dependencies:
  ticket_clippers: 
```

## Import

```dart
import 'package:ticket_clippers/ticket_clippers.dart';
```

## Screenshots
 <img src="https://raw.github.com/NouzNoushad/ticket_clippers/main/screenshot.png" width="300em" />

## Example

```dart
TicketClipper(
  clipper: TicketRoundedEdgeClipper(
      edge: Edge.horizontal,
      position: 150,
      radius: 25,
    ),
    shadowRadius: ShadowRadius.circular(20),
    shadow:  const BoxShadow(
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
```
### CREATED BY
```
 NOBOMAN
```
<img src="https://raw.github.com/NouzNoushad/ticket_clippers/main/noboman.jpg" width="100em" hight="100em"/>


