import 'package:covid19_care/styles-consts/consts.dart';
import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final FormFieldSetter<String> onSaved;
  final TextInputType keyboardType;
  String _errorMessage(String str) {
    switch (hint) {
      case 'Full Name':
        return 'Name field can\'t be empty !';
      case "Your Email":
        return 'Email field can\'t be empty !';
      case 'Password':
        return 'The password field can not be empty !';
    }
  }
  CustomizedTextField({ @required this.hint,this.keyboardType , this.onSaved, this.icon });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42,vertical: 10),
      child: TextFormField(
          cursorColor: kPrimaryColor,
          onSaved: onSaved,
          obscureText: hint == 'Password'? true:false,
          decoration: InputDecoration(
            filled: true,
            fillColor: kPrimaryLightColor,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20 , right: 20),
              child: Icon(icon ,color: kPrimaryColor, ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
            hintText: hint,
          ),
          keyboardType: keyboardType,
          validator: (value){
            if(value.isEmpty){
              return _errorMessage(hint);
            }
          }
      ),
    );
  }
}

