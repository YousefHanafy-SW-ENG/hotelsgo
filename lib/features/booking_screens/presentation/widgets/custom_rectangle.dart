// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1
//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 255, 255, 255)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//     double scaleFactor = 3; // Adjust the scale factor as needed
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.3733333 * scaleFactor, size.height * 0.3614286 * scaleFactor);
//     path_0.lineTo(size.width * 0.3741667 * scaleFactor, size.height * 0.6442857 * scaleFactor);
//     path_0.lineTo(size.width * 0.7950000 * scaleFactor, size.height * 0.6428571 * scaleFactor);
//     path_0.lineTo(size.width * 0.6650000 * scaleFactor, size.height * 0.3642857 * scaleFactor);
//
//     canvas.drawPath(path_0, paint_fill_0);
//
//     // Layer 1
//     Paint paint_stroke_0 = Paint()
//       ..color = Colors.lightBlue
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//     canvas.drawPath(path_0, paint_stroke_0);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app-color.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = AppColors.searchColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    double scaleFactor = 2;

    Path path_0 = Path();
    path_0.moveTo(size.width*0.3316667*scaleFactor,size.height*0.4328571*scaleFactor);
    path_0.lineTo(size.width*0.3316667*scaleFactor,size.height*0.7200000*scaleFactor);
    path_0.lineTo(size.width*0.8750000*scaleFactor,size.height*0.7185714*scaleFactor);
    path_0.lineTo(size.width*0.6633333*scaleFactor,size.height*0.4371429*scaleFactor);

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = AppColors.searchColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RPSCustomPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    double scaleFactor = 2;

    Path path_0 = Path();
    path_0.moveTo(size.width*0.3316667*scaleFactor,size.height*0.4328571*scaleFactor);
    path_0.lineTo(size.width*0.3316667*scaleFactor,size.height*0.7200000*scaleFactor);
    path_0.lineTo(size.width*0.8750000*scaleFactor,size.height*0.7185714*scaleFactor);
    path_0.lineTo(size.width*0.6633333*scaleFactor,size.height*0.4371429*scaleFactor);

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
