import 'package:flutter/material.dart';
import 'package:meet_singles/App/Dashboard/widget/super_like_dialog.dart';
import 'dart:math';

import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import 'icon_circular_button.dart';
import 'icon_rectangular_button.dart';

enum SwipeDirection { left, right }

class TinderCardStack extends StatefulWidget {
  final List<Widget> cards;
  final void Function(int index, SwipeDirection direction)? onSwipe;

  const TinderCardStack({
    super.key,
    required this.cards,
    this.onSwipe,
  });

  @override
  State<TinderCardStack> createState() => _TinderCardStackState();
}

class _TinderCardStackState extends State<TinderCardStack>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  Offset cardOffset = Offset.zero;
  double cardRotation = 0.0;
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _rotationAnimation;

  bool _showHeart = false;
  bool _showCancel = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  void animateCard(SwipeDirection direction) {
    final width = MediaQuery.of(context).size.width;
    final targetOffset = direction == SwipeDirection.right
        ? Offset(width * 2, 0)
        : Offset(-width * 2, 0);

    _offsetAnimation = Tween<Offset>(begin: cardOffset, end: targetOffset)
        .animate(_animationController);
    _rotationAnimation = Tween<double>(
            begin: cardRotation,
            end: direction == SwipeDirection.right ? 0.5 : -0.5)
        .animate(_animationController);

    _animationController.forward(from: 0).whenComplete(() {
      widget.onSwipe?.call(currentIndex, direction);
      setState(() {
        cardOffset = Offset.zero;
        cardRotation = 0.0;
        currentIndex++;
        _showHeart = false;
        _showCancel = false;
      });
    });
  }

  void resetCard() {
    _offsetAnimation = Tween<Offset>(begin: cardOffset, end: Offset.zero)
        .animate(_animationController);
    _rotationAnimation = Tween<double>(begin: cardRotation, end: 0.0)
        .animate(_animationController);

    _animationController.forward(from: 0).whenComplete(() {
      setState(() {
        cardOffset = Offset.zero;
        cardRotation = 0.0;
        _showHeart = false;
        _showCancel = false;
      });
    });
  }

  void swipeRight() => animateCard(SwipeDirection.right);
  void swipeLeft() => animateCard(SwipeDirection.left);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (currentIndex >= widget.cards.length) {
      return Center(
          child: Text("No more cards", style: TextStyle(color: Colors.white)));
    }

    final topCard = widget.cards[currentIndex];
    final nextCard = currentIndex + 1 < widget.cards.length
        ? widget.cards[currentIndex + 1]
        : SizedBox();

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Bottom (next) card
                  if (nextCard is Widget)
                    Transform.scale(
                      scale: 0.95,
                      child: nextCard,
                    ),

                  // Top (active) card
                  GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        cardOffset += details.delta;
                        cardRotation = cardOffset.dx / 300;
                        _showHeart = cardOffset.dx > 100;
                        _showCancel = cardOffset.dx < -100;
                      });
                    },
                    onPanEnd: (details) {
                      if (cardOffset.dx > 100) {
                        animateCard(SwipeDirection.right);
                      } else if (cardOffset.dx < -100) {
                        animateCard(SwipeDirection.left);
                      } else {
                        resetCard();
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (_, __) {
                          final offset = _animationController.isAnimating
                              ? _offsetAnimation.value
                              : cardOffset;
                          final rotation = _animationController.isAnimating
                              ? _rotationAnimation.value
                              : cardRotation;

                          return Transform.translate(
                            offset: offset,
                            child: Transform.rotate(
                              angle: rotation,
                              child: Stack(
                                children: [
                                  topCard,
                                  // Like (Heart)
                                  if (_showHeart)
                                    Positioned(
                                      top: 30,
                                      left: 30,
                                      child: Opacity(
                                        opacity: min(cardOffset.dx / 100, 1.0),
                                        child: Image.asset(
                                          AppIcons
                                              .heartWhite, // or any heart animation image you prefer
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                  // Dislike (Cancel)
                                  if (_showCancel)
                                    Positioned(
                                      top: 30,
                                      right: 30,
                                      child: Opacity(
                                        opacity: min(-cardOffset.dx / 100, 1.0),
                                        child: Image.asset(
                                          AppIcons.cancelIcon,
                                          color: AppColor.redColor,
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 48,
              color: AppColor.backgroundColor,
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconRectangularButton(
                    backgroundColor: AppColor.redColor,
                    imagePath: AppSvgIcons.cancelIcon,
                    iconColor: AppColor.whiteColor,
                    onPressed: () {
                      swipeLeft();
                    }),
              ),
              const SizedBox(width: 8),
              IconCircularButton(
                primaryColor: AppColor.primaryColor,
                imagePath: AppSvgIcons.heartShine,
                iconColor: AppColor.primaryColor,
                onPressed: () => showSuperLikeDialog(context),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: IconRectangularButton(
                  backgroundColor: AppColor.primaryColor,
                  imagePath: AppSvgIcons.likeIcon,
                  iconColor: AppColor.whiteColor,
                  onPressed: () {
                    swipeRight();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}


// import 'package:flutter/material.dart';
// import 'dart:math';

// class TinderCardStack extends StatefulWidget {
//   final List<Widget> cards;
//   final void Function(int index, SwipeDirection direction)? onSwipe;

//   const TinderCardStack({
//     super.key,
//     required this.cards,
//     this.onSwipe,
//   });

//   @override
//   State<TinderCardStack> createState() => _TinderCardStackState();
// }

// enum SwipeDirection { left, right }

// class _TinderCardStackState extends State<TinderCardStack>
//     with SingleTickerProviderStateMixin {
//   int currentIndex = 0;
//   Offset cardOffset = Offset.zero;
//   double cardRotation = 0.0;
//   late AnimationController _animationController;
//   late Animation<Offset> _offsetAnimation;
//   late Animation<double> _rotationAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
//   }

//   void animateCard(SwipeDirection direction) {
//     final width = MediaQuery.of(context).size.width;
//     final targetOffset = direction == SwipeDirection.right
//         ? Offset(width * 2, 0)
//         : Offset(-width * 2, 0);

//     _offsetAnimation = Tween<Offset>(begin: cardOffset, end: targetOffset).animate(_animationController);
//     _rotationAnimation = Tween<double>(begin: cardRotation, end: direction == SwipeDirection.right ? 0.5 : -0.5)
//         .animate(_animationController);

//     _animationController.forward(from: 0).whenComplete(() {
//       widget.onSwipe?.call(currentIndex, direction);
//       setState(() {
//         cardOffset = Offset.zero;
//         cardRotation = 0.0;
//         currentIndex++;
//       });
//     });
//   }

//   void resetCard() {
//     _offsetAnimation = Tween<Offset>(begin: cardOffset, end: Offset.zero).animate(_animationController);
//     _rotationAnimation = Tween<double>(begin: cardRotation, end: 0.0).animate(_animationController);

//     _animationController.forward(from: 0).whenComplete(() {
//       setState(() {
//         cardOffset = Offset.zero;
//         cardRotation = 0.0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (currentIndex >= widget.cards.length) {
//       return Center(child: Text("No more cards"));
//     }

//     final card = widget.cards[currentIndex];

//     return GestureDetector(
//       onPanUpdate: (details) {
//         setState(() {
//           cardOffset += details.delta;
//           cardRotation = cardOffset.dx / 300;
//         });
//       },
//       onPanEnd: (details) {
//         if (cardOffset.dx > 100) {
//           animateCard(SwipeDirection.right);
//         } else if (cardOffset.dx < -100) {
//           animateCard(SwipeDirection.left);
//         } else {
//           resetCard();
//         }
//       },
//       child: AnimatedBuilder(
//         animation: _animationController,
//         builder: (_, __) {
//           final offset = _animationController.isAnimating ? _offsetAnimation.value : cardOffset;
//           final rotation = _animationController.isAnimating ? _rotationAnimation.value : cardRotation;

//           return Transform.translate(
//             offset: offset,
//             child: Transform.rotate(
//               angle: rotation,
//               child: card,
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }

