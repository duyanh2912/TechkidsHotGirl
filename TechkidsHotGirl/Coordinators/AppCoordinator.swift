//
//  AppCoordinator.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit
import Foundation

class AppCoordinator {
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let homeVC = HomeViewController.instantiate()
        let navigationVC = UINavigationController(rootViewController: homeVC)
        
        window.rootViewController = navigationVC
        window.makeKeyAndVisible()
        
        let provider = HotGirlImageProvider()
        provider.getImages { success,images,error in
            guard success else {
                print(error!)
                return
            }
            homeVC.updateDataSource(images: images!)
        }
    }
}

