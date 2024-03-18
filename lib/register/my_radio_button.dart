import 'package:flutter/material.dart';

enum RegisterTypeEnum { Parent, School }

class MyRadioButton extends StatelessWidget {
  const MyRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.selectRegisterType,
    required this.onChanged,
    required this.image,
  });

  final String title;
  final RegisterTypeEnum value;
  final RegisterTypeEnum? selectRegisterType;
  final Function(RegisterTypeEnum?)? onChanged;
  final String image;
  //final Image image;
  //final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    )),
                //const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          leading: Radio<RegisterTypeEnum>(
              value: value,
              groupValue: selectRegisterType,
              onChanged: onChanged),
          contentPadding: const EdgeInsets.all(5.0),
        ),
      ],
    );
    // Expanded(
    //   child:
    //   RadioListTile<RegisterTypeEnum>(
    //     contentPadding: const EdgeInsets.all(0.0),
    //     value: value,
    //     groupValue: selectRegisterType,
    //     title: Text(title),
    //     onChanged: onChanged,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(5.0),
    //     ),
    //     tileColor: Colors.deepOrange.shade100,
    //   ),
    // );
  }
}
