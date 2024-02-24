import 'package:game/models/data_model.dart';

class Data {
  Data._();

  static DeveloperModel developerData = DeveloperModel(
    name: 'Sahil Dhargave',
    bio: Bio,
    skillsAndProgress: <SkillsData>[
      SkillsData(name: "Software", progress: 0.5),
      SkillsData(name: 'Mobile Developer', progress: 0.7),
      SkillsData(name: 'Web Developer', progress: 0.6)
    ],
    hobbies: <String>['Learning about Development', 'Development'],
    number: '+91 7756811710',
    mail: 'sahildhargave5253@gmail.com',
  );

  static const String Bio = """
"I'm JoScript, a Shelf learn software Developer with a passion for Development useing new technologies et's explore mobile development together! 🚀"
""";
}
