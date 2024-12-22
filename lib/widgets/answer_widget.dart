import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/core/app_colors.dart';
import 'package:stroll/widgets/app_text.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(
      {super.key,
        required this.answer,
        required this.option,
        required this.isSelected,
        this.onTap});

  final String answer;
  final String option;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
          decoration: BoxDecoration(
              color: Pallet.grey,
              borderRadius: BorderRadius.circular(12.r),
              border: isSelected
                  ? Border.all(color: Pallet.primaryMedium, width: 2.w)
                  : null,
              boxShadow: [
                BoxShadow(
                  color: Pallet.black.shade700.withOpacity(0.3), // #0000004D
                  offset: Offset(-1, -1), // Horizontal: -1px, Vertical: -1px
                  blurRadius: 2, // Blur radius: 2px
                  spreadRadius: 0, // Spread radius: 0px
                ),
                // Shadow 2: Bottom-Right shadow
                BoxShadow(
                  color: Color(0x4D484848), // #4848484D
                  offset: Offset(1, 1),
                  blurRadius: 2.r,
                  spreadRadius: 0,
                ),

                BoxShadow(
                  color: Pallet.black.shade700.withOpacity(0.3),
                  offset: Offset(2, 2),
                  blurRadius: 8.r,
                  spreadRadius: 0,
                ),
              ]),
          child: Row(
            children: [
              Container(
                height: 20.w,
                width: 20.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? Pallet.primaryMedium : null,
                    border: isSelected
                        ? null
                        : Border.all(width: 1.w, color: Pallet.greyLight)),
                child: Center(
                  child: AppText.bodySmall(option),
                ),
              ),
              SizedBox(
                width: 9.w,
              ),
              Expanded(
                child: AppText.bodyMedium(
                  answer,
                  color: Pallet.greyLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
