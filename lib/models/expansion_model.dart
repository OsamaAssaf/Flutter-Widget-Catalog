import '../resources/all_imports.dart';

class ExpansionModel {
  final String title;
  final String subtitle;
  final List<WidgetModel> widgets;

  ExpansionModel({
    required this.title,
    required this.subtitle,
    required this.widgets,
  });
}
