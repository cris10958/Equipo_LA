import 'package:flutter/material.dart';

class RutinaEjecucion extends StatefulWidget {
  const RutinaEjecucion({super.key});

  @override
  RutinaEjecucionState createState() => RutinaEjecucionState();
}

class RutinaEjecucionState extends State<RutinaEjecucion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/dark-cells.jpg'),
            fit: BoxFit.cover
          ),
        ),
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Tiempo restante', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          border: Border.all(color: Colors.cyan, width: 2)
                        ),
                        child: const Text('10', style: TextStyle(color: Colors.white, fontSize: 120, backgroundColor: Colors.black54),)
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 47),
                        decoration: BoxDecoration(
                          color: const Color(0xffB517E3),
                          border: Border.all(color: Colors.cyan, width: 2)
                        ),
                        child: const Text('minutos', style: TextStyle(color: Colors.white, backgroundColor: Color(0xffB517E3)),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              border: Border.all(color: Colors.cyan, width: 2)
                          ),
                          child: const Text('10', style: TextStyle(color: Colors.white, fontSize: 120, backgroundColor: Colors.black54),)
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 42),
                        decoration: BoxDecoration(
                            color: const Color(0xffB517E3),
                            border: Border.all(color: Colors.cyan, width: 2)
                        ),
                        child: const Text('segundos', style: TextStyle(color: Colors.white, backgroundColor: Color(0xffB517E3)),),
                      )
                    ],
                  ),
                ],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Etapa en curso', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal, backgroundColor: Colors.black54),),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(50, 10, 110, 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nombre etapa', style: TextStyle(color: Colors.orange, fontSize: 18),),
                    Text('Tiempo', style: TextStyle(color: Colors.orange, fontSize: 18),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff7CBC09), width: 2),
                  color: const Color(0xffE37517)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Serie 1', style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: const Text('10 10', style: TextStyle(color: Colors.white, fontSize: 18, backgroundColor: Colors.black54),),
                    ),
                    const Icon(Icons.check, color: Colors.white,)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff7CBC09), width: 2),
                    color: const Color(0xffE37517)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Descanso 1', style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: const Text('10 10', style: TextStyle(color: Colors.white, fontSize: 18, backgroundColor: Colors.black54),),
                    ),
                    const Icon(Icons.check, color: Colors.white,)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff7CBC09), width: 2),
                    color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Serie 2', style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: const Text('10 10', style: TextStyle(color: Colors.white, fontSize: 18, backgroundColor: Colors.black54),),
                    ),
                    const Icon(Icons.arrow_back, color: Colors.black54,)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff7CBC09), width: 2),
                    color: const Color(0xffE37517)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Descanso 2', style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: const Text('10 10', style: TextStyle(color: Colors.white, fontSize: 18, backgroundColor: Colors.black54),),
                    ),
                    const Icon(Icons.check, color: Colors.white,)
                  ],
                ),
              ),
            ],
          )
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: const Color(0xff7CBC09),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              onPressed: () => {},
              child: const Icon(Icons.pause),
            ),
            FloatingActionButton(
              onPressed: () => {},
              backgroundColor: const Color(0xff7CBC09),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Icon(Icons.stop),
            ),
          ],
        ),
      ),
    );
  }
}