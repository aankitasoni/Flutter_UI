import 'package:flutter/material.dart';

class SpaceBtw extends StatelessWidget {
  final double? height;
  final double? width;
  const SpaceBtw({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null? height:0.0,
      width: width!= null ? width:0.0,
    );
  }
}
