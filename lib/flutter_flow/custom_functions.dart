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

bool? verificarHorarioUtil(bool? resultado) {
  // Function to check the time of day, whether it is between 8 am and 6 pm, between Monday and Friday
  final now = DateTime.now();
  final dayOfWeek = now.weekday;
  final hour = now.hour;

  if (dayOfWeek >= 1 && dayOfWeek <= 5 && hour >= 8 && hour < 18) {
    resultado = true;
  } else {
    resultado = false;
  }

  return resultado;
}
