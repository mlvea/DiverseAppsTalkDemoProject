//
//  DemoData.swift
//  DiverseAppsDemo
//
//  Created by Madushan on 21/3/17.
//  Copyright © 2017 Madnik. All rights reserved.
//

import Foundation
import UIKit

struct DemoData {

  var type: DemoType
  var image: UIImage? {
    switch self.type {
    case .imageRightToLeft:
      return UIImage(named: "icon_mag")
    default:
      return nil
    }
  }

  var subtitle: String {

    switch self.type {
    case .fixedFormattedDate:
      return DateFormatHelper.fixedShortDateFormatter.string(from: Date())
    case .predefinedDateStyle:
      return DateFormatHelper.predifnedShortDateFormatter.string(from: Date())
    case .imageRightToLeft:
      return ""
    case .singularNoun:
      //We are using the same string key as the plural version. It is handled by the stringsdict. 
      return String.localizedStringWithFormat(NSLocalizedString("%d friends are online", comment: "Number of friends online"), 1)
    case .pluralNoun:
      return String.localizedStringWithFormat(NSLocalizedString("%d friends are online", comment: "Number of friends online"), 3)
    case .number:
      return DateFormatHelper.decimalNumberFormatter.string(from: 34.76)!
    case .currency:
      return DateFormatHelper.currencyNumberFormatter.string(from: 99.991)!
    }
  }

  var title: String {
    switch self.type {
    case .fixedFormattedDate:
      return NSLocalizedString("Fixed Format date", comment: "Date from fixed format string")
    case .predefinedDateStyle:
      return NSLocalizedString("Predefined Short Date format", comment: "Pre defined Date format")
    case .imageRightToLeft:
      return NSLocalizedString("Image Localization", comment: "Cell Title for image localization")
    case .singularNoun:
      return NSLocalizedString("Singular noun", comment: "Cell Title for Singular noun localization demo")
    case .pluralNoun:
        return NSLocalizedString("Plural noun(Same String as above)", comment: "Cell Title for Plural noun localization demo")
    case .number:
      return NSLocalizedString("Decimal Number Formatter", comment: "Cell title for decimal number")
    case .currency:
      return NSLocalizedString("Currency Number Formatter", comment: "Cell title for Currency Formatter Demo")
    }
  }

  init(type: DemoType) {
    self.type = type
  }
}

struct MasterViewModel {

  var data: [DemoData] {
    var data = [DemoData]()
    data.append(DemoData(type: DemoType.fixedFormattedDate))
    data.append(DemoData(type: DemoType.predefinedDateStyle))
    data.append(DemoData(type: DemoType.imageRightToLeft))
    data.append(DemoData(type: DemoType.singularNoun))
    data.append(DemoData(type: DemoType.pluralNoun))
    data.append(DemoData(type: DemoType.number))
    data.append(DemoData(type: DemoType.currency))
    return data
  }

}
