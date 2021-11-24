import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../ui/utils/static_build_context.dart';

//String _textStyleName = 'Metropolis';

//especially used in CustomTextFieldWithLabel to style hint text
TextStyle infoHintStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 11.0.sp,
  fontWeight: FontWeight.normal,
);

TextStyle sloganStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 11.0.sp,
  fontWeight: FontWeight.w600,
);

//used in Login, Register screens, and all the pages user in main screen
TextStyle headingStyle =  TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 34.0.sp,
  fontWeight: FontWeight.bold,
);

TextStyle headline3Style =  TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 22.0.sp,
  fontWeight: FontWeight.bold,
);

//used in login screen to style 'have not you been here' text
TextStyle normalTextStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 14.0.sp,
  fontWeight: FontWeight.normal,
);

//used in BigButton to style text which is contained by BigButton
TextStyle bigButtonTextStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 14.0.sp,
);

//used in bag page to style 'total amount' value
TextStyle h3Style = const TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 21,
  fontWeight: FontWeight.w700,
);

//used on bag page to style total amount title
TextStyle h2StyleWithOpacity0_5 = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white.withOpacity(0.5),
  fontSize: 14.0.sp,
  fontWeight: FontWeight.w400,
);

//used in bag page to style ordered item price at bottom right
TextStyle h2Style = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 16.0.sp,
  //fontWeight: FontWeight.w400,
);

//used in bag page to style ordered item price at bottom right
TextStyle priceStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 14.0.sp,
  //fontWeight: FontWeight.w400,
);

TextStyle discountedPriceStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: const Color.fromRGBO(255, 62, 62, 1),
  fontSize: 14.0.sp,
  //fontWeight: FontWeight.w400,
);

//user in bag page to style item title
TextStyle h2StyleWithW700 = const TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

//used in bag page to style ordered item parameter name
TextStyle size15StyleWithopacuty0_7 = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white.withOpacity(0.7),
  fontSize: 15,
  letterSpacing: 0.2,
);

//used in bag page to style ordered item parameter value
TextStyle size15Style = const TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 15,
  letterSpacing: 0.2,
);

//used in bag page to style plus and minus icon texts
TextStyle symbolStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white.withOpacity(0.3),
  fontSize: 45,
  fontWeight: FontWeight.w200,
);

//used in bag screen to style count of item order
TextStyle countStyle = const TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.w300,
);

//used in navbaritem to style selected item text
TextStyle selectedNavBarItemTextStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Theme.of(StaticBuildContext.instance.context).colorScheme.secondary,
  fontSize: 10.0.sp,
  fontWeight: FontWeight.normal,
  letterSpacing: 0.2,
);

//used in navbaritem to style unselected item text
TextStyle unselectedNavBarItemTextStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 10.0.sp,
  fontWeight: FontWeight.normal,
  letterSpacing: 0.2,
);

//used in homepage to style category name
TextStyle size34TextStyle = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 34.0.sp,
  fontWeight: FontWeight.w600,
);

//used in element of staggeredgrid of categories to style 'HalfDivided' element placing on top and emphasize campaing
TextStyle size36TextStylePink = TextStyle(
  //  fontFamily: _textStyleName,
  color: Theme.of(StaticBuildContext.instance.context).colorScheme.secondary,
  fontSize: 36,
  fontWeight: FontWeight.bold,
);

//used in homepage to style category slogan
TextStyle size11TextStyleGrey = TextStyle(
  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 11.0.sp,
  letterSpacing: 0.2,
);

//used in home page to style 'View All' text
TextStyle size11TextStyleWhite = TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 11.0.sp,
  fontWeight: FontWeight.w600,
);

//used in CustomTextFieldWidget to style text which will be type by user
TextStyle textFieldTypingTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14.0.sp,
  fontWeight: FontWeight.normal,
);

//used in hope to finish earlisest widget to style category name
TextStyle size48TextStyle = TextStyle(
  color: Colors.white,
  fontSize: 48.sp,
  fontWeight: FontWeight.bold,
);

//used in middle button to style title text
TextStyle middleSizeButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14.sp,
);

//used in product widget placing on home page to style how many people which should be participant
TextStyle size10TextStyleGrey = TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.grey,
  fontSize: 10.0.sp,
  fontWeight: FontWeight.normal,
  letterSpacing: 0.2,
);

//used in product widget placing on home page to style STORE title
// TextStyle size11TextStyleGrey = TextStyle(
//   //  //  fontFamily: _textStyleName,
//   color: Colors.grey,
//   fontSize: 11.0.sp,
//   fontWeight: FontWeight.normal,
//   letterSpacing: 0.2,
// );

//used in product widget placing on home page to style product title
TextStyle size16TextStyle = TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 16.0.sp,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.2,
);

TextStyle size14TextStyle = TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 14.0.sp,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.2,
);

TextStyle size24TextStyle = TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 24.0.sp,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.2,
);

//used in product widget placing on home page to style title of category of product(placing on image)
TextStyle categoryIndicatorTextStyle = const TextStyle(
  //  //  fontFamily: _textStyleName,
  color: Colors.white,
  fontSize: 13.5,
  fontWeight: FontWeight.w600,
);
