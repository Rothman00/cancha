import 'package:flutter/material.dart';

import '../home/widget/movie_card.dart';
import '../../utils/constans.dart';
import './widget/main_pic.dart';
import './widget/fade.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: gHeight,
        child: Stack(
          children: [
            MainPic(),
            const FadeWidget(),
            MovieCard(),
          ],
        ),
      ),
    );
  }
}
