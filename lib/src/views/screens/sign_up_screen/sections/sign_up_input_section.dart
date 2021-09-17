// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:food_door/src/providers/login_provider.dart';
import 'package:food_door/src/providers/sign_up_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/widgets/input_field.dart';
import 'package:provider/src/provider.dart';
import 'package:remixicon/remixicon.dart';

class SignUpInputSection extends StatefulWidget {
  const SignUpInputSection ({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpInputSection > createState() => _InputSectionState();
}

class _InputSectionState extends State<SignUpInputSection > {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    // input section
    return Column(
      children: [
        // spacer
        context.spacing(height: 5),
        // input field container
        InputField(
          label: 'Username',
          controller: context.read<SignUpProvider>().userNameController,
          prefixIcon: Remix.user_line,
          secure: false,
        ),
        InputField(
          label: 'Email',
          controller: context.read<SignUpProvider>().emailController,
          prefixIcon: Remix.mail_line,
          secure: false,
        ),
         InputField(
          label: 'Password',
          controller: context.read<SignUpProvider>().passwordController,
          prefixIcon: Remix.lock_password_line,
          suffixIcons: isSecure ? Remix.eye_fill : Remix.eye_off_fill,
          secure: isSecure,
          onTap: () => setState(() => isSecure = !isSecure),
        ),
      ],
    );
  }
}
