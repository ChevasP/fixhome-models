import 'package:fixhome/src/pages/home_page.dart';
import 'package:fixhome/src/providers/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//final List<String> _options = ["Inicio", "Configuraciones"];

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool switchValue = true;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Configuraciones',
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              SwitchListTile(
                value: mainProvider.mode,
                onChanged: (bool value) async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool("mode", value);
                  mainProvider.mode = value;
                },
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
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 500, 0, 0),
                child: IconButton(
                  splashRadius: 30,
                  iconSize: 60,
                  icon: const Icon(
                    Icons.home,
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
      ),
    );
  }
}
