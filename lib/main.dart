import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:to_do/to_do.dart';
import 'package:to_do/views/todo_home_view.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: todo
      // home: TODO()=-987
      home: TodoHomeView(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent
          )
        ),
        scaffoldBackgroundColor: Color(0xfffffff),
        iconTheme: IconThemeData(
          color:Color(0xff5f6d95)
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Color(0xff5f6d95),fontSize: 20
            )),
      ),
      


      
      )
      );
}
