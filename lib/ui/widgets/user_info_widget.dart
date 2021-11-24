import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/data/models/user_info_model.dart';
import '/ui/utils/styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key? key,
    required this.userInfo,
  }) : super(key: key);
  final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.0.h,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 64.0.h,
            width: 64.0.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  userInfo.imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userInfo.fullname,
                  style: size16TextStyle,
                ),
                Text(
                  userInfo.email,
                  style: size14TextStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
