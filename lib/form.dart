// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forms/trial.dart';

class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  bool _isLoginVisible = true;
  bool _loginClicked = false;
  bool _signupClicked = false;

  void _toggleForm() {
    setState(() {
      _isLoginVisible = !_isLoginVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _toggleForm();
                },
                child: Container(
                  height: 170,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _loginClicked ? Colors.black : Colors.transparent,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: _toggleForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 149, 149, 0.85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Admin",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Image.asset(
                        'Assets/chairman.png',
                        fit: BoxFit.cover, // Replace with your image path
                        height: 135,
                        width: 130,
                      ),
                    ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _toggleForm();
                },
                child: Container(
                  height: 170,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _loginClicked ? Colors.black : Colors.transparent,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: _toggleForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(26, 247, 168, 0.78) // Red color
                      ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Community",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Image.asset(
                        'Assets/community.png',
                        fit: BoxFit.cover, // Replace with your image path
                        height: 120,
                        // width: 300,
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 350,
            child: _isLoginVisible ? community() : Admin(),
          ),
        ],
      ),
    );
  }
}

class community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Become member of community",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            cursorColor: Color(0xFFC976F0),
            decoration: InputDecoration(
              labelText: 'Enter Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
              prefixIconColor: Colors.black12,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0), // Change the default border color here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0),
              ),
              floatingLabelStyle: TextStyle(color: Color(0xFFC976F0)),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            cursorColor: Color(0xFFC976F0),
            decoration: InputDecoration(
              labelText: 'Enter password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              prefixIconColor: Colors.black12,
              suffixIconColor: Colors.black12,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0), // Change the default border color here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0),
              ),
              floatingLabelStyle: TextStyle(color: Color(0xFFC976F0)),
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Trial()));
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Login Secessfull'),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ));
              // Timer(Duration(seconds: 3), () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => Trial()));
              // });
            },
            child: Text('Log In', style: TextStyle(fontSize: 18, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(55),
              backgroundColor: Color(0xFFC976F0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ],
      ),
    );
  }
}

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Add member in community",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            cursorColor: Color(0xFFC976F0),
            decoration: InputDecoration(
              labelText: 'Enter Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
              prefixIconColor: Colors.black12,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0), // Change the default border color here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0),
              ),
              floatingLabelStyle: TextStyle(color: Color(0xFFC976F0)),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            cursorColor: Color(0xFFC976F0),
            decoration: InputDecoration(
              labelText: 'Enter password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              prefixIconColor: Colors.black12,
              suffixIconColor: Colors.black12,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0), // Change the default border color here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC976F0)),
                borderRadius: BorderRadius.circular(40.0),
              ),
              floatingLabelStyle: TextStyle(color: Color(0xFFC976F0)),
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Trial()));
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Login Secessfull'),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ));
              // Timer(Duration(seconds: 3), () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => Trial()));
              // });
            },
            child: Text('Sign In', style: TextStyle(fontSize: 18, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(55),
              backgroundColor: Color(0xFFC976F0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ],
      ),
    );
  }
}
