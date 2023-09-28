import 'package:flutter/material.dart';

class FilaNuevaRutina extends StatelessWidget {
  const FilaNuevaRutina({
    super.key,
    required this.tiempoTotal,
    required this.intervalos,
    required this.tabController,
});

  final String tiempoTotal;
  final String intervalos;
  final dynamic tabController;

  Future<void> _dialogQuererBorrar(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black54,
          title: const Text('Eliminar rutina', style: TextStyle(color: Colors.white),),
          content: const Text(
            'Estás seguro de querer eliminar\n'
                'esta rutina?'
          , style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
                _dialogBorrar(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _dialogBorrar(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black54,
          title: const Text('Eliminar rutina', style: TextStyle(color: Colors.white),),
          content: const Text(
            'La rutina ha sido eliminada correctamente'
            , style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
    const TextStyle contentStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white, backgroundColor: Color(0xff466a05));
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(4, 0, 15, 8),
                  child: const Text('Tiempo Total', style: titleStyle,),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  color: Colors.green,
                  child: Text(tiempoTotal, style: contentStyle,),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 0, 10, 8),
                  child: const Text('Intervalos', style: titleStyle,),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  color: Colors.green,
                  child: Text(intervalos, style: contentStyle,),
                )
              ],
            ),
          ),
          Column(
            children: [
              const Text('Acciones', style: titleStyle,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: TextButton(
                          onPressed: () => {
                            tabController.animateTo(1)
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff7CBC09))
                          ),
                          child: const Icon(Icons.edit, color: Colors.white,)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: TextButton(
                        onPressed: () => _dialogQuererBorrar(context),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff7CBC09))
                        ),
                        child: const Icon(Icons.restore_from_trash_outlined, color: Colors.white,)
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: TextButton(
                          onPressed: () => {
                            tabController.animateTo(2)
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff7CBC09))
                          ),
                          child: const Icon(Icons.play_arrow, color: Colors.white,)
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}