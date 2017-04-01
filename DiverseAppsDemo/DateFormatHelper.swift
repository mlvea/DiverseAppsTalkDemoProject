//
//  DateFormatHelper.swift
//  DiverseAppsDemo
//
//  Created by Madushan on 21/3/17.
//  Copyright © 2017 Madnik. All rights reserved.
//

import Foundation

struct DateFormatHelper {

  static let fixedShortDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm a"
    return formatter
  }()

  static let predifnedShortDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    return formatter
  }()

  static let currencyNumberFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.locale = Locale.current
    formatter.numberStyle = .currency
    return formatter
  }()

  static let decimalNumberFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.locale = Locale.current
    return formatter
  }()

}
