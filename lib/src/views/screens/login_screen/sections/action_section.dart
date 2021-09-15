import 'package:flutter/material.dart';
import 'package:food_door/src/views/widgets/toggle_button.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // action section
    return Row(
      children:  <Widget>[
        // toggle button 
        ToggleButton(
          onToggle: (state)=>print(state),
        ),
      ],
    );
  }
}

