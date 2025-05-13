import 'package:get/get.dart';

class ProfileController extends GetxController {
    List<Map> premiumAdvantages = [
    {
      "title": "See Who Liked You",
      "description": " No more guessing!",
    },
    {
      "title": "Unlimited Super Like",
      "description": "Send as many as you want",
    },
    {
      "title": "Boost Profile",
      "description": "Get more visibility & more matches",
    },
    {
      "title": "Ad-Free Experience",
      "description": "Browse without distractions",
    },
    {
      "title": "Rewinds",
      "description": "Undo accidental swipes and get a second chance",
    },
    {
      "title": "AI Match Suggestions",
      "description": "Get smart recommendations tailored to you",
    },
    {
      "title": "Share Images & Contact Info",
      "description": "Connect more easily with matches",
    },
    {
      "title": "Advance Filters",
      "description":
          " Find your perfect match with more precise search options",
    },
  ];

  bool newMatches = false;
  bool messages = false;
  bool superLikes = false;
  bool offerPromotions = false;
  bool readReceipt = false;
  bool showActiveStatus = false;


}
