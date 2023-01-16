import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JobCard extends StatelessWidget {
  // final String name;
  // final String companyName;
  // final String email;
  // final String? logo;
  // final DateTime startDate;
  // final String abstract;
  // final String description;
  // final color = Colors.accents[Random().nextInt(Colors.accents.length)];
  final color = Colors.teal.shade100;

  JobCard();
  // {required this.name,
  // required this.companyName,
  // required this.email,
  // this.logo,
  // required this.startDate,
  // required this.description});

  @override
  Widget build(BuildContext context) {
    TextStyle jobName =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
    TextStyle companyName =
        const TextStyle(fontSize: 20, fontStyle: FontStyle.italic);

    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: color,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0))),
      child: Column(
        children: [
          Image.asset(
            'assets/logo.jpg',
            height: 200,
            width: 300,
          ),
          Text(
            'Job Name',
            style: jobName,
          ),
          Text('Company Name', style: companyName),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_upward_rounded),
              Text('Swipe up for more details!'),
              Icon(Icons.arrow_upward_rounded),
            ],
          )
        ],
      ),
    );
  }
}
