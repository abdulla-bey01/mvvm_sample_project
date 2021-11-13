import 'package:flutter/material.dart';
import 'package:mvvm_simple/ui/utils/styles.dart';

class CustomTextFieldWithLabel extends StatefulWidget {
  const CustomTextFieldWithLabel({
    Key? key,
    required this.label,
    required this.controller,
    this.inputType = TextInputType.text,
    this.isPassword = false,
    this.shouldFirstLetterIsUpperCase = false,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;
  final bool shouldFirstLetterIsUpperCase;

  @override
  _CustomTextFieldWithLabelState createState() =>
      _CustomTextFieldWithLabelState();
}

class _CustomTextFieldWithLabelState extends State<CustomTextFieldWithLabel> {
  bool _hide = false;
  final FocusNode _node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_node.canRequestFocus) _node.requestFocus();
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(42, 44, 54, 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16),
                  child: Text(
                    widget.label,
                    style: infoHintStyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextField(
                  controller: widget.controller,
                  textCapitalization: widget.shouldFirstLetterIsUpperCase
                      ? TextCapitalization.words
                      : TextCapitalization.none,
                  autofocus: false,
                  keyboardType: widget.inputType,
                  obscureText: widget.isPassword && !_hide,
                  style: textFieldTypingTextStyle,
                  textAlign: TextAlign.left,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isDense: true,
                    prefixIconConstraints:
                        const BoxConstraints(minWidth: 0, minHeight: 0),
                    suffixIcon: (!widget.isPassword)
                        ? null
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _hide = !_hide;
                              });
                            },
                            icon: Icon(
                              _hide ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
