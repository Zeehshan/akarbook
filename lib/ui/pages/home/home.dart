import 'package:akarbook/painter_example.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(
            size: Size(100,WIDTH),
            painter: CurvePainter(),
          ),
        ),
        CustomPaint(
          painter: CurvePainter(),
        ),
        HomePage()
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromRGBO(0, 34, 71, 1.0)
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
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}