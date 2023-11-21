import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // اللغة الافتراضية
  String ?selectedLanguage ;

  @override
  void initState() {
    super.initState();
    // استدعاء دالة لاستعراض اللغة المحفوظة من SharedPreferences
    _loadLanguage();
  }

  // دالة للحصول على اللغة المحفوظة
  // _loadLanguage() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     selectedLanguage = prefs.getString('language') ?? "English";
  //   });
  // }
  _loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? language = prefs.getString('language');
    setState(() {
      selectedLanguage =prefs.getString('language') ;
    });
  }

  // دالة لتغيير اللغة المحفوظة
  _setLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedLanguage = language; // تحديث اللغة محليًا فور تغييرها
    await prefs.setString('language', language);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Selected Language: $selectedLanguage"),
            MaterialButton(
              onPressed: () {
                // تغيير اللغة إلى العربية وحفظها
                _setLanguage("Arabic");
              },
              child: Text("Change Language to Arabic"),
            ),
            MaterialButton(
              onPressed: () {
                // تغيير اللغة إلى الإنجليزية وحفظها
                _setLanguage("English");
              },
              child: Text("Change Language to English"),
            ),
          ],
        ),
      ),
    );
  }
}
