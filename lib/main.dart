import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_feature/app.dart';
import 'package:test_bloc_feature/core/bloc_observer.dart';
import 'core/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }

  await di.init();
  runApp(const MyApp());
}
