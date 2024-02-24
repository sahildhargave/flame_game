import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game/assets.dart';
import 'package:game/high_scores.dart';
import 'package:game/my_game.dart';
import 'package:game/navigation/routes.dart';
import 'package:game/ui/game_over_menu.dart';
import 'package:game/ui/pause_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  // 😍😘runApp()🥰🤔
  await HighScores.load();
  await Assets.load();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.routes,
    ),
  );
}

class MyGameWidget extends StatelessWidget {
  const MyGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: MyGame(),
      overlayBuilderMap: {
        'GameOverMenu': (context, MyGame game) {
          return GameOverMenu(game: game);
        },
        'PauseMenu': (context, MyGame game) {
          return PauseMenu(game: game);
        }
      },
    );
  }
}
