import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
    this.onToggle,
  }) : super(key: key);
  final Function(bool)? onToggle;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  // toggle button state
  void toggle() {
    setState(() {
      isSelected = !isSelected;
    });
    widget.onToggle?.call(isSelected);
  }

  // bool isSelected = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: AnimatedContainer(
        // animation duration
        duration: const Duration(milliseconds: 200),
        // nob alignment
        alignment: isSelected ? Alignment.centerRight : Alignment.centerLeft,
        // padding
        padding: const EdgeInsets.symmetric(horizontal: 2),
        // button size
        width: 40,
        height: 20,
        // button decoration
        decoration: BoxDecoration(
          // button color
          color: isSelected ? AppColors.primary : AppColors.lightGrey,
          // button border
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        // button nob
        child: Container(
          // nob size
          height: 15,
          width: 15,
          // nob decoration
          decoration: const BoxDecoration(
            //nob color
            color: Colors.white,
            //nob shape
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
