import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserpreferencesRecord extends FirestoreRecord {
  UserpreferencesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  // "favouritedj" field.
  String? _favouritedj;
  String get favouritedj => _favouritedj ?? '';
  bool hasFavouritedj() => _favouritedj != null;

  // "homelocation" field.
  String? _homelocation;
  String get homelocation => _homelocation ?? '';
  bool hasHomelocation() => _homelocation != null;

  // "preferedcities" field.
  String? _preferedcities;
  String get preferedcities => _preferedcities ?? '';
  bool hasPreferedcities() => _preferedcities != null;

  // "locationpreferences" field.
  String? _locationpreferences;
  String get locationpreferences => _locationpreferences ?? '';
  bool hasLocationpreferences() => _locationpreferences != null;

  void _initializeFields() {
    _genre = snapshotData['genre'] as String?;
    _favouritedj = snapshotData['favouritedj'] as String?;
    _homelocation = snapshotData['homelocation'] as String?;
    _preferedcities = snapshotData['preferedcities'] as String?;
    _locationpreferences = snapshotData['locationpreferences'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userpreferences');

  static Stream<UserpreferencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserpreferencesRecord.fromSnapshot(s));

  static Future<UserpreferencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserpreferencesRecord.fromSnapshot(s));

  static UserpreferencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserpreferencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserpreferencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserpreferencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserpreferencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserpreferencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserpreferencesRecordData({
  String? genre,
  String? favouritedj,
  String? homelocation,
  String? preferedcities,
  String? locationpreferences,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'genre': genre,
      'favouritedj': favouritedj,
      'homelocation': homelocation,
      'preferedcities': preferedcities,
      'locationpreferences': locationpreferences,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserpreferencesRecordDocumentEquality
    implements Equality<UserpreferencesRecord> {
  const UserpreferencesRecordDocumentEquality();

  @override
  bool equals(UserpreferencesRecord? e1, UserpreferencesRecord? e2) {
    return e1?.genre == e2?.genre &&
        e1?.favouritedj == e2?.favouritedj &&
        e1?.homelocation == e2?.homelocation &&
        e1?.preferedcities == e2?.preferedcities &&
        e1?.locationpreferences == e2?.locationpreferences;
  }

  @override
  int hash(UserpreferencesRecord? e) => const ListEquality().hash([
        e?.genre,
        e?.favouritedj,
        e?.homelocation,
        e?.preferedcities,
        e?.locationpreferences
      ]);

  @override
  bool isValidKey(Object? o) => o is UserpreferencesRecord;
}
