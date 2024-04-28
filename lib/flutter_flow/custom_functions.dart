import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double ratingSummary(
  double totalRatings,
  double rating,
) {
  // get average rating to one decimal point from list of reviews
  if (totalRatings > 0) {
    return (rating +
            (totalRatings - rating) ~/ math.max((totalRatings ~/ 5), 1)) /
        2;
  } else {
    return rating;
  }
}

String ratingSummaryList(List<ReviewsRecord> rating) {
  if (rating.isEmpty) {
    return '-';
  }
  var ratingsSum = 0.0;
  for (final comment in rating) {
    ratingsSum += comment.rating!;
  }
  return (ratingsSum / rating.length).toStringAsFixed(1);
}

DateTime? month(DateTime? date) {
  DateTime today = DateTime.now();
  DateTime oneMonthago = today.subtract(Duration(days: 30));
  return oneMonthago;
}

double? averageRating(List<double> ratingAmount) {
  double roundDouble(double value, int places) {
    double mod = (10.0 * 10.0);
    return ((value * mod).round().toDouble() / mod);
  }

  if (ratingAmount == null || ratingAmount.isEmpty) {
    return 0;
  }
  double average = ratingAmount.reduce((x, y) => x + y) / ratingAmount.length;
  return roundDouble(average, 2);
}
