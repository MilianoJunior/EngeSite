import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class InfoEmailsRecord extends FirestoreRecord {
  InfoEmailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Mensagem" field.
  String? _mensagem;
  String get mensagem => _mensagem ?? '';
  bool hasMensagem() => _mensagem != null;

  // "Assunto" field.
  String? _assunto;
  String get assunto => _assunto ?? '';
  bool hasAssunto() => _assunto != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _telefone = snapshotData['Telefone'] as String?;
    _email = snapshotData['Email'] as String?;
    _mensagem = snapshotData['Mensagem'] as String?;
    _assunto = snapshotData['Assunto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('infoEmails');

  static Stream<InfoEmailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfoEmailsRecord.fromSnapshot(s));

  static Future<InfoEmailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfoEmailsRecord.fromSnapshot(s));

  static InfoEmailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InfoEmailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfoEmailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfoEmailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfoEmailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfoEmailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfoEmailsRecordData({
  String? nome,
  String? telefone,
  String? email,
  String? mensagem,
  String? assunto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Telefone': telefone,
      'Email': email,
      'Mensagem': mensagem,
      'Assunto': assunto,
    }.withoutNulls,
  );

  return firestoreData;
}

class InfoEmailsRecordDocumentEquality implements Equality<InfoEmailsRecord> {
  const InfoEmailsRecordDocumentEquality();

  @override
  bool equals(InfoEmailsRecord? e1, InfoEmailsRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.mensagem == e2?.mensagem &&
        e1?.assunto == e2?.assunto;
  }

  @override
  int hash(InfoEmailsRecord? e) => const ListEquality()
      .hash([e?.nome, e?.telefone, e?.email, e?.mensagem, e?.assunto]);

  @override
  bool isValidKey(Object? o) => o is InfoEmailsRecord;
}
