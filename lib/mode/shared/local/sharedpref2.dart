import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';





class sharedpref extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<sharedpref> {
  String username = 'القيمة الافتراضية';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedUsername = prefs.getString('username');
    if (storedUsername != null) {
      setState(() {
        username = storedUsername;
      });
    }
  }

  Future<void> _saveData(String newUsername) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', newUsername);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة تخزين البيانات المحلية'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('اسم المستخدم: $username'),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    TextEditingController usernameController =
                    TextEditingController();
                    return AlertDialog(
                      title: Text('تغيير اسم المستخدم'),
                      content: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: 'أدخل اسم المستخدم الجديد',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('إلغاء'),
                        ),
                        TextButton(
                          onPressed: () {
                            _saveData(usernameController.text);
                            _loadData();
                            Navigator.pop(context);
                          },
                          child: Text('حفظ'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('تغيير اسم المستخدم'),
            ),
          ],
        ),
      ),
    );
  }
}
