import 'package:flutter/material.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/widgets/input_field.dart';
import 'package:remixicon/remixicon.dart';

class InputSection extends StatefulWidget {
  const InputSection({
    Key? key,
  }) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    // input section
    return Column(
      children: [
        // spacer
        context.spacing(height: 5),
        // input field container
        const InputField(
          label: 'Username',
          prefixIcon: Remix.user_line,
          secure: false,
        ),
        InputField(
          label: 'Password',
          prefixIcon: Remix.lock_password_line,
          suffixIcons: isSecure ? Remix.eye_fill : Remix.eye_off_fill,
          secure: isSecure,
          onTap: () => setState(() => isSecure = !isSecure),
        ),
      ],
    );
  }
}
