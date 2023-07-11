// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import '../components/components.dart';
import '../components/social_media.dart';
import '../resources/constants_manager.dart';
import '../resources/widgets/main_app_bar.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const MainAppBar(
        title: 'About',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FittedBox(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 60.0,
                          backgroundImage:
                              AssetImage('assets/icons/app_icon.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          'Flutter Widget Catalog',
                          style: theme.textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Developer Info:',
                        style: theme.textTheme.headlineMedium,
                      ),
                      const Divider(
                        // color: CustomTheme.bgColor,
                        thickness: 4.0,
                      ),
                      FittedBox(
                        child: Text(
                          'Name: Osama Assaf',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'Email: ',
                              style: theme.textTheme.headlineSmall,
                            ),
                            GestureDetector(
                              onTap: () async {
                                Components.openUrl(
                                    'mailto:${ConstantsManager.developerEmail}',
                                    context);
                              },
                              child: Text(
                                ConstantsManager.developerEmail,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialMedia(
                            url: ConstantsManager.linkedinLink,
                            icon: FontAwesomeIcons.linkedinIn,
                          ),
                          SocialMedia(
                            url: ConstantsManager.githubLink,
                            icon: FontAwesomeIcons.github,
                          ),
                          SocialMedia(
                            url: ConstantsManager.facebookLink,
                            icon: FontAwesomeIcons.facebookF,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
