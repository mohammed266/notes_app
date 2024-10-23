


import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'tile',
            ),
            SizedBox(height: 15),
            CustomTextField(
              hint: 'content',
              maxLiens: 4,
            ),
            SizedBox(height: 25),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
