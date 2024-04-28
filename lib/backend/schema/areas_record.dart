import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreasRecord extends FirestoreRecord {
  AreasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('areas');

  static Stream<AreasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AreasRecord.fromSnapshot(s));

  static Future<AreasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AreasRecord.fromSnapshot(s));

  static AreasRecord fromSnapshot(DocumentSnapshot snapshot) => AreasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AreasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AreasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AreasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AreasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAreasRecordData({
  String? id,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class AreasRecordDocumentEquality implements Equality<AreasRecord> {
  const AreasRecordDocumentEquality();

  @override
  bool equals(AreasRecord? e1, AreasRecord? e2) {
    return e1?.id == e2?.id && e1?.name == e2?.name;
  }

  @override
  int hash(AreasRecord? e) => const ListEquality().hash([e?.id, e?.name]);

  @override
  bool isValidKey(Object? o) => o is AreasRecord;
}
