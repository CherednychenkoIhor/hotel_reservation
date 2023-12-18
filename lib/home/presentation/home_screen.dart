import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/auth/application/auth_bloc.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/home/application/home_bloc.dart';
import 'package:hotel_reservation/navigation/app_router.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController roomsController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
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
                  const Text(
                    'HOTEL RESERVATION',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Book Online Now!',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  // todo uncomment
                  // if (!(state.user?.isAdmin ?? false))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          context.pushRoute(const NewReservationRoute());
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
                            'New Reservation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          context.pushRoute(const YourReservationRoute());
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
                            'Your Reservation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.user?.isAdmin ?? false)
                        InkWell(
                          onTap: () {
                            showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) =>
                                  createApartmentsDialog(context),
                            );
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
                              'Add New Apartments',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                          context.replaceRoute(AuthRoute());
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
                            'Sign Out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Hotel Rooms',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 3,
                  indent: 400,
                  endIndent: 400,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          child: Text(
                            'Single Room:',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 350,
                            child: Image(
                              image: AssetImage('assets/images/single.jpg'),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          child: Text(
                            'Double Room:',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 350,
                            child: Image(
                              image: AssetImage('assets/images/double.jpg'),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget createApartmentsDialog(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: CupertinoAlertDialog(
        title: Text(
          'Create new apartments',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        content: Material(
          color: Colors.transparent,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill name';
                    } else if (value.trim() == '') {
                      return 'Please fill name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: locationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill location';
                    } else if (value.trim() == '') {
                      return 'Please fill location';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Location',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: descriptionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill description';
                    } else if (value.trim() == '') {
                      return 'Please fill description';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: roomsController,
                  validator: (value) {
                    if (int.tryParse(value ?? '') == null) {
                      return 'Please input only numbers';
                    }
                    if (value == null || value.isEmpty) {
                      return 'Please fill rooms';
                    } else if (value.trim() == '') {
                      return 'Please fill rooms';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Rooms',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: priceController,
                  validator: (value) {
                    if (double.tryParse(value ?? '') == null) {
                      return 'Please input only numbers';
                    }
                    if (value == null || value.isEmpty) {
                      return 'Please fill price';
                    } else if (value.trim() == '') {
                      return 'Please fill price';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () async {
                    final picker = ImagePicker();
                    final pickedFiles = await picker.pickMultiImage();

                    if (pickedFiles.isNotEmpty) {
                      for (final image in pickedFiles) {
                        context.read<HomeBloc>().add(
                              HomeEvent.addPhoto(
                                photo: image,
                              ),
                            );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Nothing is selected',
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Text(
                      'Select photos',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                BlocConsumer<HomeBloc, HomeState>(
                  listener: (context, state) {
                    if (state.isSaved) {
                      context.popRoute();
                      context.read<HomeBloc>().add(const HomeEvent.clear());
                    }
                  },
                  builder: (context, state) {
                    return Text(
                      state.photos.isNotEmpty
                          ? state.photos.length.toString()
                          : 'Nothing is selected',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            child: const Text('Save'),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<HomeBloc>().add(
                      HomeEvent.addApartment(
                        apartment: Apartment(
                          name: nameController.text,
                          apartmentId: '',
                          location: locationController.text,
                          description: descriptionController.text,
                          rooms: int.tryParse(roomsController.text) ?? 0,
                          price: double.tryParse(priceController.text) ?? 0,
                          photos: [],
                          selectedDays: [DateTime.now().add(Duration(days: 7))],
                        ),
                      ),
                    );
              } else {
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
