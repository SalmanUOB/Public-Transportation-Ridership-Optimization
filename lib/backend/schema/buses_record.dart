import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusesRecord extends FirestoreRecord {
  BusesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "busID" field.
  int? _busID;
  int get busID => _busID ?? 0;
  bool hasBusID() => _busID != null;

  // "busSeats" field.
  int? _busSeats;
  int get busSeats => _busSeats ?? 0;
  bool hasBusSeats() => _busSeats != null;

  // "busDriverName" field.
  String? _busDriverName;
  String get busDriverName => _busDriverName ?? '';
  bool hasBusDriverName() => _busDriverName != null;

  // "stations" field.
  String? _stations;
  String get stations => _stations ?? '';
  bool hasStations() => _stations != null;

  // "availablesseat" field.
  int? _availablesseat;
  int get availablesseat => _availablesseat ?? 0;
  bool hasAvailablesseat() => _availablesseat != null;

  // "startSeat" field.
  int? _startSeat;
  int get startSeat => _startSeat ?? 0;
  bool hasStartSeat() => _startSeat != null;

  void _initializeFields() {
    _busID = castToType<int>(snapshotData['busID']);
    _busSeats = castToType<int>(snapshotData['busSeats']);
    _busDriverName = snapshotData['busDriverName'] as String?;
    _stations = snapshotData['stations'] as String?;
    _availablesseat = castToType<int>(snapshotData['availablesseat']);
    _startSeat = castToType<int>(snapshotData['startSeat']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buses');

  static Stream<BusesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusesRecord.fromSnapshot(s));

  static Future<BusesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusesRecord.fromSnapshot(s));

  static BusesRecord fromSnapshot(DocumentSnapshot snapshot) => BusesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusesRecordData({
  int? busID,
  int? busSeats,
  String? busDriverName,
  String? stations,
  int? availablesseat,
  int? startSeat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'busID': busID,
      'busSeats': busSeats,
      'busDriverName': busDriverName,
      'stations': stations,
      'availablesseat': availablesseat,
      'startSeat': startSeat,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusesRecordDocumentEquality implements Equality<BusesRecord> {
  const BusesRecordDocumentEquality();

  @override
  bool equals(BusesRecord? e1, BusesRecord? e2) {
    return e1?.busID == e2?.busID &&
        e1?.busSeats == e2?.busSeats &&
        e1?.busDriverName == e2?.busDriverName &&
        e1?.stations == e2?.stations &&
        e1?.availablesseat == e2?.availablesseat &&
        e1?.startSeat == e2?.startSeat;
  }

  @override
  int hash(BusesRecord? e) => const ListEquality().hash([
        e?.busID,
        e?.busSeats,
        e?.busDriverName,
        e?.stations,
        e?.availablesseat,
        e?.startSeat
      ]);

  @override
  bool isValidKey(Object? o) => o is BusesRecord;
}
