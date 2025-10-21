import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GovernoratesRecord extends FirestoreRecord {
  GovernoratesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Governorates');

  static Stream<GovernoratesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GovernoratesRecord.fromSnapshot(s));

  static Future<GovernoratesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GovernoratesRecord.fromSnapshot(s));

  static GovernoratesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GovernoratesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GovernoratesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GovernoratesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GovernoratesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GovernoratesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGovernoratesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class GovernoratesRecordDocumentEquality
    implements Equality<GovernoratesRecord> {
  const GovernoratesRecordDocumentEquality();

  @override
  bool equals(GovernoratesRecord? e1, GovernoratesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(GovernoratesRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is GovernoratesRecord;
}
