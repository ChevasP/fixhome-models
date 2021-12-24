import 'package:fixhome/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool switchValue = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        title: const Text(
          'Configuraciones',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            SwitchListTile(
              value: switchValue = true,
              onChanged: (newValue) => setState(() => switchValue = newValue),
              title: const Text(
                'Modo Oscuro',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
              subtitle: const Text(
                'Cambiar Tema',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
              tileColor: const Color(0xFFF5F5F5),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 500, 0, 0),
              child: IconButton(
                color: Colors.transparent,
                splashRadius: 30,
                iconSize: 60,
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePageWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
