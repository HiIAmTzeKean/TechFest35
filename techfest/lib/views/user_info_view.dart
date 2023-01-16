import 'package:flutter/material.dart';
import 'package:techfest/cards/user_card.dart';

class UserInfoView extends StatefulWidget {
  final UserCard userCard;

  const UserInfoView({required this.userCard});

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
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
