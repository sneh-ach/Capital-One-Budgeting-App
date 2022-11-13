// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.transactionName;
    if (value != null) {
      result
        ..add('transactionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionAmount;
    if (value != null) {
      result
        ..add('transactionAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionTime;
    if (value != null) {
      result
        ..add('transactionTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.transactionPlace;
    if (value != null) {
      result
        ..add('transactionPlace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('categoryName')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.transactionReason;
    if (value != null) {
      result
        ..add('transactionReason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budgetAssociated;
    if (value != null) {
      result
        ..add('budgetAssociated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'transactionName':
          result.transactionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionAmount':
          result.transactionAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionTime':
          result.transactionTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'transactionPlace':
          result.transactionPlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'categoryName':
          result.categoryName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'transactionReason':
          result.transactionReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetAssociated':
          result.budgetAssociated = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final String? transactionName;
  @override
  final String? transactionAmount;
  @override
  final DateTime? transactionTime;
  @override
  final String? transactionPlace;
  @override
  final DocumentReference<Object?>? category;
  @override
  final DocumentReference<Object?>? user;
  @override
  final BuiltList<String>? categoryName;
  @override
  final String? transactionReason;
  @override
  final DocumentReference<Object?>? budgetAssociated;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.transactionName,
      this.transactionAmount,
      this.transactionTime,
      this.transactionPlace,
      this.category,
      this.user,
      this.categoryName,
      this.transactionReason,
      this.budgetAssociated,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        transactionName == other.transactionName &&
        transactionAmount == other.transactionAmount &&
        transactionTime == other.transactionTime &&
        transactionPlace == other.transactionPlace &&
        category == other.category &&
        user == other.user &&
        categoryName == other.categoryName &&
        transactionReason == other.transactionReason &&
        budgetAssociated == other.budgetAssociated &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, transactionName.hashCode),
                                        transactionAmount.hashCode),
                                    transactionTime.hashCode),
                                transactionPlace.hashCode),
                            category.hashCode),
                        user.hashCode),
                    categoryName.hashCode),
                transactionReason.hashCode),
            budgetAssociated.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('transactionName', transactionName)
          ..add('transactionAmount', transactionAmount)
          ..add('transactionTime', transactionTime)
          ..add('transactionPlace', transactionPlace)
          ..add('category', category)
          ..add('user', user)
          ..add('categoryName', categoryName)
          ..add('transactionReason', transactionReason)
          ..add('budgetAssociated', budgetAssociated)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  String? _transactionName;
  String? get transactionName => _$this._transactionName;
  set transactionName(String? transactionName) =>
      _$this._transactionName = transactionName;

  String? _transactionAmount;
  String? get transactionAmount => _$this._transactionAmount;
  set transactionAmount(String? transactionAmount) =>
      _$this._transactionAmount = transactionAmount;

  DateTime? _transactionTime;
  DateTime? get transactionTime => _$this._transactionTime;
  set transactionTime(DateTime? transactionTime) =>
      _$this._transactionTime = transactionTime;

  String? _transactionPlace;
  String? get transactionPlace => _$this._transactionPlace;
  set transactionPlace(String? transactionPlace) =>
      _$this._transactionPlace = transactionPlace;

  DocumentReference<Object?>? _category;
  DocumentReference<Object?>? get category => _$this._category;
  set category(DocumentReference<Object?>? category) =>
      _$this._category = category;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  ListBuilder<String>? _categoryName;
  ListBuilder<String> get categoryName =>
      _$this._categoryName ??= new ListBuilder<String>();
  set categoryName(ListBuilder<String>? categoryName) =>
      _$this._categoryName = categoryName;

  String? _transactionReason;
  String? get transactionReason => _$this._transactionReason;
  set transactionReason(String? transactionReason) =>
      _$this._transactionReason = transactionReason;

  DocumentReference<Object?>? _budgetAssociated;
  DocumentReference<Object?>? get budgetAssociated => _$this._budgetAssociated;
  set budgetAssociated(DocumentReference<Object?>? budgetAssociated) =>
      _$this._budgetAssociated = budgetAssociated;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionName = $v.transactionName;
      _transactionAmount = $v.transactionAmount;
      _transactionTime = $v.transactionTime;
      _transactionPlace = $v.transactionPlace;
      _category = $v.category;
      _user = $v.user;
      _categoryName = $v.categoryName?.toBuilder();
      _transactionReason = $v.transactionReason;
      _budgetAssociated = $v.budgetAssociated;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    _$TransactionsRecord _$result;
    try {
      _$result = _$v ??
          new _$TransactionsRecord._(
              transactionName: transactionName,
              transactionAmount: transactionAmount,
              transactionTime: transactionTime,
              transactionPlace: transactionPlace,
              category: category,
              user: user,
              categoryName: _categoryName?.build(),
              transactionReason: transactionReason,
              budgetAssociated: budgetAssociated,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryName';
        _categoryName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
