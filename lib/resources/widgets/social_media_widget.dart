import '../all_imports.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key, required this.url, required this.icon});

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: theme.colorScheme.primary,
        child: IconButton(
          onPressed: () {
            Components.openUrl(url, context);
          },
          icon: FaIcon(icon),
        ),
      ),
    );
  }
}
