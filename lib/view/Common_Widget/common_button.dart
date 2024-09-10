import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? callback;
  final ButtonStyle?style;
  final BorderSide? borderSide;
  final RoundedRectangleBorder? shape;
  const CommonButton({super.key, required this.text, this.backgroundColor, this.fontSize, this.fontWeight, this.textColor, this.callback, this.borderSide, this.style, this.shape});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.07,
      width: double.infinity,

      child: ElevatedButton(onPressed: (){
        callback!();
      },
        style:style?? ElevatedButton.styleFrom(
            backgroundColor:backgroundColor?? Colors.blue,
       shape:shape?? RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(5),
         side:borderSide?? BorderSide.none,
       ),
        ),
        child: Center(
          child: Text(text,style: TextStyle(
            color:textColor?? Colors.white,
            fontWeight:fontWeight?? FontWeight.w500,
            fontSize: fontSize??22,
          ),
          ),
        ),
      ),

    );
  }
}
