//
//  App.swift
//  GroupingApp
//
//  Created by Seungjin on 02/10/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit

struct App {
  
  static let window = UIApplication.shared.windows.first { $0.isKeyWindow }
  static let userDefaultsManager = UserDefaultsManger.default
  static let configuration = Configuration.shared
  static let toast = Toast()
  static let loading = LoadingView.shared

  static let session = SessionModel()

  static let color = Color()
  static let font = Font()
  
}
