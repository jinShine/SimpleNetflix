//
//  SplashNavigator.swift
//  GroupingApp
//
//  Created by Seungjin on 01/10/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import Foundation
import FlowInject

enum SplashRoute: Route {
  case userInfoList
}

class SplashNavigator: Navigator<SplashRoute> {

  func navigate(to destination: SplashRoute) {
    switch destination {
    case .userInfoList:
      let tabBarController = BaseTabBarController()
      tabBarController.viewControllers = [
        makeHomeViewController(),
        makeRegistryViewController(),
        makeSearchViewController()
      ]

      App.window?.rootViewController = tabBarController
    }
  }

  
  private func makeHomeViewController() -> UINavigationController {
    let userInfoListViewModel = UserInfoListViewModel(
      navigator: UserInfoListNavigator(),
      userInfoUseCase: UserInfoUseCaseImpl(
        userInfoRepository: UserInfoRepository(coreDataManager: CoreDataManager(modelName: "GroupingApp"))
      )
    )
    let userInfoListVC = UserInfoListViewController.create(with: userInfoListViewModel)

    return UINavigationController.generate(rootViewController: userInfoListVC,
                                    image: UIImage(named: "TabBar_Home")?.withRenderingMode(.alwaysOriginal),
                                    selectedImage: UIImage(named: "TabBar_Home_Selected")?.withRenderingMode(.alwaysOriginal))
  }

  private func makeRegistryViewController() -> UINavigationController {
    
    return UINavigationController.generate(image: UIImage(named: "TabBar_Registry")?.withRenderingMode(.alwaysOriginal),
                                           selectedImage: UIImage(named: "TabBar_Registry_Selected")?.withRenderingMode(.alwaysOriginal))
  }

  private func makeSearchViewController() -> UINavigationController {
    let searchViewModel = SearchViewModel()
    let searchVC = SearchViewController(viewModel: searchViewModel)
    
    return UINavigationController.generate(rootViewController: searchVC,
                                           image: UIImage(named: "TabBar_Search")?.withRenderingMode(.alwaysOriginal),
                                           selectedImage: UIImage(named: "TabBar_Search_Selected")?.withRenderingMode(.alwaysOriginal))
  }

}
