class RoundedEdgesMessageBoxPainter extends CustomPainter {
  Color color;
  MyPainter({@required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    var path = Path();
    final double startPoint = size.width * 0.2;
    final double rheight = 30;
    path.moveTo(startPoint, rheight);
    path.lineTo(startPoint + 20, 5);
    path.cubicTo(startPoint + 23, 0, startPoint + 26, 0,
      startPoint + 29, 0);
    path.lineTo(startPoint + 50, rheight);
    path.moveTo(10, rheight);
    path.lineTo(startPoint, rheight);
    path.moveTo(startPoint + 50, rheight);
    path.lineTo(size.width - 10, rheight);
    path.cubicTo(size.width, rheight + 5, size.width, rheight + 10,
        size.width, rheight + 15);
    path.lineTo(size.width, size.height - 15);
    path.moveTo(10, rheight);
    path.cubicTo(0, rheight + 5, 0, rheight + 10,
        0, rheight + 15);
    path.lineTo(0, size.height - 10);
    path.cubicTo(5, size.height, 10, size.height,
        15, size.height);
    path.moveTo(15, size.height);
    path.lineTo(size.width - 10, size.height);
    path.cubicTo(size.width, size.height - 5, size.width, size.height - 10,
        size.width, size.height - 15);
    path.moveTo(size.width - 5, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
