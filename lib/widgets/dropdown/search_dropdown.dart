import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../values/colors.dart';

class SearchDropDown extends StatefulWidget {
  final Function(String? value)? onChanged;

  const SearchDropDown({super.key, this.onChanged});

  @override
  State<SearchDropDown> createState() => _RandomState();
}

class _RandomState extends State<SearchDropDown> {
  List<String> items = ['Bitcoin', 'USDT', 'BNB', 'Ethereum'];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
          showSelectedItems: true,
          showSearchBox: true,
          searchFieldProps:
              TextFieldProps(cursorColor: AppColors.primaryColor)),
      items: items,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
            // labelText: "",
            suffixIcon: const Icon(Icons.keyboard_arrow_down),
            hintText: "Network",
            focusColor: AppColors.primaryColor,
            hintStyle: TextStyle(fontFamily: 'roboto', fontSize: 18.sp),
            border: InputBorder.none),
      ),
      onChanged: widget.onChanged,
      selectedItem: "Network",
    );
  }
}
