import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswersRecord extends FirestoreRecord {
  AnswersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_user" field.
  DocumentReference? _createUser;
  DocumentReference? get createUser => _createUser;
  bool hasCreateUser() => _createUser != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "liked_users" field.
  List<DocumentReference>? _likedUsers;
  List<DocumentReference> get likedUsers => _likedUsers ?? const [];
  bool hasLikedUsers() => _likedUsers != null;

  // "imgs" field.
  List<String>? _imgs;
  List<String> get imgs => _imgs ?? const [];
  bool hasImgs() => _imgs != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createUser = snapshotData['create_user'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _likedUsers = getDataList(snapshotData['liked_users']);
    _imgs = getDataList(snapshotData['imgs']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('answers')
          : FirebaseFirestore.instance.collectionGroup('answers');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('answers').doc();

  static Stream<AnswersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnswersRecord.fromSnapshot(s));

  static Future<AnswersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnswersRecord.fromSnapshot(s));

  static AnswersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnswersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnswersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnswersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnswersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnswersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnswersRecordData({
  DocumentReference? createUser,
  String? message,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_user': createUser,
      'message': message,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnswersRecordDocumentEquality implements Equality<AnswersRecord> {
  const AnswersRecordDocumentEquality();

  @override
  bool equals(AnswersRecord? e1, AnswersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createUser == e2?.createUser &&
        e1?.message == e2?.message &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.likedUsers, e2?.likedUsers) &&
        listEquality.equals(e1?.imgs, e2?.imgs);
  }

  @override
  int hash(AnswersRecord? e) => const ListEquality().hash(
      [e?.createUser, e?.message, e?.createdTime, e?.likedUsers, e?.imgs]);

  @override
  bool isValidKey(Object? o) => o is AnswersRecord;
}
