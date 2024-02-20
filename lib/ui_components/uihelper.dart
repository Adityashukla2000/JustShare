import 'package:flutter/material.dart';

class UiHelper{


// UI Of TextFiled
static customTextFiled(TextEditingController controller,String text,IconData iconData,bool toHide){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      child: TextField(
       controller: controller,
       obscureText: toHide,
       decoration: InputDecoration(
        hintText: text,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        )
       ),
      ),
    );
  }

// UI Of Button

static customButton(VoidCallback voidCallback,String text){
  return SizedBox(
    height: 50,
    width: 200,
    child: ElevatedButton(
    
      onPressed: () {
        voidCallback();
      },


style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  )
),
  child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),
      
    )
  );
}


}