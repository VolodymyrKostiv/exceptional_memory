import 'package:flutter/material.dart';

class GeneralTheory extends StatelessWidget {
  const GeneralTheory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 23,
          ),
          text:
              'The path to success and a change in life for the better lies through knowledge, and in the center of knowledge is memory.\n\n',
          children: <TextSpan>[
            TextSpan(
              text:
                  'Daily training your memory in this application, you will be able to:\n',
            ),
            TextSpan(
              text: ' - Make your memory better\n',
            ),
            TextSpan(
              text:
                  ' - Maintain the brain in good shape. Indeed, thanks to training, the brain also starts to work better\n',
            ),
          ],
        ),
      ),
    );
  }
}
