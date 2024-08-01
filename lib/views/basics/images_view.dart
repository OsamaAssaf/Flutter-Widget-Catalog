import '../../resources/all_imports.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      /// Image Widget has a lot of properties you can go to flutter docs and read about it.
      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    );
  }
}
