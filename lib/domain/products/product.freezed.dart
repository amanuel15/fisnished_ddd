// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Product {
  UniqueId get id;
  ProductName get productName;
  ProductDescription get productDescription;
  ProductHypeDescription get productHypeDescription;
  TotalAmount get totalAmount;
  SoldAmount get soldAmount;
  ListImage<ImageItem> get images;
  ListCatagories<CatagoryItem> get catagories;

  Product copyWith(
      {UniqueId id,
      ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription productHypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageItem> images,
      ListCatagories<CatagoryItem> catagories});
}

class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {@required UniqueId id,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription productHypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageItem> images,
      @required ListCatagories<CatagoryItem> catagories}) {
    return _Product(
      id: id,
      productName: productName,
      productDescription: productDescription,
      productHypeDescription: productHypeDescription,
      totalAmount: totalAmount,
      soldAmount: soldAmount,
      images: images,
      catagories: catagories,
    );
  }
}

const $Product = _$ProductTearOff();

class _$_Product implements _Product {
  const _$_Product(
      {@required this.id,
      @required this.productName,
      @required this.productDescription,
      @required this.productHypeDescription,
      @required this.totalAmount,
      @required this.soldAmount,
      @required this.images,
      @required this.catagories})
      : assert(id != null),
        assert(productName != null),
        assert(productDescription != null),
        assert(productHypeDescription != null),
        assert(totalAmount != null),
        assert(soldAmount != null),
        assert(images != null),
        assert(catagories != null);

  @override
  final UniqueId id;
  @override
  final ProductName productName;
  @override
  final ProductDescription productDescription;
  @override
  final ProductHypeDescription productHypeDescription;
  @override
  final TotalAmount totalAmount;
  @override
  final SoldAmount soldAmount;
  @override
  final ListImage<ImageItem> images;
  @override
  final ListCatagories<CatagoryItem> catagories;

  @override
  String toString() {
    return 'Product(id: $id, productName: $productName, productDescription: $productDescription, productHypeDescription: $productHypeDescription, totalAmount: $totalAmount, soldAmount: $soldAmount, images: $images, catagories: $catagories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.productHypeDescription, productHypeDescription) ||
                const DeepCollectionEquality().equals(
                    other.productHypeDescription, productHypeDescription)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.soldAmount, soldAmount) ||
                const DeepCollectionEquality()
                    .equals(other.soldAmount, soldAmount)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productHypeDescription) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(catagories);

  @override
  _$_Product copyWith({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productHypeDescription = freezed,
    Object totalAmount = freezed,
    Object soldAmount = freezed,
    Object images = freezed,
    Object catagories = freezed,
  }) {
    return _$_Product(
      id: id == freezed ? this.id : id as UniqueId,
      productName: productName == freezed
          ? this.productName
          : productName as ProductName,
      productDescription: productDescription == freezed
          ? this.productDescription
          : productDescription as ProductDescription,
      productHypeDescription: productHypeDescription == freezed
          ? this.productHypeDescription
          : productHypeDescription as ProductHypeDescription,
      totalAmount: totalAmount == freezed
          ? this.totalAmount
          : totalAmount as TotalAmount,
      soldAmount:
          soldAmount == freezed ? this.soldAmount : soldAmount as SoldAmount,
      images: images == freezed ? this.images : images as ListImage<ImageItem>,
      catagories: catagories == freezed
          ? this.catagories
          : catagories as ListCatagories<CatagoryItem>,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@required UniqueId id,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription productHypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageItem> images,
      @required ListCatagories<CatagoryItem> catagories}) = _$_Product;

  @override
  UniqueId get id;
  @override
  ProductName get productName;
  @override
  ProductDescription get productDescription;
  @override
  ProductHypeDescription get productHypeDescription;
  @override
  TotalAmount get totalAmount;
  @override
  SoldAmount get soldAmount;
  @override
  ListImage<ImageItem> get images;
  @override
  ListCatagories<CatagoryItem> get catagories;

  @override
  _Product copyWith(
      {UniqueId id,
      ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription productHypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageItem> images,
      ListCatagories<CatagoryItem> catagories});
}
