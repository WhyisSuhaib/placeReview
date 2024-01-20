import 'package:flutter/material.dart';
import 'package:going_somewhere/views/widget/page.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController = PageController(initialPage: 0);
  int totalPage = 4;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {}

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        PageWidget(
          page: "1",
          image: 'assets/image/1.jpg',
          title: "Yosemite National Park",
          description:
          "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
          totalPage: totalPage,
          initial: 3,
        ),
        PageWidget(
          page: "2",
          image: 'assets/image/2.jpg',
          title: "Golden Gate Bridge",
          description:
          "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.",
          totalPage: totalPage,
          initial: 4,
        ),
        PageWidget(
          page: "3",
          image: 'assets/image/3.jpg',
          title: "Sedona",
          description:
          "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
          totalPage: totalPage,
          initial: 2,
        ),
        PageWidget(
          page: "4",
          image: 'assets/image/4.jpg',
          title: "Savannah",
          description:
          "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          totalPage: totalPage,
          initial: 5,
        ),
      ],
    );
  }
}
