import 'package:flutter/material.dart';

Widget deafultButton({
  double width = double.infinity,
  Color background = Colors.teal,
  required Function function,
  required String text,

}) =>
    Container(
      width:width,
      height:50,
      color: background,
      child: MaterialButton(
        onPressed:(){
          function();
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );



Widget deafultFormFeild({
  required TextEditingController email,
  required TextInputType type,
  required String label,
  required String hint,
  required Function onSbmite,
  required IconData prefix,
  IconData? sufix,
  bool isPass = false,
  Function? SuffixPressed,

}) =>
    TextFormField(
      obscureText: isPass,
  controller:email,
  keyboardType:type,
  validator: (String? value){
    if(value!.isEmpty){
      return 'Enter the value in the Feild';
    }
    return null;
  },
  decoration: InputDecoration(
    labelText: label,
    hintText: hint,
    border: OutlineInputBorder(),
    prefixIcon: Icon(prefix),
    suffixIcon: IconButton(
      onPressed: (){
        SuffixPressed!();
      },
        icon: Icon(
            sufix,
        ),
    ),

  ),
  onFieldSubmitted: (v){
    onSbmite(v);
  },
);

