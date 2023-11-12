import 'package:flutter/material.dart';
import 'package:hotelsgo/core/utils/app-assets.dart';
import 'package:hotelsgo/core/utils/app_style.dart';
import 'package:hotelsgo/core/utils/extensions.dart';
import 'package:hotelsgo/core/widgets/text_field.dart';
import 'package:hotelsgo/features/booking_screens/presentation/widgets/bottom_sheet.dart';
import 'package:hotelsgo/features/booking_screens/presentation/widgets/white_container.dart';
import 'package:intl/intl.dart';
import '../../../../core/utils/app-string.dart';
import '../widgets/custom_rectangle.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTimeRange? selectedDateRange;
  String dropdownValue1 = AppStrings.selectNationality;
  String dropdownValue2 = '1 Room, 2 adult, 0 children';

  Future<void> _selectDateRange(BuildContext context) async {
    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
      initialDateRange: selectedDateRange ?? DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(days: 7)),
      ),
    );

    if (picked != null) {
      setState(() {
        selectedDateRange = picked;
      });
    }
  }
  String _formatDate(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }
  List<String> nationalities = [
    "United States",
    "Canada",
    // Add more nationalities as needed
  ];
  void _showBottomSheetPassengers() {
    showModalBottomSheet(
        backgroundColor: Colors.grey.shade200,
        isScrollControlled: true,
        context: context,
        builder: (context) => const PassengersBottomSheet()

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            backgroundImage,
            titleRectangle,
            titleRectangleWhite,
            title,
            orangeContainer,
            filterSearchContainer,
          ],
        ),
      ),
    );
  }
  get backgroundImage => Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
          image:  AssetImage(AppAssets.backgroundImage,),
          fit: BoxFit.cover,
        )
    ),
  );
  get customPaint =>  CustomPaint(
    size: Size(190.w,130.h), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter2(),
  );
  get titleRectangle => Positioned(
    right: 302.w,
    child: Column(
      children: [
        SizedBox(height: 170.h,),
        customPaint,
      ],
    ),
  );
  get customPaint2 => CustomPaint(
    size: Size(190.w,130.h), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter(),
  );
  get titleRectangleWhite => Positioned(
    right: 305.w,
    child: Column(
      children: [
        SizedBox(height: 170.h,),
        customPaint2,
      ],
    ),
  );
  get hotelsSearchText => Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding:  EdgeInsets.only(left: 33.w),
      child: Text(AppStrings.hotelsSearch,style: getRegularTextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17
      ),),
    ),
  );
  get title => Column(
    children: [
      SizedBox(height: 308.h,),
      hotelsSearchText,
    ],
  );
  get findHotels => const Text(AppStrings.findHotels,style: TextStyle(color: Colors.white,fontSize: 18),);
  get searchIcon => const Icon(Icons.search,size: 35,color: Colors.white,);
  get button => Center(
    child: Container(
      width: 352.w,
      height: 340.h,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: (){
          _showBottomSheetPassengers();
        },
        child: Padding(
          padding:  EdgeInsets.only(bottom: 15.h,left: 100.w),
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              findHotels,
              const SizedBox(width: 15,),
              searchIcon,
            ],
          ),
        ),
      ),
    ),
  );
  get orangeContainer => Column(
    children: [
      SizedBox(height: 425.h,),
      button
    ],
  );
  get selectCityText => const MyTextField3(hintText: AppStrings.selectCity, obsecureText: false);
  get selectCityTextField => Column(
    children: [
      SizedBox(height:6.h,),
      selectCityText,
    ],
  );
  get whiteRegularContainer => const WhiteContainer();
  get selectCity => Stack(
    children: [
      whiteRegularContainer,
      selectCityTextField,
    ],
  );
  get selectDateRangeField =>Column(
    children: [
      SizedBox(height:7.h,),
      Center(
        child: SizedBox(
          height: 50.h,
          width: 300.w,
          child:MyTextField4(
            suffixicon: const Icon(Icons.cancel,color: Colors.grey,),
            onTap: () => _selectDateRange(context),
            controller: TextEditingController(
              text: selectedDateRange != null
                  ? '${_formatDate(selectedDateRange!.start)} ==> ${_formatDate(selectedDateRange!.end)}'
                  : AppStrings.selectRange2,
            ),
            hintText: AppStrings.selectRange, obsecureText: false,
          ),
        ),
      ),
    ],
  );
  get selectDateRange => Stack(
    children: [
      whiteRegularContainer,
      selectDateRangeField,
    ],
  );
  get selectNationalityDropDown => Column(
    children: [
      SizedBox(height:7.h,),
      Center(
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 40), // Adjust padding
          ),
          style: const TextStyle(fontSize: 16, color: Colors.blue),
          hint: const Text(
            AppStrings.selectNationality,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,color: Colors.blue),
          ),// Adjust font size
          value: dropdownValue1,
          items: <String>[AppStrings.selectNationality,AppStrings.egyptian, AppStrings.american, AppStrings.canadian,AppStrings.russian]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.blue), // Adjust font size
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue1 = newValue!;
            });
          },
          icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey,size: 25,),
          validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.pleaseChoose;
              }
            return null;
          },
        ),
      )
    ],
  );
  get selectNationality => Stack(
    children: [
      whiteRegularContainer,
      selectNationalityDropDown,
    ],
  );
  get selectRoomsDropDown => Column(
    children: [
      SizedBox(height:7.h,),
      Center(
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 40), // Adjust padding
          ),
          style: const TextStyle(fontSize: 16, color: Colors.blue), // Adjust font size
          value: dropdownValue2,
          items: <String>[AppStrings.room1,AppStrings.room2, AppStrings.room3, AppStrings.room4,AppStrings.room5]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.blue), // Adjust font size
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue1 = newValue!;
            });
          },
          icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey,size: 25,),
          validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.pleaseChoose;
              }
            return null;
          },
        ),
      ),
    ],
  );
  get selectRoom => Stack(
    children: [
      whiteRegularContainer,
      selectRoomsDropDown,
    ],
  );
  get filterSearch => Center(
    child: Container(
      width: 352.w,
      height: 340.h,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Column(
        children: [
          SizedBox(height: 14.h,),
          selectCity,
          SizedBox(height: 14.h,),
          selectDateRange,
          SizedBox(height: 14.h,),
          selectNationality,
          SizedBox(height: 14.h,),
          selectRoom,
        ],
      ),
    ),
  );
  get filterSearchContainer => SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 365.h,),
        filterSearch,
      ],
    ),
  );
}
