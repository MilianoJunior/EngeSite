import '/flutter_flow/flutter_flow_util.dart';
import 'servicos_widget.dart' show ServicosWidget;
import 'package:flutter/material.dart';

class ServicosModel extends FlutterFlowModel<ServicosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode1;
  TextEditingController? telefoneController1;
  String? Function(BuildContext, String?)? telefoneController1Validator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode2;
  TextEditingController? telefoneController2;
  String? Function(BuildContext, String?)? telefoneController2Validator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode3;
  TextEditingController? telefoneController3;
  String? Function(BuildContext, String?)? telefoneController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    telefoneFocusNode1?.dispose();
    telefoneController1?.dispose();

    telefoneFocusNode2?.dispose();
    telefoneController2?.dispose();

    telefoneFocusNode3?.dispose();
    telefoneController3?.dispose();
  }
}
