import 'package:flutter/material.dart';

class MyCurrentAddress extends StatelessWidget {
  const MyCurrentAddress({super.key});
  void openingDialog(BuildContext context){
    showDialog(context: context, builder: (builder){
      return AlertDialog(
        title: Text("Enter your location"),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Enter Address....."
          ),
        ),
        actions: [
          MaterialButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Save"),),
          MaterialButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text(
            "Cancel"
          ),)
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Deliver now",
        style: TextStyle(
           color: Theme.of(context).colorScheme.inversePrimary,
        ),
        ),
        GestureDetector(
          onTap: (){
              openingDialog(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Kot radha kishen,kasur",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                 color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
              Icon(Icons.keyboard_arrow_down)
          
            ],
          ),
        )
        ],
      ),
    );
  }
}