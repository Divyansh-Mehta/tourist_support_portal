import 'package:flutter/material.dart';

class TouristPlaces {
  final String id;
  final String title;
  final String description;
  final String state;
  bool isAddedInWishList;
  TouristPlaces({
    @required this.id,
    @required this.title,
    @required this.state,
    @required this.description,
    @required this.isAddedInWishList,
  });

  void toggleWishList() {
    isAddedInWishList = !isAddedInWishList;
  }
}
