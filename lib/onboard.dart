import 'package:Yoga/home.dart';
import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int slideIndex = 0;
  int currentpage = 0;
  final List<String> images = [
    "https://th.bing.com/th/id/R7c54dbc707af5bdd71597255a1ca9ff0?rik=yxUDaSt0oEfI9A&riu=http%3a%2f%2fclipartmag.com%2fimages%2fmeditation-clipart-42.jpg&ehk=tbYMu5o3QlPJGrZTClMaqiP02i4Gi31%2bt0a%2bzK8iE6Q%3d&risl=&pid=ImgRaw",
    "https://clipground.com/images/pose-clipart-4.jpg",
    "https://th.bing.com/th/id/OIP.1uKV2Wllb2ryvUFjmqe5gwHaDU?pid=Api&rs=1",
  ];
  final List<String> text = [
    "Your Yoga",
    "Your Healthy",
    "Learning to relax",
  ];
  final List<String> text1 = [
    "Does Hydrodrem work",
    "Recommended You To Use After Before\n Brest Enhancement",
    "The Health Benefits Sunglasses",
  ];
  final IndexController controller = IndexController();
  @override
  Widget build(BuildContext context) {
    TransformerPageView transformerPageView = TransformerPageView(
      itemCount: 3,
      pageSnapping: true,
      onPageChanged: (index) {
        setState(() {
          this.slideIndex = index;
          currentpage = index;
        });
      },
      loop: false,
      controller: controller,
      transformer:
          PageTransformerBuilder(builder: (Widget child, TransformInfo info) {
        return new Material(
          color: Colors.white,
          elevation: 10,
          textStyle: TextStyle(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ParallaxContainer(
                    child: Image.network(images[info.index]),
                    position: info.position,
                    translationFactor: 400.0,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ParallaxContainer(
                    child: Text(
                      text[info.index],
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 34,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                    position: info.position,
                    translationFactor: 400.0,
                    opacityFactor: .8,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ParallaxContainer(
                    child: Text(
                      text1[info.index],
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                    position: info.position,
                    translationFactor: 300.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            text.length, (index) => buildDot(index: index)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Home();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          padding: EdgeInsets.only(
                              left: 20, top: 7, bottom: 7, right: 20),
                          child: Text("Create Account"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: transformerPageView,
    );
  }

  Container buildDot({int index}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.grey,
      ),
    );
  }
}
