class Appointment {
  // final DateTime? date;
  final String date;
  final String time;
  final String type;
  final String aFor;

  
  const Appointment({
    required this.date,
    required this.time,
    required this.aFor,
    this.type = 'loose filling'
  });

}