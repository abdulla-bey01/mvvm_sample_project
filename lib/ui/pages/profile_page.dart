import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/view_models/abstraction/i_profile_page_view_model.dart';
import '/ui/widgets/user_info_widget.dart';
import '/ui/utils/styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.profilePageViewModel})
      : super(key: key);
  final IProfilePageViewModel profilePageViewModel;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late IProfilePageViewModel _profilePageViewModel;

  @override
  void initState() {
    _profilePageViewModel = widget.profilePageViewModel;
    _profilePageViewModel.updateUi = setState;
    _profilePageViewModel.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 106.0.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Profile',
                    style: headingStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.0.h),
              child: UserInfoWidget(userInfo: _profilePageViewModel.userInfo),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _profilePageViewModel.menuItems.length,
                itemBuilder: (ctx, index) {
                  final _menuItem = _profilePageViewModel.menuItems[index];
                  return ListTile(
                    title: Text(
                      _menuItem.title,
                      style: size16TextStyle,
                    ),
                    subtitle: Text(
                      _menuItem.subtext,
                      style: size11TextStyleGrey,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
