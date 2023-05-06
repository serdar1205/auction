import 'package:flutter/material.dart';
import 'package:auction/theme.dart';

class InputText extends StatefulWidget {
  InputText({Key? key, required this.keyboardType, this.password, this.phone})
      : super(key: key);

  final TextInputType keyboardType;
  final bool? password;
  final bool? phone;

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray),
          borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        autofocus: false,
        keyboardType: widget.keyboardType,
        textInputAction: TextInputAction.next,
        obscureText: widget.password != null ? !_passwordVisible : false,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(5),
          prefixText: widget.phone != null ? "+" : null,
          prefixStyle: TextStyle(color: AppColors.white),
          suffixIcon: widget.password != null
              ? IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.gray,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
