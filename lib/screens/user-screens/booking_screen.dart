import 'package:drapp/data/available_times.dart';
import 'package:drapp/screens/user-screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  static const routeName = '/bookings';

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
    print(args.value);
  }

  var today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bookings'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 250,
                color: Colors.white10,
                child: Row(
                  children: [
                    SfDateRangePicker(
                      view: DateRangePickerView.month,
                      onSelectionChanged: _onSelectionChanged,
                      // selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Available time',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: AVAILABLE_TIMES.length,
                      itemBuilder: (ctx, index) => Text(today.toIso8601String()),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
