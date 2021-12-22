import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TODO extends StatelessWidget {
  const TODO({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.blueGrey[100],

      appBar:AppBar(
        backgroundColor: Colors.white,
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,
          color:Colors.black)),
          SizedBox(width: MediaQuery.of(context).size.height*0.0001,),
          IconButton(onPressed: (){},
           icon: Icon(Icons.search,color:Colors.black)
           ),
          
          ],
        title:Text("My Task",style: TextStyle(color:Colors.black,)
      ),),




      body: Container(
        child: Column(
          children: [
          ],
        ),
      ),
      
    );
  }
}
