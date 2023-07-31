import 'package:flutter/material.dart';

bool _value = false;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: <Widget>[
                IconButton(
                  color: Colors.pink,
                  icon: const Icon(Icons.navigate_before),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(children: <Widget>[
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0x75000000)),
                hintText: "First & Last Name",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0x75000000)),
                hintText: "Email",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0x75000000)),
                hintText: "Mobile Phone",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0x75000000)),
                hintText: "Group Special Code (optional)",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0x75000000)),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Checkbox(
                  checkColor: const Color(0xFFFFFFFF),
                  activeColor: Colors.pink,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        _value = value!;
                      },
                    );
                  },
                  value: _value,
                ),
                const Text(
                  "Please sign me up for the monthly newsletter.",
                  style: TextStyle(
                      color: Color(0x50212121), fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MaterialButton(
              height: 56,
              minWidth: double.infinity,
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                Navigator.of(context).pushNamed("/UserPage");
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
