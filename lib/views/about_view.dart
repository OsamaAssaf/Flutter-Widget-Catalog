import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/components.dart';
import '../components/social_media.dart';
import '../res/theme.dart';

class AboutView extends StatelessWidget {
  AboutView({Key? key}) : super(key: key);

  String developerEmail = 'osama.assaf.y@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      appBar: AppBar(
        title: const Text(
          'About',
          style: CustomTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: CustomTheme.primaryColor,
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
                color: CustomTheme.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FittedBox(
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage('assets/icons/app_icon.png'),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          'Flutter Widget Catalog',
                          style: CustomTheme.headline4,
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
                color: CustomTheme.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Developer Info:',
                        style: CustomTheme.headline4,
                      ),
                      const Divider(
                        color: CustomTheme.bgColor,
                        thickness: 4.0,
                      ),
                      const Text(
                        'Name: Osama Assaf',
                        style: CustomTheme.headline5,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Email: ',
                            style: CustomTheme.headline5,
                          ),
                          GestureDetector(
                            onTap: () async {
                              Components.openUrl('mailto:$developerEmail', context);
                            },
                            child: Text(
                              developerEmail,
                              style: CustomTheme.headline6,
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
                            url: 'https://www.linkedin.com/in/osama-assaf-392820216/',
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
