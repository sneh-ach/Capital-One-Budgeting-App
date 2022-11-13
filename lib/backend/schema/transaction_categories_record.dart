import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_categories_record.g.dart';

abstract class TransactionCategoriesRecord
    implements
        Built<TransactionCategoriesRecord, TransactionCategoriesRecordBuilder> {
  static Serializer<TransactionCategoriesRecord> get serializer =>
      _$transactionCategoriesRecordSerializer;

  DocumentReference? get user;

  BuiltList<String>? get categoryName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionCategoriesRecordBuilder builder) =>
      builder..categoryName = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactionCategories');

  static Stream<TransactionCategoriesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionCategoriesRecord._();
  factory TransactionCategoriesRecord(
          [void Function(TransactionCategoriesRecordBuilder) updates]) =
      _$TransactionCategoriesRecord;

  static TransactionCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionCategoriesRecordData({
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionCategoriesRecord.serializer,
    TransactionCategoriesRecord(
      (t) => t
        ..user = user
        ..categoryName = null,
    ),
  );

  return firestoreData;
}
