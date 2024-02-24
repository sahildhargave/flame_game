import 'package:flutter/material.dart';
import 'package:game/data/data.dart';
import 'package:game/utilts/app_str.dart';
import 'package:game/widgets/contact_card.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.nextPage});

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Empty Space
          SizedBox(
            height: size.height * 0.05,
          ),

          /// Bio
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.Bio,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  Data.Bio,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),

          /// Hobbies
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.Hobbies,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        Data.developerData.hobbies.length,
                        (index) => Text(
                          "$index. ${Data.developerData.hobbies[index]}",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ))
              ],
            ),
          ),

          /// Contact
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.Contact,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                ContactCard(
                    title: Data.developerData.number, icon: Icons.phone),
                ContactCard(title: Data.developerData.mail, icon: Icons.mail),
              ],
            ),
          ),

          /// Empty Space
          Expanded(child: Container()),

          /// Next Page
          IconButton(
              color: theme.canvasColor,
              onPressed: nextPage,
              icon: const Icon(Icons.arrow_upward_outlined)),

          /// Empty Space
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
