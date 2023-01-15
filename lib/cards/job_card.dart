import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JobCard extends StatelessWidget {
  final color;

  const JobCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
