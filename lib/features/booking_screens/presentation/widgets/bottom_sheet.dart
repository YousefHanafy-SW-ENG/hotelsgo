import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelsgo/core/utils/app-assets.dart';
import 'package:hotelsgo/core/utils/extensions.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';

class PassengersBottomSheet extends StatefulWidget {
  const PassengersBottomSheet({Key? key}) : super(key: key);

  @override
  State<PassengersBottomSheet> createState() => _PassengersBottomSheetState();
}

class _PassengersBottomSheetState extends State<PassengersBottomSheet> {
  int count = 1;
  int count2 = 1;
  int count3 = 1;
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height * 0.98,
      width: 500.w,
      child:  Column(
        children: [
         bottomSheetTitle,
         SizedBox(height: 22.h,),
         rooms,
         SizedBox(height: 22.h,),
         room1,
         SizedBox(height: 22.h,),
         pet,
         SizedBox(height: 126.h,),
         apply,
        ],
      ),
    );
  }
  get roomAndGuests => const Text(
    AppStrings.roomsAndGuests,
    style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500
    ),
  );
  get cancelIcon => InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: SvgPicture.asset(AppAssets.cancelIcon,width: 24.h,));
  get bottomSheetTitle => Container(
    width: 500.w,
    height: height*0.091,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white
    ),
    child:   Row(
      children: [
        SizedBox(width: 111.w,),
        roomAndGuests,
        SizedBox(width: 77.w,),
        cancelIcon,
      ],
    ),
  );
  get roomsText => const Text(AppStrings.rooms,
    style: TextStyle(
        color: Colors.black87,
        fontSize: 20
    ),
  );
  get roomsMinusIcon => InkWell(
    onTap: (){
      setState(() {
        if(count>1){
          count--;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: (count==1)?Colors.grey.shade400:Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child:    Icon(
        Icons.remove,
        color: (count==1)?Colors.grey.shade400:Colors.blue,
      ),
    ),
  );
  get roomsCount => Text(
    "$count",
    style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamilies.almarai),
  );
  get roomsPlusIcon => InkWell(
    onTap: (){
      setState(() {
        if(count>=1){
          count++;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.blue,
      ),
    ),
  );
  get rooms => Container(
    width: 345.w,
    height: 77.h,
    decoration:  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child:  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20,),
        roomsText,
        const SizedBox(width: 89,),
        roomsMinusIcon,
        const SizedBox(width: 16,),
        roomsCount,
        const SizedBox(width: 16,),
        roomsPlusIcon,
      ],
    ),
  );
  get room1Text => Padding(
    padding: EdgeInsets.only(left: 21.w,top: 12.h),
    child: const Text(AppStrings.roomOne,
      style: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.w500
      ),
    ),
  );
  get adultsText => const Text(AppStrings.adults,
    style: TextStyle(
        color: Colors.black87,
        fontSize: 20
    ),
  );
  get adultsMinus => InkWell(
    onTap: (){
      setState(() {
        if(count2>1){
          count2--;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: (count2==1)?Colors.grey.shade400:Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child:    Icon(
        Icons.remove,
        color: (count2==1)?Colors.grey.shade400:Colors.blue,
      ),
    ),
  );
  get adultsCount => Text(
    "$count2",
    style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamilies.almarai),
  );
  get adultsPlus => InkWell(
    onTap: (){
      setState(() {
        if(count2>=1&&count2<4){
          count2++;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: (count2==4)?Colors.grey.shade400:Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Icon(
        Icons.add,
        color: (count2==4)?Colors.grey.shade400:Colors.blue,
      ),
    ),
  );
  get adults => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 20,),
      adultsText,
      const SizedBox(width: 95,),
      adultsMinus,
      const SizedBox(width: 16,),
      adultsCount,
      const SizedBox(width: 16,),
      adultsPlus,
    ],
  );
  get childrenText => const Text(AppStrings.children,
    style: TextStyle(
        color: Colors.black87,
        fontSize: 20
    ),
  );
  get childrenMinus => InkWell(
    onTap: (){
      setState(() {
        if(count3>1){
          count3--;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: (count3==1)?Colors.grey.shade400:Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child:    Icon(
        Icons.remove,
        color: (count3==1)?Colors.grey.shade400:Colors.blue,
      ),
    ),
  );
  get childrenCount => Text(
    "$count3",
    style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamilies.almarai),
  );
  get childrenPlus => InkWell(
    onTap: (){
      setState(() {
        if(count3>=1&&count3<4){
          count3++;
        }
      });
    },
    child: Container(
      width: 54.h,
      height: 40.w,
      decoration: BoxDecoration(
        border: Border.all(
            color: (count3==4)?Colors.grey.shade400:Colors.blue,
            width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Icon(
        Icons.add,
        color: (count3==4)?Colors.grey.shade400:Colors.blue,
      ),
    ),
  );
  get children => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 20,),
      childrenText,
      const SizedBox(width: 78,),
      childrenMinus,
      const SizedBox(width: 16,),
      childrenCount,
      const SizedBox(width: 16,),
      childrenPlus,
    ],
  );
  get ageOfChild => const Text(AppStrings.ageOfChild1,
    style: TextStyle(
        color: Colors.black87,
        fontSize: 20
    ),
  );
  get years14 => const Text(AppStrings.years14,
    style: TextStyle(
        color: Colors.grey,
        fontSize: 18
    ),
  );
  get ageOfChildren => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(width: 40,),
      ageOfChild,
      const SizedBox(width: 60,),
      years14,
    ],
  );
  get room1 => Container(
    width: 345.w,
    height: 290.h,
    decoration:  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        room1Text,
        const SizedBox(height: 18,),
        adults,
        const SizedBox(height: 18,),
        children,
        const SizedBox(height: 18,),
        ageOfChildren,
        const SizedBox(height: 18,),
        ageOfChildren,
      ],
    ),
  );
  get petFriendlyText => const Text(AppStrings.petFriendly,
    style: TextStyle(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.w500
    ),
  );
  get petIcon => const Icon(Icons.info_outlined);
  get petFriendly => Row(
    children: [
      petFriendlyText,
      const SizedBox(width: 5,),
      petIcon,
    ],
  );
  get onlyShowPet => const Text(AppStrings.onlyShowStays,
    style: TextStyle(
        color: Colors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w500
    ),
  );
  get petFriendlyPart => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 9,),
      petFriendly,
      const SizedBox(height: 4,),
      onlyShowPet,
    ],
  );
  get petSwitch => CupertinoSwitch(
    value: switchValue,
    onChanged: (value) {
      setState(() {
        switchValue = value;
      });
    },
  );
  get pet => Container(
    width: 345.w,
    height: 77.h,
    decoration:  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child:   Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 18,),
        petFriendlyPart,
        const SizedBox(width: 55,),
        petSwitch,
      ],
    ),
  );
  get apply => Container(
    width: 335.w,
    height: 65.h,
    decoration:  BoxDecoration(
      color: Colors.blue.shade400,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: const Center(
      child: Text(AppStrings.apply,
        style:TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600
        ) ,),
    ),
  );
}