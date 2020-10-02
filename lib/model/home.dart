import 'package:meta/meta.dart';

@immutable
class Home {
  final String image;
  final String title;
  final String date;

  const Home(
      {@required this.image, @required this.title, @required this.date});
}
