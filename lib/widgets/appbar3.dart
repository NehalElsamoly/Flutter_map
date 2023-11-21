import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class AppBar3 extends StatelessWidget {
  const AppBar3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(500.0),
        child: ClipPath(
          clipper: TheCustomClipper(),
          child: Container(
            color: Colors.purpleAccent, // Set AppBar color
          ),
        ),
      ),
      body: Container(
        color: Colors.purple, // Set Body color
        child: YourBodyContent(), // Add your actual body content here
      ),
    );
  }
}

class YourBodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your Body Content',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class TheCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 3);
    var firstControlPoint = Offset(0, size.height / 3.5);
    var firstEndPoint = Offset(size.width / 4.2, size.height / 3.5 + 10);

    var secControlPoint = Offset(size.width, size.height / 2.8);
    var secEndPoint = Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    path.quadraticBezierTo(
      secControlPoint.dx,
      secControlPoint.dy,
      secEndPoint.dx,
      secEndPoint.dy,
    );

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// import 'package:flutter/material.dart';
//
// class TestingScreen extends StatelessWidget {
//   static const routeName = "/testing-screen";
//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context);
//
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             expandedHeight: mediaQuery.size.height / 4,
//             backgroundColor: Colors.deepOrange,
//             shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(80))),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 Container(
//                   height: mediaQuery.size.height,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius:
//                       BorderRadius.only(topLeft: Radius.circular(80))),
//                   child: Center(child: Text('data')),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }