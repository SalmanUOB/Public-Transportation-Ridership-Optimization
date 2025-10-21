import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "bookingStatus" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "bookingID" field.
  String? _bookingID;
  String get bookingID => _bookingID ?? '';
  bool hasBookingID() => _bookingID != null;

  // "bookingPrice" field.
  double? _bookingPrice;
  double get bookingPrice => _bookingPrice ?? 0.0;
  bool hasBookingPrice() => _bookingPrice != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "busID" field.
  String? _busID;
  String get busID => _busID ?? '';
  bool hasBusID() => _busID != null;

  // "busSeats" field.
  int? _busSeats;
  int get busSeats => _busSeats ?? 0;
  bool hasBusSeats() => _busSeats != null;

  // "busDriverName" field.
  String? _busDriverName;
  String get busDriverName => _busDriverName ?? '';
  bool hasBusDriverName() => _busDriverName != null;

  // "userSeat" field.
  int? _userSeat;
  int get userSeat => _userSeat ?? 0;
  bool hasUserSeat() => _userSeat != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _bookingStatus = snapshotData['bookingStatus'] as String?;
    _bookingID = snapshotData['bookingID'] as String?;
    _bookingPrice = castToType<double>(snapshotData['bookingPrice']);
    _time = snapshotData['time'] as String?;
    _busID = snapshotData['busID'] as String?;
    _busSeats = castToType<int>(snapshotData['busSeats']);
    _busDriverName = snapshotData['busDriverName'] as String?;
    _userSeat = castToType<int>(snapshotData['userSeat']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? userID,
  DateTime? date,
  String? bookingStatus,
  String? bookingID,
  double? bookingPrice,
  String? time,
  String? busID,
  int? busSeats,
  String? busDriverName,
  int? userSeat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'date': date,
      'bookingStatus': bookingStatus,
      'bookingID': bookingID,
      'bookingPrice': bookingPrice,
      'time': time,
      'busID': busID,
      'busSeats': busSeats,
      'busDriverName': busDriverName,
      'userSeat': userSeat,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.date == e2?.date &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.bookingID == e2?.bookingID &&
        e1?.bookingPrice == e2?.bookingPrice &&
        e1?.time == e2?.time &&
        e1?.busID == e2?.busID &&
        e1?.busSeats == e2?.busSeats &&
        e1?.busDriverName == e2?.busDriverName &&
        e1?.userSeat == e2?.userSeat;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.date,
        e?.bookingStatus,
        e?.bookingID,
        e?.bookingPrice,
        e?.time,
        e?.busID,
        e?.busSeats,
        e?.busDriverName,
        e?.userSeat
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
