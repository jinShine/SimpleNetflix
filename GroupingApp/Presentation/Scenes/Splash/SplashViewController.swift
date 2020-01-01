//
//  SplashViewController.swift
//  GroupingApp
//
//  Created by Seungjin on 01/10/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit

class SplashViewController: BaseViewController {
  
  //MARK: - Constant
  
  struct UI {
    static let logoSize: CGFloat = 96
  }
  

  //MARK: - UI Properties
  
  let logoImageView: UIImageView = {
    let imgView = UIImageView(image: UIImage(named: "Logo"))
    imgView.contentMode = .scaleAspectFit
    return imgView
  }()
  
  
  //MARK: - Properties
  
  var splashNavigator: SplashNavigator = SplashNavigator()

  
  //MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()

    setupUI()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      self.splashNavigator.navigate(to: .home)
    }

  }
  
  
  //MARK: - Methods
  
  private func setupUI() {
    view.backgroundColor = .white
    view.addSubview(logoImageView)
    logoImageView.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.size.equalTo(UI.logoSize)
    }
  }

}
