import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;


class SwipingRecipesNone extends StatefulWidget {
  const SwipingRecipesNone({super.key});
  @override
State<SwipingRecipesNone> createState() => _SwipingRecipesNoneState();
}
class _SwipingRecipesNoneState extends State<SwipingRecipesNone> {

  @override
  Widget build(BuildContext context) {
    double? _rating;
  IconData? _selectedIcon;
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: getCardDeck(),
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 350,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
      disableDragging: false,
    );
    return Column(
       mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 508.0.h,
          child:SwipingCardDeck(
          cardDeck: <Card>[
        Card(
          child:
          Container(
            padding: EdgeInsets.all(15.0),
            height: 450.0.r,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage("assets/images/pancakes.png"),
              fit: BoxFit.cover),
              ),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end, 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       
                       Text(
                        'Raspberry pancakes'.hardcoded,
                        style: theme.extension<CustomTextTheme>()!
                        .h2!
                        .copyWith(color: theme.primaryColorLight)
          
          ),
              gapH4,
              RatingBar.builder(
                initialRating: _rating ?? 3.0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context, _) => Icon(
                  _selectedIcon ?? Icons.star,
                  color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                    _rating = rating;
                      setState(() {});
                    },
                    ),
                    gapH16,
                    
                    Text(
                      'Cook time: 20 min'.hardcoded,
                      style: theme.extension<CustomTextTheme>()!
                      .body16Bold!   
                      .copyWith(color: theme.primaryColorLight)
                    ),
                  ]
                ),
                ),
              ),
        ],
                onDeckEmpty: () => debugPrint("Card deck empty"),
                onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
                onRightSwipe: (Card card) => debugPrint("Swiped right!"),
                swipeThreshold: MediaQuery.of(context).size.width / 4,
                minimumVelocity: 1000,
                cardWidth: 350,
                rotationFactor: 0.8 / 3.14,
                swipeAnimationDuration: const Duration(milliseconds: 500),
                disableDragging: false,
            ),
        ),

        gapH32,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p36.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_delete,
                  color: colorTheme.white,
                  size: Sizes.p24.h,
                ),
                onTap: deck.animationActive ? null : () => deck.swipeLeft(),
                variant: ActionButtonVariant.danger,
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_go_back,
                  color: colorTheme.yellow,
                  size: Sizes.p24.h,
                ),
                variant: ActionButtonVariant.neutral,
                onTap: () {},
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.heart_alt,
                  size: Sizes.p24.h,
                  color: colorTheme.white,
                ),
                onTap:deck.animationActive ? null : () => deck.swipeRight(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<Card> getCardDeck() {
    List<Card> cardDeck = [];
    for (int i = 0; i < 500; ++i) {
      cardDeck.add(
        Card(
            color: Color((math.Random().nextDouble()).toInt())
                .withOpacity(1.0),
            child: const SizedBox(height: 300, width: 200)),
      );
    }
    return cardDeck;
  }



