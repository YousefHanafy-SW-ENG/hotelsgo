// import 'dart:math';
// import 'package:flutter/cupertino.dart';
// hideKeyboard() => FocusManager.instance.primaryFocus!.unfocus();
// Logger logger=Logger();
//
// Future<Either<Failure, T>> execute<T>(Function() function) async {
//   try {
//     T value = await function.call();
//     return Right(value);
//   } on ServerException {
//     return Left(ServerFailure());
//   } on NoInternetConnectionException {
//     return Left(OfflineFailure());
//   }
// }
// double toRadians(double degrees) {
//   return degrees * pi / 180;
// }
// class AppGenericMethods {
//   static Map<String, dynamic>? getArguments(BuildContext context) =>
//       (ModalRoute.of(context))!.settings.arguments as Map<String, dynamic>?;
// }
// double convertToKm(int distance) {
//   // Convert the distance from meters to kilometers.
//   return distance / 1000.0;
// }
//
// int convertToMinutes(int seconds) {
//   // Calculate the number of minutes in the seconds.
//   int minutes = seconds ~/ 60;
//
//   // Calculate the remaining seconds.
//   int secondsRemaining = seconds % 60;
//
//   // If the remaining seconds are greater than zero, round up the minutes.
//   if (secondsRemaining > 0) {
//     minutes++;
//   }
//
//   // Return the number of minutes.
//   return minutes;
// }
// double calculateTotalCostForTrip(double distanceInKm ,  pricePerKm, double companyTax) {
//   // Calculate the base cost of the trip.
//   double baseCost = distanceInKm * pricePerKm;
//
//   // Calculate the company tax.
//   double companyTaxAmount = baseCost * companyTax / 100;
//
//   // Calculate the total cost of the trip.
//   double totalCost = baseCost + companyTaxAmount;
//    debugPrint("const is "+totalCost.toString());
//   // Return the total cost of the trip.
//   return double.parse(totalCost.toStringAsFixed(2));
// }
//
// double getFirstTwoDecimalNumbers(double number) {
//   // Convert the number to a string.
//   String numberString = number.toStringAsFixed(2);
//
//   // Split the number string at the decimal point.
//   List<String> numberSplit = numberString.split('.');
//
//   // Get the first two decimal numbers.
//   String decimalNumbers = numberSplit[1].substring(0, 2);
//
//   // Convert the decimal numbers back to a double.
//   double firstTwoDecimalNumbers = double.parse(decimalNumbers);
//
//   // Return the first two decimal numbers.
//   return firstTwoDecimalNumbers;
// }