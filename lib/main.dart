import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your List'),
      ),
      // backgroundColor: Colors.black,
      body: Center(
        child: ShimmerList(),
      ),
    );
  }
}

class ShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int offset = 0;
    // int time = 800;

    return SafeArea(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          // offset += 500;
          // time = 800 + offset;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey[300],
              child: ShimmerLayout(),
              // period: Duration(microseconds: time),
            ),
          );
        },
      ),
    );
  }
}

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = 220.0;
    double containerHeight = 10.0;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 5.0),
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 5.0),
              Container(
                height: containerHeight,
                width: containerWidth * 0.75,
                color: Colors.grey,
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ],
      ),
    );
  }
}

class ShimmerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500.0,
        width: 500.0,
        child: Shimmer.fromColors(
          baseColor: Colors.black, // Colors.red,
          highlightColor: Colors.grey, // Colors.blue,
          period: Duration(seconds: 3),
          //child: Image.asset('apple_with_color.png'),
          child: Image.asset('subscribe_out.png'),
        ),
      ),
    );
  }
}

class WallpaperImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        wallpaper(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 30.0),
            child: shimmerText(),
          ),
        ),
      ],
    );
  }

  wallpaper(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Image.asset(
        'wallpaper.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  shimmerText() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500],
      highlightColor: Colors.white,
      child: Text(
        '> Slide to unlock',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PrimitiveShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.red,
      highlightColor: Colors.green,
      child: Text(
        'SHIMMER',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
