import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/components.dart';
import '../components/social_media.dart';
import '../resources/widgets/main_app_bar.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  final String developerEmail = 'osama.assaf.y@gmail.com';

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
                elevation: 16.0,
                // color: CustomTheme.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
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
                elevation: 16.0,
                // color: CustomTheme.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
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
                      Text(
                        'Name: Osama Assaf',
                        style: theme.textTheme.headlineSmall,
                      ),
                      Row(
                        children: [
                          Text(
                            'Email: ',
                            style: theme.textTheme.headlineSmall,
                          ),
                          GestureDetector(
                            onTap: () async {
                              Components.openUrl(
                                  'mailto:$developerEmail', context);
                            },
                            child: Text(
                              developerEmail,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: const [
                          SocialMedia(
                            url:
                                'https://www.linkedin.com/in/osama-assaf-392820216/',
                            icon: FontAwesomeIcons.linkedinIn,
                          ),
                          SocialMedia(
                            url: 'https://github.com/OsamaAssaf',
                            icon: FontAwesomeIcons.github,
                          ),
                          SocialMedia(
                            url: 'https://www.facebook.com/osama.assaf.5',
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
