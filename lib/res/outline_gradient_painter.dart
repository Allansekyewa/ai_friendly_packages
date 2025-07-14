// Add the custom painter for gradient outline
import 'dart:ui';

import 'package:flutter/material.dart';

class GradientOutlinePainter extends CustomPainter {
  final BorderRadius borderRadius;
  final double strokeWidth;
  final Gradient gradient;

  GradientOutlinePainter({
    required this.borderRadius,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = borderRadius.toRRect(rect).deflate(strokeWidth / 2);
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Add the custom painter for gradient dashed outline
class GradientDashedOutlinePainter extends CustomPainter {
  final BorderRadius borderRadius;
  final double strokeWidth;
  final Gradient gradient;
  final List<double> dashPattern;

  GradientDashedOutlinePainter({
    required this.borderRadius,
    required this.strokeWidth,
    required this.gradient,
    required this.dashPattern,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = borderRadius.toRRect(rect).deflate(strokeWidth / 2);
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final path = Path()..addRRect(rrect);
    _drawDashedPath(canvas, path, paint, dashPattern);
  }

  void _drawDashedPath(Canvas canvas, Path path, Paint paint, List<double> dashPattern) {
    final PathMetrics metrics = path.computeMetrics();
    for (final PathMetric metric in metrics) {
      double distance = 0.0;
      int index = 0;
      while (distance < metric.length) {
        final double len = dashPattern[index % dashPattern.length];
        final bool isDraw = index % 2 == 0;
        final double next = distance + len;
        if (isDraw) {
          final Path extractPath = metric.extractPath(distance, next.clamp(0.0, metric.length));
          canvas.drawPath(extractPath, paint);
        }
        distance = next;
        index++;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
