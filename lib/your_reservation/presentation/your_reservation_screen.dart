import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_reservation/new_reservation/presentation/widgets/apartment_view.dart';
import 'package:hotel_reservation/your_reservation/application/your_reservation_bloc.dart';

@RoutePage()
class YourReservationScreen extends StatefulWidget {
  const YourReservationScreen({super.key});

  @override
  State<YourReservationScreen> createState() => _YourReservationScreenState();
}

class _YourReservationScreenState extends State<YourReservationScreen> {
  late final YourReservationBloc _newReservationBloc =
      context.read<YourReservationBloc>();

  @override
  void initState() {
    super.initState();
    _newReservationBloc.add(YourReservationEvent.fetchApartments());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YourReservationBloc, YourReservationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Image(
                image: AssetImage('assets/images/hotel.png'),
                height: 72,
                width: 80,
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Rooms',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Services',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Review',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'About Me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
              ],
              flexibleSpace: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.srcATop,
                ),
                child: const Image(
                  image: AssetImage('assets/images/home.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(250.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Text(
                              'Your Reservation',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            context.popRoute();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Text(
                              'Back to Home',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            body: state.apartments.isEmpty
                ? const Center(
                    child: Text('Oops... We can\'t find any apartment for you'),
                  )
                : ListView.builder(
                    itemCount: state.apartments.length,
                    itemBuilder: (context, index) {
                      return ApartmentView(
                        apartment: state.apartments[index],
                        isYourApartments: true,
                        onCancel: () {
                          context.read<YourReservationBloc>().add(
                              YourReservationEvent.cancelReserveApartments(
                                  index: index));
                        },
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
