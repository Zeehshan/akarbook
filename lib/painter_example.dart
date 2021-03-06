
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final WIDTH = Get.width;
Widget paint =
CustomPaint(
// size: Size(100,WIDTH), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
);

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    // path_0.moveTo(size.width*0.0,size.height*0.00);
    path_0.lineTo(size.width,size.height*0.00);
    path_0.lineTo(size.width,size.height*0.3980000);
    path_0.lineTo(size.width*0.0,size.height*0.5960000);
    path_0.lineTo(size.width*0.0,size.height*0.1000000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint_0 = new Paint()
//       ..color = Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 10;
//
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width*.1850000,size.height*0.1000000);
//     path_0.lineTo(size.width*0.1850000,size.height*0.7000000);
//     path_0.lineTo(size.width*0.5600000,size.height*0.4040000);
//     path_0.lineTo(size.width*0.5600000,size.height*0.0980000);
//     path_0.lineTo(size.width*0.1862500,size.height*0.1000000);
//     path_0.close();
//
//     canvas.drawPath(path_0, paint_0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter({this.strokeColor = Colors.black, this.strokeWidth = 3, this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x, y)
      ..lineTo(0, y/100)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}


