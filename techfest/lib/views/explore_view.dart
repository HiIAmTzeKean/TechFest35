import 'package:flutter/material.dart';
import 'package:techfest/cards/job_card.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController =
        SwipeableCardSectionController();

    return Scaffold(
      body: Column(
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards (widgets)
            items: const [
              JobCard(color: Colors.blue),
              JobCard(color: Colors.pink),
              JobCard(color: Colors.yellow),
            ],
            //Get card swipe event callbacks
            onCardSwiped: (dir, index, widget) {
              //Add the next card using _cardController
              _cardController
                  .addItem(const JobCard(color: Colors.lightGreenAccent));

              //Take action on the swiped widget based on the direction of swipe
              //Return false to not animate cards
            },
            //
            enableSwipeUp: false,
            enableSwipeDown: false,
          ),
        ],
        //other children
      ),
    );
  }
}
