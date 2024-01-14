import 'package:flutter/material.dart';

class CustomShapeContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // double sideRadius = 30;
    // double midPoint = size.width * (1 / 2);
    // double cornerRadius = 30;

    path.lineTo(0.0, size.height - 45);
    path.lineTo(size.width / 2.7, size.height - 45);

    var firstcontrolpoint = Offset(size.width / 2.5, size.height - 5);
    var firstpoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstcontrolpoint.dx, firstcontrolpoint.dy,
        firstpoint.dx, firstpoint.dy);

    var secondcontrolpoint = Offset(size.width / 1.6, size.height - 5);
    var secondpoint = Offset(size.width / 1.6, size.height - 45);
    path.quadraticBezierTo(secondcontrolpoint.dx, secondcontrolpoint.dy,
        secondpoint.dx, secondpoint.dy);

    path.lineTo(size.width, size.height - 45);
    path.lineTo(size.width, 0.0);

    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width * .03, size.height);
    // path.quadraticBezierTo(
    //     size.width * .2, size.height * .5, size.width * .03, 0);

    // path.quadraticBezierTo(
    //   midPoint,
    //   size.height + 10,
    //   midPoint - 3,
    //   size.height + 5,
    // );
    // path.quadraticBezierTo(
    //   midPoint,
    //   size.height + 10,
    //   midPoint + 3,
    //   size.height + 5,
    // );

    // path.lineTo(0, size.width - cornerRadius);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
