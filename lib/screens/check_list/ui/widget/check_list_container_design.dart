import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CheckListContainerDesign extends StatefulWidget {
  final String text;
  const CheckListContainerDesign({super.key, required this.text});

  @override
  State<CheckListContainerDesign> createState() => _CheckListContainerDesignState();
}

class _CheckListContainerDesignState extends State<CheckListContainerDesign> {
  String? mainRadioSelection;
  String? selectedDropdown;

  final List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF003668),
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Yes',
                groupValue: mainRadioSelection,
                activeColor: Colors.white,
                fillColor: MaterialStateProperty.all(Colors.white),
                onChanged: (String? value) {
                  setState(() {
                    mainRadioSelection = value;
                  });
                },
              ),
              Text(
                'Yes',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'No',
                groupValue: mainRadioSelection,
                activeColor: Colors.white,
                fillColor: MaterialStateProperty.all(Colors.white),
                onChanged: (String? value) {
                  setState(() {
                    mainRadioSelection = value;
                  });
                },
              ),
              Text(
                'No',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Damaged',
                groupValue: mainRadioSelection,
                activeColor: Colors.white,
                fillColor: MaterialStateProperty.all(Colors.white),
                onChanged: (String? value) {
                  setState(() {
                    mainRadioSelection = value;
                  });
                },
              ),
              Text(
                'Damaged',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  //debugPrint('mainRadioSelection $mainRadioSelection');
                },
                child: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Container(
            height: 40.h,
            width: 353.w,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0.w),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedDropdown,
                  isDense: true,
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  items: dropdownItems.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Row(
                        children: [
                          Radio<String>(
                            value: item,
                            groupValue: selectedDropdown,
                            onChanged: (String? value) {
                              setState(() {
                                selectedDropdown = value;
                              });
                            },
                            fillColor: MaterialStateProperty.all(const Color(0xFF003668)),
                          ),
                          Text(
                            item,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  hint: const Text(
                    'Comments',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDropdown = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
