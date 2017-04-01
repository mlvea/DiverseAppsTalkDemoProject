//
//  EventExtension.swift
//  DiverseAppsDemo
//
//  Created by Madushan on 21/3/17.
//  Copyright © 2017 Madnik. All rights reserved.
//

import Foundation

extension Event {

  var formattedDate: String? {
    return self.timestamp?.description
  }

}

