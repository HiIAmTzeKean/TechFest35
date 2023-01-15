import 'package:flutter/material.dart';

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
    return Container();
  }
}
