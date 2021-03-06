import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/sub_product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  factory ProductDto({
    @JsonKey(ignore: true) String id,
    @required String productName,
    @required String productDescription,
    @required String hypeDescription,
    @required int totalAmount,
    @required int soldAmount,
    @required String portraitImage,
    @required List<ImageUrlDto> images,
    @required List<CatagoryNameDto> catagories,
    @required List<SubProductDto> subProducts,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      productName: product.productName.getOrCrash(),
      productDescription: product.productDescription.getOrCrash(),
      hypeDescription: product.hypeDescription.getOrCrash(),
      totalAmount: product.totalAmount.getOrCrash(),
      soldAmount: product.soldAmount.getOrCrash(),
      portraitImage: product.portraitImage.getOrCrash(),
      images: product.images
          .getOrCrash()
          .mapIndexed((index, imageUrl) => ImageUrlDto.fromDomain(imageUrl))
          .asList(),
      catagories: product.catagories
          .getOrCrash()
          .mapIndexed(
              (index, catagoryName) => CatagoryNameDto.fromDomain(catagoryName))
          .asList(),
      subProducts: product.subProducts
          .getOrCrash()
          .map(
            (subProduct) => SubProductDto.fromDomain(subProduct),
          )
          .toList(),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ProductDtoX on ProductDto {
  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id),
      productName: ProductName(productName),
      productDescription: ProductDescription(productDescription),
      hypeDescription: ProductHypeDescription(hypeDescription),
      totalAmount: TotalAmount(totalAmount),
      soldAmount: SoldAmount(soldAmount),
      portraitImage: ImageUrl(portraitImage),
      //images: ListImage(images.map((dto) => dto.toDomain()).toImmutableList()),
      images: ListImage(images.map((dto) => dto.toDomain()).toImmutableList()),
      // catagories: ListCatagories(
      //     catagories.map((dto) => dto.toDomain()).toImmutableList()),
      catagories: ListCatagories(
          catagories.map((dto) => dto.toDomain()).toImmutableList()),
      subProducts: ListSubProducts(
        subProducts.map((dto) => dto.toDomain()).toList(),
      ),
    );
  }
}

@freezed
abstract class SubProductDto with _$SubProductDto {
  const factory SubProductDto({
    @required String name,
    @required int amount,
    @required int price,
    @required List<Map> labels,
    String imageUrl,
  }) = _SubProductDto;

  factory SubProductDto.fromDomain(SubProduct subProduct) {
    return SubProductDto(
      name: subProduct.name.getOrCrash(),
      amount: subProduct.amount.getOrCrash(),
      price: subProduct.amount.getOrCrash(),
      labels: subProduct.labels,
      imageUrl: subProduct.imageUrl,
    );
  }

  factory SubProductDto.fromJson(Map<String, dynamic> json) =>
      _$SubProductDtoFromJson(json);
}

extension SubProductDtoX on SubProductDto {
  SubProduct toDomain() {
    return SubProduct(
      name: ProductName(name),
      amount: TotalAmount(amount),
      price: SoldAmount(price),
      labels: labels,
      imageUrl: imageUrl,
    );
  }
}

@freezed
abstract class ImageUrlDto with _$ImageUrlDto {
  const factory ImageUrlDto({
    @required String name,
  }) = _ImageUrlDto;

  factory ImageUrlDto.fromDomain(ImageUrl imageUrl) {
    return ImageUrlDto(
      name: imageUrl.getOrCrash(),
    );
  }

  factory ImageUrlDto.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlDtoFromJson(json);
}

extension ImageUrlDtoX on ImageUrlDto {
  ImageUrl toDomain() {
    return ImageUrl(name);
  }
}

@freezed
abstract class CatagoryNameDto with _$CatagoryNameDto {
  const factory CatagoryNameDto({
    @required String name,
  }) = _CatagoryNameDto;

  factory CatagoryNameDto.fromDomain(CatagoryName catagoryName) {
    return CatagoryNameDto(
      name: catagoryName.getOrCrash(),
    );
  }

  factory CatagoryNameDto.fromJson(Map<String, String> json) =>
      _$CatagoryNameDtoFromJson(json);
}

extension CatagoryNameDtoX on CatagoryNameDto {
  CatagoryName toDomain() {
    return CatagoryName(name);
  }
}
// @freezed
// abstract class ImageItemDto with _$ImageItemDto {
//   const factory ImageItemDto({
//     @required String id,
//     @required String name,
//     @required bool done,
//   }) = _ImageItemDto;

//   factory ImageItemDto.fromDomain(ImageItem imageItem) {
//     return ImageItemDto(
//       id: imageItem.id.getOrCrash(),
//       name: imageItem.name.getOrCrash(),
//       done: imageItem.done,
//     );
//   }

//   factory ImageItemDto.fromJson(Map<String, dynamic> json) =>
//       _$ImageItemDtoFromJson(json);
// }

// extension ImageItemDtoX on ImageItemDto {
//   ImageItem toDomain() {
//     return ImageItem(
//       id: UniqueId.fromUniqueString(id),
//       name: ImageUrl(name),
//       done: done,
//     );
//   }
// }

// @freezed
// abstract class CatagoryItemDto with _$CatagoryItemDto {
//   const factory CatagoryItemDto({
//     @required String id,
//     @required String name,
//     @required bool done,
//   }) = _CatagoryItemDto;

//   factory CatagoryItemDto.fromDomain(CatagoryItem catagoryItem) {
//     return CatagoryItemDto(
//       id: catagoryItem.id.getOrCrash(),
//       name: catagoryItem.name.getOrCrash(),
//       done: catagoryItem.done,
//     );
//   }

//   factory CatagoryItemDto.fromJson(Map<String, dynamic> json) =>
//       _$CatagoryItemDtoFromJson(json);
// }

// extension CatagoryItemDtoX on CatagoryItemDto {
//   CatagoryItem toDomain() {
//     return CatagoryItem(
//       id: UniqueId.fromUniqueString(id),
//       name: CatagoryName(name),
//       done: done,
//     );
//   }
// }
