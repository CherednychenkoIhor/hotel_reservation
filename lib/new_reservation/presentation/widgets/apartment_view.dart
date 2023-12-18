import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_reservation/auth/application/auth_bloc.dart';
import 'package:hotel_reservation/core/models/apartment.dart';
import 'package:hotel_reservation/core/models/reservation.dart';
import 'package:hotel_reservation/new_reservation/application/new_reservation_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ApartmentView extends StatefulWidget {
  const ApartmentView({
    super.key,
    required this.apartment,
    this.isYourApartments = false,
    this.onCancel,
  });

  final Apartment apartment;

  final bool isYourApartments;

  final VoidCallback? onCancel;

  @override
  State<ApartmentView> createState() => _ApartmentViewState();
}

class _ApartmentViewState extends State<ApartmentView> {
  final CarouselController _pageController = CarouselController();

  final TextEditingController descriptionController = TextEditingController();

  final DateRangePickerController controller = DateRangePickerController();

  int maxDays = 365;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(child: Text('${widget.apartment.name}')),
            Container(child: Text('${widget.apartment.description}')),
            Container(child: Text('Rooms: ${widget.apartment.rooms}')),
            Container(child: Text('Price: ${widget.apartment.price} \$')),
            Container(child: Text('Location: ${widget.apartment.location}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 20),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      initialPage: 0,
                    ),
                    carouselController: _pageController,
                    itemCount: widget.apartment.photos.length,
                    itemBuilder: (context, index, int pageViewIndex) {
                      return Image.network(
                        widget.apartment.photos[index],
                      );
                    },
                  ),
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) => widget.isYourApartments
                      ? cancelApartmentsDialog(context)
                      : createApartmentsDialog(context),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  widget.isYourApartments ? 'Cancel' : 'Reservation',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createApartmentsDialog(BuildContext context) {
    return BlocListener<NewReservationBloc, NewReservationState>(
      listener: (context, state) {},
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: CupertinoAlertDialog(
          title: Text(
            'Reservation apartment',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          content: Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 395,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                    ),
                  ),
                  SfDateRangePicker(
                    onSelectionChanged: (dateArgs) {
                      if (dateArgs.value is PickerDateRange) {
                        PickerDateRange selectedDate =
                            dateArgs.value as PickerDateRange;
                        for (final date in widget.apartment.selectedDays) {
                          if (selectedDate.startDate != null &&
                              selectedDate.endDate != null) {
                            if (selectedDate.startDate!.isBefore(date) &&
                                selectedDate.endDate!.isAfter(date)) {
                              controller.selectedRange = PickerDateRange(
                                selectedDate.startDate,
                                date.subtract(const Duration(days: 1)),
                              );
                            }
                          }
                        }
                      }
                    },
                    controller: controller,
                    selectionMode: DateRangePickerSelectionMode.extendableRange,
                    selectableDayPredicate: (date) {
                      for (final selectedDate
                          in widget.apartment.selectedDays) {
                        if (DateFormat.yMMMd().format(selectedDate) ==
                            DateFormat.yMMMd().format(date)) {
                          return false;
                        }
                      }
                      return true;
                    },
                    showTodayButton: true,
                    enablePastDates: false,
                    maxDate: DateTime.now().add(const Duration(days: 365)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: InkWell(
                      onTap: () {
                        controller.selectedRange = null;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
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
              child: const Text('Reserve'),
              onPressed: () {
                if (controller.selectedRange?.endDate == null ||
                    controller.selectedRange?.startDate == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Nothing is selected',
                      ),
                    ),
                  );
                }
                int selectedDays = controller.selectedRange!.endDate!
                    .difference(controller.selectedRange!.startDate!)
                    .inDays;
                if (selectedDays == 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Nothing is selected',
                      ),
                    ),
                  );
                }

                DateTime startDate = controller.selectedRange!.startDate!;
                List<DateTime> selectedDaysList = [];
                while (startDate.isBefore(controller.selectedRange!.endDate!)) {
                  selectedDaysList = [...selectedDaysList, startDate];
                  startDate = startDate.add(Duration(days: 1));
                }
                selectedDaysList = [...selectedDaysList, startDate];
                context
                    .read<NewReservationBloc>()
                    .add(NewReservationEvent.reserveApartments(
                      reservation: Reservation(
                        apartmentId: widget.apartment.apartmentId,
                        description: descriptionController.text,
                        location: widget.apartment.location,
                        price: widget.apartment.price * selectedDays,
                        selectedDays: selectedDaysList,
                      ),
                      user: context.read<AuthBloc>().state.user!,
                    ));
                context
                    .read<NewReservationBloc>()
                    .add(NewReservationEvent.clear());
                context
                    .read<NewReservationBloc>()
                    .add(NewReservationEvent.fetchApartments());
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget cancelApartmentsDialog(BuildContext context) {
    return BlocListener<NewReservationBloc, NewReservationState>(
      listener: (context, state) {},
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: CupertinoAlertDialog(
          title: Text(
            'Cancel eeservation apartment',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          content: Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Are you seriously wanna cancel reservation?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              child: const Text('Yes'),
              onPressed: () {
                if (widget.onCancel != null) {
                  widget.onCancel!();
                }

                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
