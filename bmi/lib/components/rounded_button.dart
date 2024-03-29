import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({required this.icon,required this.onPress});
  final IconData icon;
  final Function  onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: (){
        onPress();
      },
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 40.0,height: 40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0,),),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}