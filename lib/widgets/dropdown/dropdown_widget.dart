import 'package:_9app/values/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({
    super.key,
    required this.items,
    this.topLeft,
    this.bottomLeft,
    required this.hintText,
    this.onChanged,
    this.width,
    // this.selectedValue,
  });

  final String hintText;
  final List items;
  final double? topLeft;
  final double? bottomLeft, width;
  final Function(String? value)? onChanged;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68.h,
      width: widget.width,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(children: [
            const SizedBox(width: 4),
            Text(widget.hintText,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 17.sp,
                    color: AppColors.swapGrey))
          ]),
          items: widget.items
              .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item,
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 17.sp,
                          color: AppColors.swapGrey,
                          fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis)))
              .toList(),
          value: selectedValue,
          onChanged: widget.onChanged ??
              (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
          buttonStyleData: ButtonStyleData(
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.sh),
                    bottomRight: Radius.circular(10.sh),
                    topLeft: Radius.circular(widget.topLeft ?? 10.sh),
                    bottomLeft: Radius.circular(widget.bottomLeft ?? 10.sh)),
                // border: Border.all(color: Colors.black26),
              ),
              elevation: 0),
          iconStyleData: const IconStyleData(
              icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black),
              iconSize: 25),
          dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(14)),
              offset: const Offset(-20, 0)),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
