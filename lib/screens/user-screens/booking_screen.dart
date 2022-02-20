import 'package:drapp/data/available_times.dart';
import 'package:drapp/screens/user-screens/home_screen.dart';
import 'package:drapp/widgets/hour_item.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  static const routeName = '/bookings';
  

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  String _fullName = '';
  final String _phone = '';
  // var today = DateTime.now();

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    print(args.value);
  }

  void _onSubmit(){ 
    print(_fullName);
    print(_phone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bookings'),
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
                width: double.infinity,
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
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Available time',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(15),
                      children: [
                        const SizedBox(height: 15,),
                        GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: availableTimes.map((e) => HourItem(e.hours)).toList(),
                      ),
                      ]
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Appointment for ...',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            key: const ValueKey('fullName'),
                            autocorrect: true,
                            textCapitalization: TextCapitalization.words,
                            enableSuggestions: false,
                            validator: (value) {
                              if(value!.isEmpty || value.length < 4){
                                return 'Please enter a atleast 4 characters';
                              }
              
                              return null;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                            ),
                            onSaved: (value) {
                              _fullName = value!;
                            },
                          ),
                          const SizedBox(height: 15,),
                          TextFormField(
                            key: const ValueKey('phone'),
                            autocorrect: true,
                            textCapitalization: TextCapitalization.words,
                            enableSuggestions: false,
                            validator: (value) {
                              if(value!.isEmpty || value.length < 4){
                                return 'Please enter a valid Phone Number';
                              }
              
                              return null;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Contact Number',
                            ),
                            onSaved: (value) {
                              _fullName = value!;
                            },
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20)
                              ),
                              child: const Text('Book'),
                              onPressed: _onSubmit, 
                            ),
                          )
                        ],
                      ) 
                    )
                  ],
                ), 
              ),
            ],
          ),
        ),
      );
  }
}
