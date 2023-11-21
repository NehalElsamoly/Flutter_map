import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../city_app/view/test.dart';

int selectedTabIndex = 0;

class tadreep44 extends StatefulWidget {
  tadreep44({Key? key}) : super(key: key);

  @override
  State<tadreep44> createState() => _tadreepState();
}

class _tadreepState extends State<tadreep44> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 149, 161),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          color: Colors.white,
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 31, 149, 161),
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
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 22.0,
                                          backgroundColor: Colors.orange),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, left: 20),
                                      child: Container(
                                        width: 40.0, // تحديد عرض الخط
                                        height:
                                            2.0, // تحديد طول الخط (الارتفاع)
                                        color: Color.fromARGB(255, 31, 149,
                                            161), // تحديد لون الخط
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
                    buildTabContainer(0, 'شرح المنهج', 90, 50),
                    buildTabContainer(1, 'امتحانات الدروس', 200, 50),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                 // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15)
                                ),),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:140),
                                child: Text(
                                  'اسم الامتحان',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height:30),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 30, // Adjust the width as needed
                                      height: 30, // Adjust the height as needed
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey, // Set the background color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.laptop_windows,
                                          color: Colors.white, // Set the color of the icon
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 30, // Adjust the width as needed
                                      height: 30, // Adjust the height as needed
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:Color.fromARGB(255, 31, 149, 161), // Set the background color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.access_alarms_sharp,
                                          color: Colors.white, // Set the color of the icon
                                        ),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 30, // Adjust the width as needed
                                      height: 30, // Adjust the height as needed
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:Colors.blueGrey, // Set the background color of the circle
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white, // Set the color of the icon
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),


                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 250,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset: Offset(0, 2), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white70, // Selected color
                          // Unselected color
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                       child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)
                                ),),
                              child: Icon(
                                Icons.menu_book,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:140),
                              child: Text(
                                'اسم الامتحان',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height:30),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 30, // Adjust the width as needed
                                    height: 30, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey, // Set the background color of the circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.laptop_windows,
                                        color: Colors.white, // Set the color of the icon
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 30, // Adjust the width as needed
                                    height: 30, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:Color.fromARGB(255, 31, 149, 161), // Set the background color of the circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.access_alarms_sharp,
                                        color: Colors.white, // Set the color of the icon
                                      ),
                                    ),
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 30, // Adjust the width as needed
                                    height: 30, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:Colors.blueGrey, // Set the background color of the circle
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white, // Set the color of the icon
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabContainer(int index, String text, width, height) {
    return InkWell(
      onTap: () {
        // Handle tap and update the selected tab index
        setState(() {
          selectedTabIndex = index;
        });

        // Perform any other actions on tab press if needed
      },
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: selectedTabIndex == index
              ? Color.fromARGB(255, 31, 149, 161) // Selected color
              : Colors.grey, // Unselected color
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: selectedTabIndex == index ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
