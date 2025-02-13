// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import './restaurant.dart';
import 'card.dart';

const double _minSpacingPx = 16;
const double _cardWidth = 360;

class RestaurantGrid extends StatelessWidget {
  RestaurantGrid({
    @required RestaurantPressedCallback onRestaurantPressed,
    @required List<Restaurant> restaurants,
  })  : _onRestaurantPressed = onRestaurantPressed,
        _restaurants = restaurants;

  final RestaurantPressedCallback _onRestaurantPressed;
  final List<Restaurant> _restaurants;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      // ResponsiveGridList crashes if desiredItemWidth + 2*minSpacing > Device window on Android
      desiredItemWidth: math.min(
          _cardWidth, MediaQuery.of(context).size.width - (2 * _minSpacingPx)),
      minSpacing: _minSpacingPx,
      children: _restaurants
          .map((restaurant) => RestaurantCard(
                restaurant: restaurant,
                onRestaurantPressed: _onRestaurantPressed,
              ))
          .toList(),
    );
  }
}
