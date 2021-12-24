import 'package:fixhome/src/pages/setting_page.dart';

import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            'NUESTROS SERVICIOS',
            style: TextStyle(
              fontFamily: 'Poppins',
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
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment:
                                      const AlignmentDirectional(-0.05, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/913/400',
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.05, 0),
                                child: Stack(
                                  alignment: const AlignmentDirectional(
                                      0, 0.050000000000000044),
                                  children: const [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'CARPINTERIA',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: AlignmentDirectional(0.05, 0),
                                  child: Icon(
                                    Icons.chevron_right,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.1, 0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/913/400',
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: Stack(
                                    children: const [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0, 0.04),
                                        child: Text(
                                          'ALBAÑILERIA',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: AlignmentDirectional(0.05, 0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.1, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/913/400',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 0, 0),
                                child: Stack(
                                  children: const [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'CERRAJERÍA',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: AlignmentDirectional(0.05, 0),
                                  child: Icon(
                                    Icons.chevron_right,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment:
                                      const AlignmentDirectional(0.15, 0),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/913/400',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 0, 0),
                                child: Stack(
                                  children: const [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.05),
                                      child: Text(
                                        'ELECTRICIDAD',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: AlignmentDirectional(0.05, 0),
                                  child: Icon(
                                    Icons.chevron_right,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: IconButton(
                  splashRadius: 30,
                  iconSize: 90,
                  icon: const Icon(
                    Icons.settings_outlined,
                    size: 30,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsWidget(),
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
