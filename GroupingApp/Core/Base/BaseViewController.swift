//
//  BaseTarBarController.swift
//  GroupingApp
//
//  Created by Seungjin on 01/10/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {


  //MARK: Properties



  //MARK: UI Properties



  //MARK: Initialization

  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  deinit {
    print("DEINIT: \(String(describing: self))")
  }


  //MARK: Life Cycle

  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  
}