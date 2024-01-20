import 'package:flutter/material.dart';
import 'package:going_somewhere/views/page_view.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: "Nunito"),
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPageView(),
    );
  }
}
