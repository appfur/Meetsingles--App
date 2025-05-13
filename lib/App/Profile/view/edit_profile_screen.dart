import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/about_me_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/family_plan_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/interest_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/languages_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/lifestyle_habits_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/relationship_goals_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/verified_badge_section.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/work_education_section.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        centerTitle: true,
        title: TextWidget(
          text: "Edit Profile",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "My Photos",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  TextWidget(
                    text: "+20%",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1, // Adjust aspect ratio for image cards
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return _photoContainer();
                },
              ),
              const SizedBox(
                height: 24,
              ),
              VerifiedBadge(),
              const SizedBox(
                height: 24,
              ),
              AboutMeSection(),
              const SizedBox(
                height: 24,
              ),
              RelationshipGoalsSection(),
              const SizedBox(
                height: 24,
              ),
              WorkEducationSection(),
              const SizedBox(
                height: 24,
              ),
              LifestyleHabitsSection(),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 24,
              ),
              FamilyPlanSection(),
               const SizedBox(
                height: 24,
              ),
              InterestSection(),
              const SizedBox(
                height: 24,
              ),
              LanguagesSection(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
     
    );
  }

  Widget _photoContainer({
    String? imagePath,
  }) {
    return Container(
      // height: 120,
      // width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColor.primaryColor.shade50,
        image: imagePath != null
            ? DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.fill,
              )
            : null,
      ),
      child: imagePath != null
          ? Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                radius: 12,
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColor.redColor,
                ),
              ),
            )
          : Center(
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                radius: 12,
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
    );
  }
}
