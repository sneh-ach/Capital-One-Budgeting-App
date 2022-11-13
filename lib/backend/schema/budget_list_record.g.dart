// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BudgetListRecord> _$budgetListRecordSerializer =
    new _$BudgetListRecordSerializer();

class _$BudgetListRecordSerializer
    implements StructuredSerializer<BudgetListRecord> {
  @override
  final Iterable<Type> types = const [BudgetListRecord, _$BudgetListRecord];
  @override
  final String wireName = 'BudgetListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BudgetListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.budgetUser;
    if (value != null) {
      result
        ..add('budgetUser')
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
  BudgetListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BudgetListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'budget':
          result.budget.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'budgetUser':
          result.budgetUser = serializers.deserialize(value,
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

class _$BudgetListRecord extends BudgetListRecord {
  @override
  final BuiltList<String>? budget;
  @override
  final DocumentReference<Object?>? budgetUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BudgetListRecord(
          [void Function(BudgetListRecordBuilder)? updates]) =>
      (new BudgetListRecordBuilder()..update(updates))._build();

  _$BudgetListRecord._({this.budget, this.budgetUser, this.ffRef}) : super._();

  @override
  BudgetListRecord rebuild(void Function(BudgetListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetListRecordBuilder toBuilder() =>
      new BudgetListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetListRecord &&
        budget == other.budget &&
        budgetUser == other.budgetUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, budget.hashCode), budgetUser.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BudgetListRecord')
          ..add('budget', budget)
          ..add('budgetUser', budgetUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BudgetListRecordBuilder
    implements Builder<BudgetListRecord, BudgetListRecordBuilder> {
  _$BudgetListRecord? _$v;

  ListBuilder<String>? _budget;
  ListBuilder<String> get budget =>
      _$this._budget ??= new ListBuilder<String>();
  set budget(ListBuilder<String>? budget) => _$this._budget = budget;

  DocumentReference<Object?>? _budgetUser;
  DocumentReference<Object?>? get budgetUser => _$this._budgetUser;
  set budgetUser(DocumentReference<Object?>? budgetUser) =>
      _$this._budgetUser = budgetUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BudgetListRecordBuilder() {
    BudgetListRecord._initializeBuilder(this);
  }

  BudgetListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _budget = $v.budget?.toBuilder();
      _budgetUser = $v.budgetUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BudgetListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BudgetListRecord;
  }

  @override
  void update(void Function(BudgetListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BudgetListRecord build() => _build();

  _$BudgetListRecord _build() {
    _$BudgetListRecord _$result;
    try {
      _$result = _$v ??
          new _$BudgetListRecord._(
              budget: _budget?.build(), budgetUser: budgetUser, ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'budget';
        _budget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BudgetListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
