import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './sesiones_spinner.dart';

class CrearRutina extends StatefulWidget {
  const CrearRutina({
    super.key,
    this.tabController
  });

  final dynamic tabController;

  @override
  CrearRutinaState createState() => CrearRutinaState();
}

class CrearRutinaState extends State<CrearRutina> {
  String? _selectedTime;
  int cantidadDescansos = 0;
  int cantidadSeries = 0;

  Future<void> _show() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        cancelText: 'Cancelar',
        helpText: 'Tiempo de descanso',
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true), child: Theme(
              data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.dark(
                primary: Colors.white,
                onSurface: Colors.cyanAccent
              ),
              textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.black12),
                  foregroundColor: MaterialStateColor.resolveWith((states) => const Color(0xff00BEE2)),
                  overlayColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                ),
              ),
          ), child: child!)
          );
        }
    );
    if (result != null) {
      setState(() {
        var df = DateFormat("h:mm a");
        var dt = df.parse(result.format(context));
        _selectedTime =  DateFormat('HH:mm').format(dt);
      });
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black54,
          title: const Text('Exitos!!', style: TextStyle(color: Colors.white),),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Tu rutina ha sido creada correctamente', style: TextStyle(color: Colors.white),),
                Text('Vamos a validar la lista', style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
                widget.tabController.animateTo(0);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/dark-cells.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Cantidad de descansos', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      width: 200,
                      height: 75,
                      child: IntegerSpinnerField(
                        value: cantidadDescansos,
                        autofocus: true,
                        onChanged: (int newValue) {
                          if (cantidadDescansos == newValue) {
                            // Avoid unnecessary redraws.
                            return;
                          }
                          setState(() {
                            // Update the value and redraw.
                            cantidadDescansos = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Tiempo de descanso', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(_selectedTime != null ? _selectedTime! : '00:00', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, backgroundColor: Colors.black54),),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                              ),
                              onPressed: _show,
                              child: const Text('Tiempo'),
                            )

                          ],
                        )
                    ),
                  ],
                ),
              ),

            ),
            Container(
              color: Colors.transparent,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Cantidad de series', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      width: 200,
                      height: 70,
                      child: IntegerSpinnerField(
                        value: cantidadSeries,
                        autofocus: true,
                        onChanged: (int newValue) {
                          if (cantidadSeries == newValue) {
                            // Avoid unnecessary redraws.
                            return;
                          }
                          setState(() {
                            // Update the value and redraw.
                            cantidadSeries = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Tiempo de descanso', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(_selectedTime != null ? _selectedTime! : '00:00', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, backgroundColor: Colors.black54),),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                              ),
                              onPressed: _show,
                              child: const Text('Tiempo'),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _showMyDialog,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
        ),
        child: const Icon(Icons.check, color: Colors.white,),
      ),
    );
  }
}