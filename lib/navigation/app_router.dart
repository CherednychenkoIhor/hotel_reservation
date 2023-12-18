import 'package:auto_route/auto_route.dart';
import 'package:hotel_reservation/auth/presentation/auth_screen.dart';
import 'package:hotel_reservation/home/presentation/home_screen.dart';
import 'package:hotel_reservation/new_reservation/presentation/new_reservation_screen.dart';
import 'package:hotel_reservation/your_reservation/presentation/your_reservation_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: NewReservationRoute.page, path: '/new_reservation'),
        AutoRoute(page: YourReservationRoute.page, path: '/your_reservation'),
      ];
}
