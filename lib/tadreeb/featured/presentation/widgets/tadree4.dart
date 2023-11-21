import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'appbar4.dart';
Map<String, double> dataMap = {
  "Flutter": 5,

};
int selectedTabIndex = 0;

class tadreeeeeeeep5 extends StatefulWidget {
  const tadreeeeeeeep5({Key? key}) : super(key: key);

  @override
  State<tadreeeeeeeep5> createState() => _tadreeeeeeeep5State();
}

class _tadreeeeeeeep5State extends State<tadreeeeeeeep5> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color.fromARGB(255, 31, 149, 161),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(100.0),
    child:    Container(
    color: Colors.white,
    child: Container(
    height: 120,
    width: double.infinity,
    decoration: const BoxDecoration(
    color:  Color.fromARGB(255, 31, 149, 161),
    borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(50),
    ),
    ),
    child: const Stack(
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
    ),
    ),
    ),
      body: Container(
        height: 670,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(

            child: Column(
              children: [
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.end, // تحديد توزيع العناصر نحو اليمين

                    children: [
                      Text(
                        "الاول :شرح الازدواجيه الموجه",
                        style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left:20,
                                      child: CircleAvatar(
                                        radius: 22.0,
                                        backgroundColor: Colors.orange
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left:20),
                                      child: Container(
                                        width: 40.0, // تحديد عرض الخط
                                        height: 2.0, // تحديد طول الخط (الارتفاع)
                                        color:
                                        Color.fromARGB(255, 31, 149, 161), // تحديد لون الخط
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Text(
                                        'الدرس',
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                          // decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ]),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    buildTabContainer(0, 'شرح المنهج', ),
                    buildTabContainer(1, 'امتحانات الفصول',),
                    buildTabContainer(2, 'المراجعة النهائية'),
                  ],
                ),

                Container(
                  width: double.infinity,
                  height: 400,
                  child: GridView(
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: <Widget>[
                      Stack(
                        children: [

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
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        // VerticalDivider(
                                        //   color: Colors.orange,
                                        //   thickness: 2,
                                        //   width: 10,
                                        // ),
                                        SizedBox(width: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child:   Container(

                                              color: Colors.white,

                                              width: 2,

                                              height:90

                                          ),
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(left:30.0,top:20),
                                        //   child: Container(
                                        //     width: 80,
                                        //     height: 80,
                                        //     decoration: BoxDecoration(
                                        //       shape: BoxShape.circle,
                                        //       color: Colors.white,
                                        //     ),
                                        //     // Add your circular content here
                                        //   ),
                                        // ),
                                        PieChart(
                                          dataMap: dataMap,
                                          chartRadius: MediaQuery.of(context).size.width /16,
                                          legendOptions: LegendOptions(
                                            legendPosition: LegendPosition.bottom,
                                          ),
                                          chartValuesOptions: ChartValuesOptions(
                                            showChartValuesInPercentage: true,
                                          ),
                                        ),

                                      ]
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 150.0),
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 0, 0, 0.5), // Black color with 50% opacity
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        border: Border.all(color: Colors.black), // Black border
                                      ),
                                      child: Center(
                                        child: Text(
                                          "ابدأ مذاكره",
                                          style: TextStyle(
                                            color: Colors.white, // White text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          // Positioned(
                          //   top: 0,
                          //   left: 0,
                          //   child: CircleAvatar(
                          //
                          //     radius: 30,
                          //     backgroundColor: Colors.blue, // Set your preferred color
                          //     // Add your circular avatar content here
                          //   ),
                          // ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0, // Adjust the border width as needed
                                ),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                 // 'https://image.freepik.com/free-vector/student-avatar-illustration_47016-223.jpg',
                                  // Replace with your image URL
                                  "https://www.shutterstock.com/image-vector/university-students-graduation-graphic-design-260nw-340946237.jpg",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                             // color: Color.fromARGB(255, 227, 227, 227),
                              color:Color.fromARGB(255, 31, 149, 161),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Column(
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
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("3 دروس"),
                                                  Icon(Icons.list_alt_outlined)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        // VerticalDivider(
                                        //   color: Colors.orange,
                                        //   thickness: 2,
                                        //   width: 10,
                                        // ),
                                        SizedBox(width: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child:   Container(

                                              color: Colors.white,

                                              width: 2,

                                              height:90

                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:30.0,top:20),
                                          child: Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            // Add your circular content here
                                          ),
                                        ),

                                      ]
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 150.0),
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 0, 0, 0.5), // Black color with 50% opacity
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        border: Border.all(color: Colors.black), // Black border
                                      ),
                                      child: Center(
                                        child: Text(
                                          "ابدأ مذاكره",
                                          style: TextStyle(
                                            color: Colors.white, // White text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0, // Adjust the border width as needed
                                ),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  // 'https://image.freepik.com/free-vector/student-avatar-illustration_47016-223.jpg',
                                  // Replace with your image URL
                                  "https://www.shutterstock.com/image-vector/university-students-graduation-graphic-design-260nw-340946237.jpg",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
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
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                      children:[
                                      Padding(
                                        padding: const EdgeInsets.only(top:20.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("3 دروس"),
                                                Icon(Icons.list_alt_outlined)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("3 دروس"),
                                                Icon(Icons.list_alt_outlined)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("3 دروس"),
                                                Icon(Icons.list_alt_outlined)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                        // VerticalDivider(
                                        //   color: Colors.orange,
                                        //   thickness: 2,
                                        //   width: 10,
                                        // ),
                                        SizedBox(width: 20,),
Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Container(

    color: Colors.white,

    width: 2,

    height:90

  ),
),
                                        Padding(
                                          padding: const EdgeInsets.only(left:30.0,top:20),
                                          child: Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            // Add your circular content here
                                          ),
                                        ),

                                      ]
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 150.0),
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 0, 0, 0.5), // Black color with 50% opacity
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        border: Border.all(color: Colors.black), // Black border
                                      ),
                                      child: Center(
                                        child: Text(
                                          "ابدأ مذاكره",
                                          style: TextStyle(
                                            color: Colors.white, // White text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0, // Adjust the border width as needed
                                ),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  // 'https://image.freepik.com/free-vector/student-avatar-illustration_47016-223.jpg',
                                  // Replace with your image URL
                                  "https://www.shutterstock.com/image-vector/university-students-graduation-graphic-design-260nw-340946237.jpg",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabContainer(int index, String text) {
    return InkWell(
      onTap: () {
        // Handle tap and update the selected tab index
        setState(() {
          selectedTabIndex = index;
        });
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Screen77()),
        // );
      //  _navigateToAnotherBody(context, index);
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
  void _navigateToAnotherBody(BuildContext context, int tabIndex) {
    // Perform any actions needed before navigating

    // Navigate to another screen/page based on the selected tab
    switch (tabIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstTabScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondTabScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThirdTabScreen()),
        );
        break;
      default:
      // Handle the default case or do nothing
        break;
    }
  }
}
class FirstTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Tab'),
      ),
      body: Center(
        child: Text('This is the content of the first tab'),
      ),
    );
  }
}
class SecondTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Tab'),
      ),
      body: Center(
        child: Text('This is the content of the second tab'),
      ),
    );
  }
}

class ThirdTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Tab'),
      ),
      body: Center(
        child: Text('This is the content of the third tab'),
      ),
    );
  }
}