import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/dashboard/presentation/pages/home_page.dart';
import 'package:atomic_architecture_poc/features/list/presentation/states/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workmanager/workmanager.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    notificationTask(inputData!['text']);
    return Future.value(true);
  });
}
void notificationTask(String text) async {
  print(text);
}

void main() {
  runApp(const MyApp());

  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => SearchCubit(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: FoundationColors.appBarBackground, // Use the foundation color
          scaffoldBackgroundColor: FoundationColors.cardBackground, // Use the foundation color
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: FoundationColors.textPrimary, // Use the foundation color
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}