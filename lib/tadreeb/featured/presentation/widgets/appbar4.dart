
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../manager/monthes_cubit.dart';
import '../manager/monthes_state.dart';




class Screen77 extends StatefulWidget {
  @override
  State<Screen77> createState() => _Screen77State();
}
@override


class _Screen77State extends State<Screen77> {
  List<bool> isCheckedList = [false, false, false];
  @override
  void initState() {
    super.initState();
    // Call the API method here
    BlocProvider.of<MonthesCubit>(context).getAllMonths("Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2VsbWF6b25lLnRvcGJ1c2luZXNzLmlvL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjk4NTc5MDk1LCJleHAiOjE3MzAxMTUwOTUsIm5iZiI6MTY5ODU3OTA5NSwianRpIjoiNFZ6STFwYzRCeVREWTBWZCIsInN1YiI6IjIzNTciLCJwcnYiOiIyM2JkNWM4OTQ5ZjUwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.ed-3abF9AJ_OL31oeFpk7-7SgBaVZFlHzmZq0prGWn0");
  }

  @override
  Widget build(BuildContext context) {
    return
      // ... Your existing UI code ...
      BlocBuilder<MonthesCubit, MonthesState>(
        builder: (context, state) {
          print("Current state: $state");
          if (state is MonthesLoading) {
            return CircularProgressIndicator();
          } else if (state is MonthesLoaded) {
            print("Loaded monthes: ${state.monthes}");
            return buildUI(state.monthes);
          } else if (state is MonthesError) {
            print("Error: ${state.message}");
            return Text("Error: ${state.message}");
          }else{
            return Container();
          }
        },
      );

  }

  Widget buildUI(Monthes monthes) {
    // Build your UI based on the data from the API
    // ...

      return  Scaffold(
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
                          "الشهر",
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
                                  padding: const EdgeInsets.all(5.0),
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 19.0,
                                        backgroundColor: Colors.grey[
                                        300], // Customize the color of the circle
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Container(
                                          width: 40.0, // تحديد عرض الخط
                                          height: 2.0, // تحديد طول الخط (الارتفاع)
                                          color:
                                          Color.fromARGB(255, 31, 149, 161), // تحديد لون الخط
                                        ),
                                      ),
                                      Text(
                                        'اختر',
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                          // decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ]),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("شهر اغسطس"),
                      Checkbox(
                        value: isCheckedList[2],
                        shape: CircleBorder(), // جعل العلامة دائرية
                        onChanged: (bool? value) {
                          // تحديث حالة الاختيار عند الضغط
                          setState(() {
                            isCheckedList[2] = value ?? false;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // لون الدائرة البيضاء عند الضغط
                              if (states.contains(MaterialState.selected)) {
                                return Colors.black;
                              }
                              return Colors.white;
                            }),
                        checkColor: Colors.white, // لون علامة الصح عند الضغط
                      ),
                    ],
                  ),

                  Container(
                    height: 100, // Set the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Set the number of items as needed
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 200, // Set the width of each item as needed
                          margin: EdgeInsets.all(8.0), // Adjust margin as needed
                          color: Color.fromARGB(255, 31, 149, 161), // Customize the color of the container
                          child: Center(
                            child: Text(
                              'Item $index ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                   //   Text("شهر اغسطس"),
                      Text("${monthes.data?[0]?.name ?? 'Default Month Name'}"),
                      Checkbox(
                        value: isCheckedList[0],
                        shape: CircleBorder(), // جعل العلامة دائرية
                        onChanged: (bool? value) {
                          // تحديث حالة الاختيار عند الضغط
                          setState(() {
                            isCheckedList[0] = value ?? false;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // لون الدائرة البيضاء عند الضغط
                              if (states.contains(MaterialState.selected)) {
                                return Color.fromARGB(255, 31, 149, 161);
                              }
                              return Colors.white;
                            }),
                        checkColor: Colors.white, // لون علامة الصح عند الضغط
                      ),
                    ],
                  ),

                  Container(
                    height: 100, // Set the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Set the number of items as needed
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 200, // Set the width of each item as needed
                          margin: EdgeInsets.all(8.0), // Adjust margin as needed
                          color: Color.fromARGB(255, 31, 149, 161), // Customize the color of the container
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("شهر اغسطس"),
                      Checkbox(
                        value:                     isCheckedList[1]
                        ,
                        shape: CircleBorder(), // جعل العلامة دائرية
                        onChanged: (bool? value) {
                          // تحديث حالة الاختيار عند الضغط
                          setState(() {
                            isCheckedList[1] = value ?? false;

                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // لون الدائرة البيضاء عند الضغط
                              if (states.contains(MaterialState.selected)) {
                                return Color.fromARGB(255, 31, 149, 161);
                              }
                              return Colors.white;
                            }),
                        checkColor: Colors.white, // لون علامة الصح عند الضغط
                      ),
                    ],
                  ),

                  Container(
                    height: 100, // Set the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Set the number of items as needed
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 200, // Set the width of each item as needed
                          margin: EdgeInsets.all(8.0), // Adjust margin as needed
                          color: Color.fromARGB(255, 31, 149, 161), // Customize the color of the container
                          child: Center(
                            child: Text(
                              'Item',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color:Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              MaterialButton(onPressed: () {}, child: Text("استخدم")),
                              Spacer(),
                              Column(children: [
                                Text("ادخال كود الخصم"),
                                Text("ادخال "),
                              ]),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        Row(
                            children:[
                              Text(
                                "200",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red, // اختياري: لون الخط المشطوب
                                  decorationThickness: 3.0,   // اختياري: سمك الخط المشطوب
                                ),),
                              Spacer(),
                              Text("اجمالي الطلب"),



                            ]
                        ),
                        Row(
                            children:[
                              Text(
                                "200",
                              ),
                              Spacer(),
                              Text("اجمالي الطلب"),



                            ]
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 200,
                            height: 50,

                            decoration: BoxDecoration(

                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: MaterialButton(onPressed: () {  },child: Text("اكمل الطلب"),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  }
}
