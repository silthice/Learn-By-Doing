//
//  CardModel.swift
//  Learn By Doing
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct Card: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var imageName: String
  var callToAction: String
  var message: String
  var gradientColors: [Color]
}
