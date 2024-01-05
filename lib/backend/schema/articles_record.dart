import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ArticlesRecord extends FirestoreRecord {
  ArticlesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "imgs" field.
  List<String>? _imgs;
  List<String> get imgs => _imgs ?? const [];
  bool hasImgs() => _imgs != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "date_updated" field.
  DateTime? _dateUpdated;
  DateTime? get dateUpdated => _dateUpdated;
  bool hasDateUpdated() => _dateUpdated != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _imgs = getDataList(snapshotData['imgs']);
    _text = snapshotData['text'] as String?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _dateUpdated = snapshotData['date_updated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticlesRecord.fromSnapshot(s));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticlesRecord.fromSnapshot(s));

  static ArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticlesRecordData({
  String? title,
  String? text,
  DateTime? dateCreated,
  DateTime? dateUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'text': text,
      'date_created': dateCreated,
      'date_updated': dateUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticlesRecordDocumentEquality implements Equality<ArticlesRecord> {
  const ArticlesRecordDocumentEquality();

  @override
  bool equals(ArticlesRecord? e1, ArticlesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        listEquality.equals(e1?.imgs, e2?.imgs) &&
        e1?.text == e2?.text &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.dateUpdated == e2?.dateUpdated;
  }

  @override
  int hash(ArticlesRecord? e) => const ListEquality()
      .hash([e?.title, e?.imgs, e?.text, e?.dateCreated, e?.dateUpdated]);

  @override
  bool isValidKey(Object? o) => o is ArticlesRecord;
}
