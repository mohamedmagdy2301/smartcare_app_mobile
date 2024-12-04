import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcare_app_mobile/core/extensions/context_extansions.dart';
import 'package:smartcare_app_mobile/core/helper/functions_helper.dart';
import 'package:smartcare_app_mobile/core/language/lang_keys.dart';

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: context.colors.textColorLight,
              ),
            ),
            Padding(
              padding: padding(horizontal: 8),
              child: Text(
                context.translate(LangKeys.orSignInWith),
                style: context.textTheme.bodyMedium!.copyWith(
                  color: context.colors.textColorLight,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: context.colors.textColorLight,
              ),
            ),
          ],
        ),
        spaceHeight(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: context.colors.textColorLight,
              radius: 25.r,
              child: Image.asset(
                'assets/images/Logo-Google.png',
                height: 30.h,
                width: 30.w,
                fit: BoxFit.fill,
              ),
            ),
            spaceWidth(20),
            CircleAvatar(
              backgroundColor: context.colors.textColorLight,
              radius: 25.r,
              child: Image.asset(
                'assets/images/Logo-Facebook.png',
                height: 25.h,
                width: 25.w,
                fit: BoxFit.fill,
              ),
            ),
            spaceWidth(20),
            CircleAvatar(
              backgroundColor: context.colors.textColorLight,
              radius: 25.r,
              child: Image.asset(
                'assets/images/Logo-Apple.png',
                height: 30.h,
                width: 25.w,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}