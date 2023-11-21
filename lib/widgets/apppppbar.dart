import 'package:flutter/material.dart';

class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RoundedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.0), // Adjust the radius as needed
        ),
        child: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Container(
            decoration: BoxDecoration(
            //  color: Colors.purpleAccent,
            ),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Action when clicking on the heart button
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Action when clicking on the help button
                      },
                    ),
                    SizedBox(width: 2.0),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Action when clicking on the notifications button
                      },
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اسم الطالب',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'الترم: الأول',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'هوه كويس',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Builder(
                        builder: (context) {
                          return Container(
                            child: CircleAvatar(
                              radius: 32.0,
                              backgroundColor: Colors.white,
                              //   backgroundImage: AssetImage('assets/profile_image.jpg'),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: RoundedAppBar(),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text('Your main content goes here'),
          ),
        ),
      ),
    ),
  );
}
