import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/core/app_asset.dart';
import 'package:stroll/core/app_colors.dart';
import 'package:stroll/core/text_styles.dart';
import 'package:stroll/widgets/answer_widget.dart';
import 'package:stroll/widgets/app_text.dart';
import 'package:stroll/widgets/image_loader.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 1.sh,
                width: 1.sw,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Pallet.black.withOpacity(0),

                      Pallet.black.shade200.withOpacity(.28),

                      Pallet.black.shade300.withOpacity(.64),

                      Pallet.black.shade400.withOpacity(.8),

                      Pallet.black.shade700,

                    ],
                    stops: const [0.4397, 0.486, 0.5252, 0.5514, 0.5694],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(0.0, -0.63),

                      radius: 0.74,
                      colors: [
                        Pallet.black.shade700.withOpacity(.045),

                        Pallet.black.shade700.withOpacity(.107),

                        Pallet.black.shade700.withOpacity(.135),

                        Pallet.black.shade700.withOpacity(.195),

                        Pallet.black.shade700.withOpacity(.24),

                      ],
                      stops: const [0.0, 0.6328, 0.7566, 0.8844, 1.0],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 410.h,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssets.background),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 15.h, 16.w, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Stroll Bonfire",
                      style: headingLarge.copyWith(fontSize: 34.sp, shadows: [
                        Shadow(
                          color: Pallet.black.shade700.withOpacity(0.2),
                          blurRadius: 7.9.r,
                          offset: Offset(0, 0),
                        ),
                        Shadow(
                          color: Pallet.black.shade50,
                          blurRadius: 2.r,
                          offset: Offset(0, 0),
                        ),
                        Shadow(
                          color: Pallet.black.shade100.withOpacity(0.5),

                          blurRadius: 2.r,
                          offset: Offset(0, 1),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 30.w,
                      width: 30.w,
                      child: Container(
                        // height: 10.h,
                        // width: 6.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Pallet.black.shade700.withOpacity(0.005),

                              blurRadius: .3.r,
                              spreadRadius: 0,
                              offset: Offset(0, .3),
                            ),

                          ]
                        ),
                        child:  ImageLoader(
                          height: 10.h,
                          width: 6.w,
                          path: AppAssets.arrowDown,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageLoader(
                      height: 15.w,
                      width: 13.w,
                      path: AppAssets.timer,
                    ),
                    SizedBox(
                      width: 3.27.w,
                    ),
                    AppText.displaySmall("22h 00m"),
                    SizedBox(
                      width: 9.73.w,
                    ),
                    ImageLoader(
                      height: 15.w,
                      width: 13.w,
                      path: AppAssets.user,
                    ),
                    SizedBox(
                      width: 3.27.w,
                    ),
                    AppText.displaySmall("103"),
                  ],
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 1.sw,
                       height: 90.h,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 7.h,
                            left: 32.w,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(32.w, 4.h, 8.w, 4.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Pallet.black.shade800.withOpacity(.9),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 14),
                                        color: Pallet.black.shade700
                                            .withOpacity(.3),
                                        blurRadius: 16.r,
                                        spreadRadius: 0)
                                  ]),
                              child: AppText.headlineSmall("Angelina, 28"),
                            ),
                          ),
                          SizedBox(

                            child: Container(
                              height: 60.w,
                              width: 60.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3.41.w),
                                      color:
                                          Pallet.black.shade700.withOpacity(.4),
                                      blurRadius: 11.93.r,
                                      spreadRadius: 0),
                                ],
                                border: Border.all(
                                    color: Pallet.black.shade800, width: 5.w),
                                image: DecorationImage(
                                    image: AssetImage(AppAssets.joey),
                                    fit: BoxFit.cover),
                              ),

                            ),
                          ),

                          Positioned(
                              left: 69.w,
                              top: 36.h,
                              child: SizedBox(
                                  width: 247.w,
                                  child: AppText.headlineMedium(
                                    "What is your favorite time of the day?",
                                    color: Pallet.white,
                                    multiText: true,
                                    maxLines: 2,
                                  ))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText.bodySmall(
                          "Mine is definitely the peace in the morning.",
                          color: Pallet.primaryColor.withOpacity(.7),
                          centered: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      children: [
                        AnswerWidget(
                          option: "A",
                          answer: "The peace in the early mornings",
                          isSelected: selected == 0,
                          onTap: () {
                            selected = 0;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        AnswerWidget(
                            option: "B",
                            answer: "The magical golden hours",
                            isSelected: selected == 1,
                            onTap: () {
                              selected = 1;
                              setState(() {});
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        AnswerWidget(
                          option: "C",
                          answer: "Wind-down time after dinners",
                          isSelected: selected == 2,
                          onTap: () {
                            selected = 2;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        AnswerWidget(
                            option: "D",
                            answer: "The serenity past midnight",
                            isSelected: selected == 3,
                            onTap: () {
                              selected = 3;
                              setState(() {});
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: AppText.bodySmall(
                          "Pick your option.\nSee who has a similar mind.",
                          color: Pallet.whiteMedium,
                        )),
                        Container(
                          height: 48.w,
                          width: 48.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Pallet.primaryMedium, width: 2.w)),
                          child: Center(
                            child: ImageLoader(
                              height: 26.w,
                              width: 18.14.w,
                              path: AppAssets.mic,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          height: 48.w,
                          width: 48.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Pallet.primaryMedium,
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Pallet.black,
                            size: 26.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    )
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}

