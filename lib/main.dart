import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/app/presentation/app.dart';

Future<void> main() async {
  // Initial
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    AppConfig.instance.initialize('prod'),
    configureDependencies(),
  ]);

  runApp(const App());
}
