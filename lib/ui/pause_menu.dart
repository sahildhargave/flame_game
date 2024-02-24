import 'package:flutter/material.dart';
import 'package:game/my_game.dart';
import 'package:game/navigation/routes.dart';
import 'package:game/ui/widgets/my_button.dart';
import 'package:game/ui/widgets/my_text.dart';

class PauseMenu extends StatelessWidget {
  final MyGame game;

  const PauseMenu({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.black38,
      child: Center(
        child: AspectRatio(
          aspectRatio: 9 / 19.5,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(height: height * .15),
                const MyText(
                  'Paused',
                  fontSize: 56,
                ),
                const SizedBox(height: 40),
                MyButton(
                  'Resume',
                  onPressed: () {
                    game.overlays.remove('PauseMenu');
                    game.paused = false;
                  },
                ),
                const SizedBox(height: 40),
                MyButton(
                  'Menu',
                  onPressed: () => context.pushAndRemoveUntil(Routes.main),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
