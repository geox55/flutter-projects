import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon/widgets/image_button.dart';
import 'package:flutter_hackathon/widgets/svg_image_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  Future<Widget> loadImage(
      final double burgerWidth, final String httpPath) async {
    final response = await http.get(Uri.parse(httpPath));
    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      return Image.memory(
        bytes,
        fit: BoxFit.cover,
        width: burgerWidth,
      );
    } else {
      throw Exception('Failed to load image');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double listRest = screenHeight * 0.82;
    double listRestWidth = screenWidth * 0.82;
    double sideMargin = screenWidth * 0.09;
    double topMargin = screenWidth * 0.05;

    double burgerWidth = screenWidth * 0.375;
    String httpPath1 =
        "https://s82079.cdn.ngenix.net/330x0/qobgpcoij6m6eeg2ma4zda5gizyc";

    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.fromLTRB(sideMargin, topMargin, sideMargin, 0),
            child: Column(
              children: [
                Container(
                  height: burgerWidth - topMargin - 23,
                  // margin: EdgeInsets.fromLTRB(sideMargin, topMargin, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Container(
                        child: SizedBox(
                          width: burgerWidth,
                          height: screenWidth * 0.28125,
                          child: SvgImageButton(
                            imageUrl: 'assets/u_button 1.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: SizedBox(
                          width: burgerWidth,
                          height: screenWidth * 0.28125,
                          child: ImageButton(
                            imageUrl: 'assets/u_button 2.jpg',
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: SizedBox(
                          width: burgerWidth,
                          height: screenWidth * 0.28125,
                          child: ImageButton(
                            imageUrl: 'assets/u_button 3.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search restaraurant, dish or postcode',
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 247, 227, 1),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: SizedBox(
                          width: listRestWidth,
                          child: ImageButton(
                            imageUrl: 'assets/restaurant1.jpg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: SizedBox(
                          width: listRestWidth,
                          child: ImageButton(
                            imageUrl: 'assets/restaurant1.jpg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: SizedBox(
                          width: listRestWidth,
                          child: ImageButton(
                            imageUrl: 'assets/restaurant1.jpg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: SizedBox(
                          width: listRestWidth,
                          child: ImageButton(
                            imageUrl: 'assets/restaurant1.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}




// Container(
// decoration: BoxDecoration(
// color: const Color(0xff7c94b6),
// image: const DecorationImage(
// image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
// fit: BoxFit.cover,
// ),
// border: Border.all(
// width: 8,
// ),
// borderRadius: BorderRadius.circular(12),
// ),
// )