import 'package:flutter/material.dart';

class Fechas extends StatefulWidget {
  const Fechas({super.key});

  @override
  State<Fechas> createState() => _FechasState();
}

class _FechasState extends State<Fechas> {
  var fecha = "";
  DateTime fechaactual = DateTime.now();
  TimeOfDay horaactual = TimeOfDay.now();
  DateTime fecha1 = DateTime.now();
  DateTime fecha2 = DateTime.now();

  Future<String> _selectDate(BuildContext context) async {
    final DateTime? fecha = await showDatePicker(
        context: context,
        initialDate: fechaactual,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    final TimeOfDay? hora = await showTimePicker(
      context: context,
      initialTime: horaactual,
    );
    return "$fecha:$hora";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              _selectDate(context).then((value) {
                fecha = value;
                setState(() {});
              });
            },
            child: const Icon(Icons.date_range),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(fecha.toString()),
        ],
      ),
    );
  }
}
