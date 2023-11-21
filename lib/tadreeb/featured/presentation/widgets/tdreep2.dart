import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../city_app/view/test.dart';
int selectedTabIndex = 0;

class tadreep extends StatefulWidget {
   tadreep({Key? key}) : super(key: key);

  @override
  State<tadreep> createState() => _tadreepState();
}

class _tadreepState extends State<tadreep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color.fromARGB(255, 31, 149, 161),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    right: 30,
                    child: Icon(
                      Icons.account_circle_sharp,
                      size: 80,
                      color: Colors.white70,
                    ),
                  ),
                  Positioned(
                      top: 20,
                      right: 120,
                      child: Text(
                        'Nehal Elsamoly',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Positioned(
                      top: 50,
                      right: 120,
                      child: Text(
                        "Computer Science",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  Positioned(
                      top: 70,
                      right: 120,
                      child: Text(
                        'Software Engineering',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 60,
                    child: Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 100,
                    child: Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 149, 161),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 670,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 149, 161),
              ),
              child: Container(
                width: double.infinity,
                height: 670,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'رحلتك ',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: const Color.fromARGB(255, 203, 153, 3),
                          ),
                          child: Text(
                            'ابدا',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          buildTabContainer(0, 'شرح المنهج', ),
                          buildTabContainer(1, 'امتحانات الفصول',),
                          buildTabContainer(2, 'المراجعة النهائية'),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 400,
                      child: GridView(
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "الفصل الاول",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "عنوان الفصل",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 227, 227, 227),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "الفصل الاول",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "عنوان الفصل",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "الفصل الاول",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "عنوان الفصل",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),

                                ],
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
        ),
      ),
      // //  bottomNavigationBar: CurvedNavigationBar(
      //  index: _index
    //         onTap: (index) {
    // // Handle the tap, update the current index
    // setState(() {
    // _currentIndex = index;
    // });

    //     color: Color.fromARGB(31, 149, 151, 161),
      //     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      //     height: 60,
      //     animationDuration: Duration(
      //       milliseconds: 200,
      //     ),
      //     items: [
      //       Icon(
      //         Icons.play_circle_fill_outlined,
      //         size: 35,
      //         color: const Color.fromARGB(255, 3, 81, 145),
      //       ),
      //       Icon(
      //         Icons.receipt,
      //         size: 35,
      //         color: const Color.fromARGB(255, 3, 81, 145),
      //       ),
      //       Icon(
      //         Icons.home_outlined,
      //         size: 35,
      //         color: const Color.fromARGB(255, 3, 81, 145),
      //       ),
      //       Icon(
      //         Icons.chrome_reader_mode_outlined,
      //         size: 35,
      //         color: const Color.fromARGB(255, 3, 81, 145),
      //       ),
      //       Icon(
      //         Icons.menu,
      //         size: 35,
      //         color: const Color.fromARGB(255, 3, 81, 145),
      //       ),
      //     ],
      //
      //   ),
    );
  }
  Widget buildTabContainer(int index, String text) {
    return InkWell(
      onTap: () {
        // Handle tap and update the selected tab index
        setState(() {
          selectedTabIndex = index;
        });

        // Perform any other actions on tab press if needed
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: selectedTabIndex == index
              ? Color.fromARGB(255, 31, 149, 161) // Selected color
              : Colors.grey, // Unselected color
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selectedTabIndex == index ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

}

