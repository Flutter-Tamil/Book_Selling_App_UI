import 'helper/export_helper.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/UserPage',
      routes: <String, WidgetBuilder>{
        "/UserPage": (BuildContext context) => User(),
        "/LoginPage": (BuildContext context) => Login(),
        "/RegisterPage": (BuildContext context) => Register(),
        "/HomePage": (BuildContext context) => Home(),
      },
    ),
  );
}
