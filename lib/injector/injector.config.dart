// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/application/auth_bloc.dart' as _i10;
import '../auth/infrastructure/auth_repository.dart' as _i3;
import '../home/application/home_bloc.dart' as _i11;
import '../home/infrastructure/home_service.dart' as _i6;
import '../new_reservation/application/new_reservation_bloc.dart' as _i12;
import '../new_reservation/infrastructure/new_reservation_repository.dart'
    as _i8;
import '../your_reservation/application/your_reservation_bloc.dart' as _i13;
import '../your_reservation/infrastructure/your_reservation_repository.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository(
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i6.HomeService>(() => _i6.HomeService(
          firestore: gh<_i5.FirebaseFirestore>(),
          storage: gh<_i7.FirebaseStorage>(),
        ));
    gh.factory<_i8.NewReservationRepository>(() =>
        _i8.NewReservationRepository(firestore: gh<_i5.FirebaseFirestore>()));
    gh.factory<_i9.YourReservationRepository>(() =>
        _i9.YourReservationRepository(firestore: gh<_i5.FirebaseFirestore>()));
    gh.factory<_i10.AuthBloc>(
        () => _i10.AuthBloc(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i11.HomeBloc>(
        () => _i11.HomeBloc(homeService: gh<_i6.HomeService>()));
    gh.factory<_i12.NewReservationBloc>(() => _i12.NewReservationBloc(
          newReservationRepository: gh<_i8.NewReservationRepository>(),
          authRepository: gh<_i3.AuthRepository>(),
        ));
    gh.factory<_i13.YourReservationBloc>(() => _i13.YourReservationBloc(
          yourReservationRepository: gh<_i9.YourReservationRepository>(),
          authRepository: gh<_i3.AuthRepository>(),
        ));
    return this;
  }
}
