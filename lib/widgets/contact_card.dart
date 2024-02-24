import "package:flutter/material.dart";

class ContactCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const ContactCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return Card(
        child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01, horizontal: size.width * 0.01),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.01,
                ),
                Icon(
                  icon,
                  color: theme.canvasColor,
                  size: 30,
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Text(
                  title,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            )));
  }
}
