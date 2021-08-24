import 'package:flutter/material.dart';
import 'package:lyricusic/screens/filters.dart';

class IntroductoryScreen extends StatelessWidget {
  static const routename = "/languages";

  @override
  Widget build(BuildContext context) {
    void Test() {
      print(MediaQuery.of(context).size.width);
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(alignment: Alignment.center, child: Text("Lyricusic")),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment(0, -0.7),
          children: [
            Image.network(
              "https://wallpapercave.com/wp/wp3750267.jpg",
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).padding.left,
              // height: (MediaQuery.of(context).size.height),
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  // color: Colors.yellow,
                  elevation: 20,
                  child: Text(
                    "Welcome To LYRICMUSIC",
                    style: (MediaQuery.of(context).size.width < 330)
                        ? Theme.of(context).textTheme.headline2
                        : Theme.of(context).textTheme.headline1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(routename);
                          // Test();
                        },
                        child: new Text("Continue"),
                      ),
                    
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        // style: ButtonStyle(MaterialSya),
                        onPressed: () {
                          Navigator.of(context).pushNamed(FilterScreen.routename);
                          
                        },
                        child: new Text("Set Filters"),
                      ),
                    
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
