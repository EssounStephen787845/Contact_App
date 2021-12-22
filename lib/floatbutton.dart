import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        Navigator.pop(context);
      },
      child: Scaffold(
          backgroundColor: Colors.grey,
          body: Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              TextFormField(
                style: TextStyle(
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff000000)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Title",
                    hintStyle: TextStyle(
                        fontFamily: "Oxygen", fontStyle: FontStyle.italic)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff000000)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Description",
                    hintStyle: TextStyle(
                        fontFamily: "Oxygen", fontStyle: FontStyle.italic)),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){},
               child: Text("Create")
               )           
               ]
            ),
          )
          )
          ),
    );
  }
}
