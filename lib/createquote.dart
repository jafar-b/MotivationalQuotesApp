import 'package:flutter/material.dart';

class createquote extends StatefulWidget {
  const createquote({Key? key}) : super(key: key);

  @override
  State<createquote> createState() => _createquoteState();
}

class _createquoteState extends State<createquote> {
  
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

     appBar:
           AppBar(  
               leading: BackButton(onPressed: (){
                 Navigator.pop(context);
               },
               ),elevation: 5,title: Text("Create Quote"),
          ),

             body:    Text("hello world"),

    );
  }
}



