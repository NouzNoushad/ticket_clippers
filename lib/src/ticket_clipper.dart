import 'package:flutter/material.dart';
import 'ticket_painter.dart';

class TicketClipper extends StatelessWidget {
  const TicketClipper({super.key,required this.clipper, this.shadow, required this.child,
  this.shadowRadius = 0.0});
  /// - [TicketRoundedEdgeClipper] that can be used with [ClipPath] to clip widget in Ticket Rounded Edge shape
  /// - [PointedEdgeClipper] that can be used with [ClipPath] to clip widget in Pointed Edge shape
  /// - [RoundedEdgeClipper] that can be used with [ClipPath] to clip widget in Rounded Edge shape
  final CustomClipper<Path> clipper;
  /// child: [Widget]
  final Widget child;
  /// shadows: [BoxShadow?]
  final BoxShadow? shadow;
  /// borderRadius: If non-null, the corners of this box shadow are rounded by this [BorderRadius]
  final double shadowRadius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TicketShadowPainter(
        clipper: clipper,
        shadow: shadow,
        borderRadius: shadowRadius,
      ),
      child: ClipPath(
        clipper: clipper,
        child: child),
    );
  }
}