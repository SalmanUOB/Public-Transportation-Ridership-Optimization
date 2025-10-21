import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StationsRecord extends FirestoreRecord {
  StationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "cityID" field.
  DocumentReference? _cityID;
  DocumentReference? get cityID => _cityID;
  bool hasCityID() => _cityID != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Cityname" field.
  String? _cityname;
  String get cityname => _cityname ?? '';
  bool hasCityname() => _cityname != null;

  // "describtion" field.
  String? _describtion;
  String get describtion => _describtion ?? '';
  bool hasDescribtion() => _describtion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _price = castToType<int>(snapshotData['price']);
    _adress = snapshotData['adress'] as String?;
    _cityID = snapshotData['cityID'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _cityname = snapshotData['Cityname'] as String?;
    _describtion = snapshotData['describtion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Stations');

  static Stream<StationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StationsRecord.fromSnapshot(s));

  static Future<StationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StationsRecord.fromSnapshot(s));

  static StationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStationsRecordData({
  String? name,
  LatLng? location,
  int? price,
  String? adress,
  DocumentReference? cityID,
  String? image,
  String? cityname,
  String? describtion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'price': price,
      'adress': adress,
      'cityID': cityID,
      'image': image,
      'Cityname': cityname,
      'describtion': describtion,
    }.withoutNulls,
  );

  return firestoreData;
}

class StationsRecordDocumentEquality implements Equality<StationsRecord> {
  const StationsRecordDocumentEquality();

  @override
  bool equals(StationsRecord? e1, StationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.price == e2?.price &&
        e1?.adress == e2?.adress &&
        e1?.cityID == e2?.cityID &&
        e1?.image == e2?.image &&
        e1?.cityname == e2?.cityname &&
        e1?.describtion == e2?.describtion;
  }

  @override
  int hash(StationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.price,
        e?.adress,
        e?.cityID,
        e?.image,
        e?.cityname,
        e?.describtion
      ]);

  @override
  bool isValidKey(Object? o) => o is StationsRecord;
}
