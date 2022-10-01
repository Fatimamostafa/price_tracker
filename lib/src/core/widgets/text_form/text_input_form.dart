import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/widgets/text_form/input_type.dart';

class TextInputForm extends StatefulWidget {
  final String? value;
  final String? title;
  final InputType? type;
  final FocusNode? current;
  final FocusNode? next;
  final bool enabled;
  final bool errorText;
  final String? prefixText;
  final String hintText;
  final TextInputAction? action;
  final onSaved;
  final onChanged;
  final Function(String?)? validator;
  final TextInputType keyboardType;
  final bool paddingNone;
  final bool borderNone;
  final TextCapitalization? capitalization;
  final controller;
  final Function? onTap;

  TextInputForm(
      {Key? key,
      this.keyboardType = TextInputType.text,
      this.paddingNone = false,
      this.errorText = false,
      this.hintText = "Type here",
      this.title = '',
      this.value = "",
      this.onSaved,
      this.current,
      this.next,
      this.action,
      this.enabled = true,
      this.controller,
      this.onChanged,
      this.validator,
      this.borderNone = false,
      this.onTap,
      this.type,
      this.capitalization,
      this.prefixText})
      : super(key: key);

  @override
  _TextInputFormState createState() {
    return _TextInputFormState();
  }
}

class _TextInputFormState extends State<TextInputForm> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.paddingNone
          ? const EdgeInsets.all(0)
          : const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(
            textType: TextType.bold,
            text: UtilInputForm.getLabel(widget.type),
          ),
          TextFormField(
            onTap: widget.onTap as void Function()?,
            readOnly: widget.onTap != null,
            showCursor: widget.onTap == null,
            cursorColor: Colors.grey,
            textCapitalization:
                widget.capitalization ?? TextCapitalization.none,
            obscureText: ((widget.type == InputType.password ||
                        widget.type == InputType.retypePassword ||
                        widget.type == InputType.newPassword) &&
                    !_passwordVisible)
                ? true
                : false,
            keyboardType: widget.keyboardType,
            autofocus: false,
            enabled: widget.enabled ? true : false,
            controller: widget.controller != null ? widget.controller : null,
            initialValue: widget.controller == null ? widget.value : null,
            //initialValue: widget.value,
            focusNode: widget.current,
            textInputAction: widget.action,
            style: TextStyle(
              color: Colors.black,
              fontSize: applySpacing(2),
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixText: widget.prefixText ?? "",
                prefixStyle: TextStyle(color: Colors.grey),
                suffixIconConstraints: BoxConstraints(
                  minWidth: 2,
                  minHeight: 2,
                ),
                suffixIcon: _getSuffixButton(widget.type),
                filled: true,
                fillColor: Colors.white,
                hintText: UtilInputForm.getHintText(widget.type),
                errorStyle: TextStyle(fontSize: widget.errorText ? 10 : 0),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: applySpacing(2),
                )),

            onFieldSubmitted: (term) {
              widget.onSaved(term);
              if (widget.current != null) widget.current!.unfocus();
              if (widget.current != widget.next) {
                FocusScope.of(context).requestFocus(widget.next);
              }
            },
            onChanged: widget.onChanged,
            onSaved: widget.onSaved,
            // validator: (val) {
            //   return widget.validator!(val);
            // },
          ),
        ],
      ),
    );
  }

  prepareBorder(Color color, double radius) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.all(Radius.circular(radius)),
    );
  }

  String? validate(String val, type, {bool? mandatory}) {
    switch (type) {
      case InputType.mobile:
        {
          if (val.length >= 10) {
            return null;
          } else {
            return UtilInputForm.getErrorText(type);
          }
        }

      case InputType.email:
        {
          if (val.isNotEmpty && validateEmail(val)) {
            return null;
          } else {
            return UtilInputForm.getErrorText(type);
          }
        }

      case InputType.password:
        {
          if (val.length >= 6) {
            return null;
          } else {
            return UtilInputForm.getErrorText(type);
          }
        }

      case InputType.lastName:
        {
          if (val.trim().isEmpty || val.isEmpty || val.length == 0) {
            return UtilInputForm.getErrorText(type);
          } else {
            return null;
          }
        }

      default:
        if (val.trim().isEmpty || val.isEmpty || val.length <= 0) {
          return UtilInputForm.getErrorText(type);
        } else {
          return null;
        }
    }
  }

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  _getSuffixButton(InputType? type) {
    if (type == InputType.password ||
        type == InputType.retypePassword ||
        type == InputType.newPassword) {
      return IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            _passwordVisible ^= true;
          });
    }
  }

}
