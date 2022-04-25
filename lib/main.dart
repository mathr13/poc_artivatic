import 'package:flutter/material.dart';

import 'injector.dart';
import 'main_artivatic.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inject();
  runApp(const ArtivaticApp());
}