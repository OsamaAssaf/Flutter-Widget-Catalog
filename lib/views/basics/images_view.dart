// Flutter imports:
import 'package:flutter/material.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      /// Image Widget has a lot of properties you can go to flutter docs and read about it.
      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    );
  }
}
