import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class PageWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String page;
  final int totalPage;
  final double initial;

  const PageWidget({super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.page,
    required this.totalPage,
    required this.initial
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/" + totalPage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                          style: const TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                title,
                                speed: const Duration(milliseconds: 200),
                              ),
                            ],
                            totalRepeatCount: 1,
                            displayFullTextOnTap: true,
                          ))),
                  const SizedBox(
                    height: 20,
                  ),

                  RatingBar.readOnly(
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating: initial,
                    maxRating: 5,
                  ),



                  /*Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      const Text(
                        "4.0",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      const Text(
                        "(2300)",
                        style: TextStyle(color: Colors.white54, fontSize: 12),
                      ),
                    ],
                  ),
                  */



                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          height: 1.9,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                         ElevatedButton(
                            onPressed: () {
                            },
                            child: Text("Read More")),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
