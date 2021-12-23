import 'package:fixhome/src/models/establishment_model.dart';
import 'package:fixhome/src/services/establish_service.dart';
import 'package:fixhome/src/widgets/element_card.dart';
import 'package:flutter/material.dart';

class EstablecimientoWidget extends StatefulWidget {
  const EstablecimientoWidget({Key? key}) : super(key: key);

  @override
  State<EstablecimientoWidget> createState() => _EstablecimientoWidgetState();
}

class _EstablecimientoWidgetState extends State<EstablecimientoWidget> {
  final EstablecimientoService _establecimientoService =
      EstablecimientoService();
  List<Establish>? _listaMantenimientos;

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print("1. Inicio del widget");
    _downloadMantenimientos();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("2. Visualización del widget");
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 4.0),
      child: _listaMantenimientos == null
          ? const Center(
              child: SizedBox.square(
                  dimension: 50.0, child: CircularProgressIndicator()),
            )
          : _listaMantenimientos!.isEmpty
              ? const Center(child: Text("No hay mantenimientos registrados"))
              : ListView(
                  children: _listaMantenimientos!
                      .map((e) => EstablecimientoCard(model: e))
                      .toList(),
                ),
    );
  }

  _downloadMantenimientos() async {
    // ignore: avoid_print
    print("1.1 Invocación al servicio de mantenimiento");
    _listaMantenimientos = await _establecimientoService.getEstablishment();
    if (mounted) {
      setState(() {
        // ignore: avoid_print
        print("3. Cambio de estado");
      });
    }
  }
}
