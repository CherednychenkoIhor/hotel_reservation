import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_reservation/auth/application/auth_bloc.dart';
import 'package:hotel_reservation/firebase_options.dart';
import 'package:hotel_reservation/home/application/home_bloc.dart';
import 'package:hotel_reservation/injector/injector.config.dart';
import 'package:hotel_reservation/navigation/app_router.dart';
import 'package:hotel_reservation/new_reservation/application/new_reservation_bloc.dart';
import 'package:hotel_reservation/your_reservation/application/your_reservation_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  GetIt getIt = GetIt.instance;

  getIt
    ..registerSingleton(FirebaseAuth.instanceFor(app: app))
    ..registerSingleton(FirebaseFirestore.instanceFor(app: app))
    ..registerSingleton(FirebaseStorage.instanceFor(app: app))
    ..init(environment: Environment.dev);

  runApp(MyApp(getIt: getIt));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.getIt});
  final GetIt getIt;

  @override
  Widget build(BuildContext context) {
    return Provider<GetIt>(
      create: (BuildContext context) => getIt,
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<AuthBloc>(
            create: (BuildContext context) {
              return getIt.get<AuthBloc>();
            },
          ),
          BlocProvider<HomeBloc>(
            create: (BuildContext context) {
              return getIt.get<HomeBloc>();
            },
          ),
          BlocProvider<NewReservationBloc>(
            create: (BuildContext context) {
              return getIt.get<NewReservationBloc>();
            },
          ),
          BlocProvider<YourReservationBloc>(
            create: (BuildContext context) {
              return getIt.get<YourReservationBloc>();
            },
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: AppRouter().config(),
        ),
      ),
    );
  }
}
