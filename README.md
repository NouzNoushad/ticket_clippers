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
 <img src="https://github.com/NouzNoushad/ticket_clippers/raw/main/ticket_clippers.jpg" width="400em" />

## Example

```dart
ClipPath(
        clipper: TicketRoundedEdgeClipper(
          edge: Edge.horizontal, // edge can be horizontal, vertical, top, left, right, bottom and all.
          position: 150,
          radius: 25,
        ),
        child: Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
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
      );
```
### CREATED BY
 NOBOMAN
<img src="https://github.com/NouzNoushad/ticket_clippers/raw/main/ticket_clippers.jpg" width="100em" hight="100em"/>