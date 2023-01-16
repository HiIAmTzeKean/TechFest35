import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';

import '../cards/job_card.dart';

class JobInfoView extends StatefulWidget {
  final JobCard jobCard;

  const JobInfoView({required this.jobCard});

  @override
  State<JobInfoView> createState() => _JobInfoViewState();
}

class _JobInfoViewState extends State<JobInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Info'),
      ),
      body: Column(
        children: [
          const Text('Hi'),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.swipe_left),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.swipe_right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
