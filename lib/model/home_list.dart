import 'package:meta/meta.dart';

@immutable
class HomeList {
  final String image2;
  final String title2;
  final String date2;

  const HomeList(
      {@required this.image2, @required this.title2, @required this.date2});
}
