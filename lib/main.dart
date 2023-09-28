import 'package:flutter/material.dart';
import './crear_rutina.dart';
import './lista_rutina.dart';
import './rutina_ejecucion.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Focus-Fit';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: HomeTabsMenu(),
    );
  }
}

class HomeTabsMenu extends StatefulWidget {
   const HomeTabsMenu({super.key});

  @override
  State<HomeTabsMenu> createState() {
    return _HomeTabsMenuState();
  }
}

class _HomeTabsMenuState extends State<HomeTabsMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'imprima');
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Scaffold(appBar: AppBar(
              title: const Text('Lista de rutinas', style: titleStyle),
              centerTitle: true,
              backgroundColor: Colors.black,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2.0),
                child: Container(
                color: Colors.orange,
                height: 1.0,),
              ),
          ),
          body: ListaRutina(tabController: _tabController,),
          ),
          Scaffold(appBar: AppBar(
            title: const Text('Crear rutina', style: titleStyle),
            centerTitle: true,
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: Colors.orange,
                height: 4.0,),
            ),
          ),
          body: CrearRutina(tabController: _tabController),
          ),
          Scaffold(appBar: AppBar(
            title: const Text('Rutina en ejecucion', style: titleStyle),
            centerTitle: true,
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: const Color(0xFFE37517),
                height: 4.0,),
            ),
          ),
          body: const RutinaEjecucion(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color(0xFFE37517),
          child: TabBar(
            indicator: const BoxDecoration(color: Color(0xFF2ECAE8)),
            tabs: const <Widget>[
              Tab(
                  icon: Icon(Icons.list, size: 50.0,)
              ),
              Tab(
                  icon: Icon(Icons.add, size: 50.0,)
              ),
              Tab(
                  icon: Icon(Icons.play_arrow, size: 50.0,)
              ),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}