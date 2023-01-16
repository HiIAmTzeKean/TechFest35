import 'package:flutter/material.dart';
import 'package:techfest/cards/job_card.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:techfest/cards/user_card.dart';
import 'package:techfest/views/user_info_view.dart';

import 'job_info_view.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController =
        SwipeableCardSectionController();

    return SizedBox(
      height: 550,
      child: Column(
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards (widgets)
            items: [
              UserCard(),
              JobCard(),
              JobCard(),
            ],
            //Get card swipe event callbacks
            onCardSwiped: (dir, index, widget) {
              //Add the next card using _cardController
              switch (dir) {
                case Direction.up:
                  if (widget.toString() == 'JobCard') {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => JobInfoView(jobCard: widget),
                    ));
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserInfoView(userCard: widget),
                    ));
                  }
                  _cardController.appendItem(widget);
                  break;
                case Direction.left:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 3),
                      content: Text("Swiped Left :("),
                    ),
                  );
                  break;
                case Direction.right:
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 1),
                      content: Text("Swiped Right :D"),
                    ),
                  );
                  break;
              }
              _cardController.addItem(JobCard());

              //Take action on the swiped widget based on the direction of swipe
              //Return false to not animate cards
            },
            //
            enableSwipeUp: true,
            enableSwipeDown: false,
          ),
        ],
      ),
    );
  }
}
