import 'package:flutter/material.dart';

class TicketShadowPainter extends CustomPainter {
  TicketShadowPainter({
    required this.clipper,
    required this.borderRadius,
    this.shadow
  });

  final CustomClipper<Path> clipper;
  final BoxShadow? shadow;
  final double borderRadius;
  @override
  void paint(Canvas canvas, Size size) {
      var h = size.height;
      var w = size.width;
      Offset centerOffset = Offset(w * 0.5, h * 0.5);
      if(shadow != null){
        final paint = shadow!.toPaint();
        final spreadRadius = shadow!.spreadRadius;
        final shadowOffset = shadow!.offset;

        final spreadSize = Size(w + spreadRadius * 2, h + spreadRadius * 2);
        final clipPath = clipper.getClip(spreadSize).shift(
          Offset(shadowOffset.dx - spreadRadius, shadowOffset.dy - spreadRadius),
        );
        Offset offset = Offset(shadowOffset.dx - spreadRadius, shadowOffset.dy - spreadRadius);

        canvas.clipPath(clipPath);
        canvas.drawPath(Path()..addRRect(RRect.fromRectAndRadius(Rect.fromCenter(center:Offset(
          centerOffset.dx + offset.dx, centerOffset.dy + offset.dy,
        ), width: w, height: h), Radius.circular(borderRadius))), paint);
      }else{
        canvas.drawPath(clipper.getClip(size), Paint()..color=Colors.transparent);
      }
      
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}