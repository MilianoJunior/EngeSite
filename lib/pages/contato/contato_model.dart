import '/flutter_flow/flutter_flow_util.dart';
import 'contato_widget.dart' show ContatoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ContatoModel extends FlutterFlowModel<ContatoWidget> {
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
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Assunto widget.
  FocusNode? assuntoFocusNode;
  TextEditingController? assuntoController;
  String? Function(BuildContext, String?)? assuntoControllerValidator;
  // State field(s) for Mensagem widget.
  FocusNode? mensagemFocusNode;
  TextEditingController? mensagemController;
  String? Function(BuildContext, String?)? mensagemControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    assuntoFocusNode?.dispose();
    assuntoController?.dispose();

    mensagemFocusNode?.dispose();
    mensagemController?.dispose();
  }
}
