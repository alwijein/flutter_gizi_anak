import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gizi_anak/app/data/models/data_gizi_anak_model.dart/data_gizi_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/profile_anak_model/profile_anak_model.dart';
import 'package:flutter_gizi_anak/app/data/models/user_model/user_model.dart';
import 'package:flutter_gizi_anak/extensions/extensions.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

part 'user_services/auth_services.dart';
part 'user_services/user_services.dart';
part 'monitoring_anak_services.dart';
