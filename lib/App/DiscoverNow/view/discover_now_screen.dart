import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_singles/App/DiscoverNow/widget/join_group_dialog.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/textwidget.dart';

class DiscoverNowScreen extends StatelessWidget {
  DiscoverNowScreen({super.key});

  final List<Category> purposefulDating = [
    Category("A Committed Relationship", AppImages.committedRelationship,
        Color(0xFFB7146A), true),
    Category("Free Tonight", AppImages.freeTonight, Color(0xFF9D369B), false),
    Category(
        "Fun, Casual Dates", AppImages.funCasual, Color(0xFFE44A5A), false),
    Category("Still Figuring Out", AppImages.stillFiguringOut,
        Color(0xFF750075), false),
    Category("New Friends", AppImages.newFriends, Color(0xFF00B0D7), false),
    Category("Intimacy without commitment", AppImages.intimacy,
        Color(0xFF8A5E49), false),
  ];

  final List<Category> sharedInterests = [
    Category(
        "Binge Watchers", AppImages.bingeWatchers, Color(0xFF750075), false),
    Category("Sport Freaks", AppImages.sportFreaks, Color(0xFF8A5E49), false),
    Category("Creatives", AppImages.creatives, Color(0xFF5ABAB7), false),
    Category("Music", AppImages.music, Color(0xFF9D369B), false),
    Category("Gamers", AppImages.gamers, Color(0xFF3093A9), false),
    Category("Gym Rats", AppImages.gymRats, Color(0xFF00C853), false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 20),
                const TextWidget(
                  text: "Discover Now",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 6),
                const TextWidget(
                  text: "Find people who share your interests and lifestyle",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 20),

                // Purposeful Dating Section
                const TextWidget(
                  text: "Purposeful dating",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 6),
                const TextWidget(
                  text:
                      "Connect with people who share your relationship goals.",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 16),
                _buildCategoryGrid(purposefulDating),

                const SizedBox(height: 24),

                // Shared Interests & Hobbies Section
                const Text(
                  "Shared Interests & Hobbies",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Connect with people who enjoy the same things as you.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 12),
                _buildCategoryGrid(sharedInterests),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(
    List<Category> categories,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        return CategoryCard(
          category: categories[index],
        );
      },
    );
  }
}

// Category Model
class Category {
  final String title;
  final String iconPath;
  final Color color;
  final bool isTilted;

  Category(this.title, this.iconPath, this.color, this.isTilted);
}

// Category Card Widget
class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showJoinGroupDialog(context, category);
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
              child: Text(
                category.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.people, color: Colors.white, size: 14),
                      const SizedBox(width: 4),
                      const Text("500",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ),
                const Spacer(),
                // const SizedBox(width: 4),
                Transform.rotate(
                  angle: category.isTilted ? -0.2 : 0,
                  child: Image.asset(
                    category.iconPath,
                    scale: 5.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
