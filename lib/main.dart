import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/app/presentation/app.dart';

Future<void> main() async {
  // Initial
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.instance.initialize('prod');
  await Future.wait([
    configureDependencies(),
  ]);

  runApp(const App());
}
