import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  // const PrimaryBUtton({ Key? key }) : super(key: key);
  final String btnText;

  const PrimaryButton(this.btnText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20)
        ),
        child: Text(btnText),
        onPressed: () {}, 
      ),
    );
  }
}