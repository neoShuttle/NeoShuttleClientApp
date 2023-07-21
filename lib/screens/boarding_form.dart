import 'package:flutter/material.dart';
import 'package:neoshuttle/components/button.dart';
import 'package:neoshuttle/models/boarding_form.dart';

class BoardingForm extends StatefulWidget {
  final BoardingFormModel form;
  const BoardingForm(this.form, {super.key});

  @override
  State<BoardingForm> createState() => _BoardingFormState();
}

class _BoardingFormState extends State<BoardingForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.form.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 30)),
                    Text(widget.form.description,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15)),
                    const SizedBox(height: 30),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        labelText: widget.form.textBoxText,
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
              ),
              if (widget.form.checkBox != null)
                renderCheckbox(widget.form.checkBox!, isChecked,
                    (bool? value) => setState(() => isChecked = value!)),
              customButton('next', () => {}),
              const SizedBox(height: 20)
            ],
          ),
        )));
  }
}

Widget renderCheckbox(
    String text, bool isChecked, Function(bool? value) onChanged) {
  return Row(
    children: [
      Checkbox(
        value: isChecked,
        onChanged: (value) => onChanged(value),
        activeColor: Colors.white,
      ),
      Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    ],
  );
}
