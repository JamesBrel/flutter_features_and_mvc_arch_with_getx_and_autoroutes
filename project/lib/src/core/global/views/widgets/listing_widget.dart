import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../shared/enums/list_enum.dart';

class ListingWidget extends StatelessWidget {
  final ListType listType;
  final VariantListType variantType;
  final List<dynamic> itemList;
  final Axis scrollDirection;
  final ScrollController? scrollController;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  final Widget Function(BuildContext context, int index) itemsBuilder;

  const ListingWidget({
    super.key,
    required this.listType,
    this.variantType = VariantListType.none,
    required this.itemList,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    required this.itemsBuilder,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.crossAxisCount = 1,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    switch (listType) {
      case ListType.grid:

        //*-- GridViews --*//
        switch (variantType) {
          case VariantListType.builder:
            return Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              child: GridView.builder(
                scrollDirection: scrollDirection,
                controller: scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: mainAxisSpacing,
                  crossAxisSpacing: crossAxisSpacing,
                ),
                itemCount: itemList.length,
                itemBuilder: itemsBuilder,
              ),
            );

          default:
            return Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              child: GridView.count(
                scrollDirection: scrollDirection,
                controller: scrollController,
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: mainAxisSpacing,
                crossAxisSpacing: crossAxisSpacing,
                children: <Widget> [
                ],
              ),
            );
        }

      case ListType.masonryGrid:

        //*-- MasonryGridViews --*//
        switch (variantType) {
          case VariantListType.builder:
            return Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              child: MasonryGridView.builder(
                itemCount: itemList.length,
                scrollDirection: scrollDirection,
                controller: scrollController,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                ),
                mainAxisSpacing: mainAxisSpacing,
                crossAxisSpacing: crossAxisSpacing,
                itemBuilder: itemsBuilder,
              ),
            );

          default:
            return Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              child: MasonryGridView.count(
                scrollDirection: scrollDirection,
                controller: scrollController,
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: mainAxisSpacing,
                crossAxisSpacing: crossAxisSpacing,
                itemBuilder: itemsBuilder,
              ),
            );
        }
      case ListType.list:

        //*-- ListViews --*//
        switch (variantType) {
          case VariantListType.builder:
            return Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              child: ListView.builder(
                scrollDirection: scrollDirection,
                controller: scrollController,
                itemCount: itemList.length,
                itemBuilder: itemsBuilder,
              ),
            );

          default:
            return ListView();
        }
    }
  }
}
