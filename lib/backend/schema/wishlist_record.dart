import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class WishlistRecord extends FirestoreRecord {
  WishlistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "event" field.
  DocumentReference? _event;
  DocumentReference? get event => _event;
  bool hasEvent() => _event != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _users = getDataList(snapshotData['users']);
    _event = snapshotData['event'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wishlist');

  static Stream<WishlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WishlistRecord.fromSnapshot(s));

  static Future<WishlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WishlistRecord.fromSnapshot(s));

  static WishlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WishlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WishlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WishlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WishlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WishlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWishlistRecordData({
  String? title,
  DocumentReference? event,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'event': event,
    }.withoutNulls,
  );

  return firestoreData;
}

class WishlistRecordDocumentEquality implements Equality<WishlistRecord> {
  const WishlistRecordDocumentEquality();

  @override
  bool equals(WishlistRecord? e1, WishlistRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.event == e2?.event;
  }

  @override
  int hash(WishlistRecord? e) =>
      const ListEquality().hash([e?.title, e?.users, e?.event]);

  @override
  bool isValidKey(Object? o) => o is WishlistRecord;
}
