//
//  AppDelegate.swift
//  3Dish
//
//  Created by RONALD HERNANDEZ on 4/27/23.
//

import UIKit

@main
class AppDelegate: UIResponder {

    var window: UIWindow?

    override init() {
        super.init()
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.setUpRootViewController()
        
        return true
    }

}

/*
  MARK: - Private & Helper Methods
 
 */

extension AppDelegate {
    
    private func setUpRootViewController() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = UINavigationController(rootViewController: RestaurantViewController())
    }
    
    private func createInitialWindow() -> UIWindow {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = self.window else { fatalError("Could not create window") }
        
        return window
    }
}


extension AppDelegate: UIApplicationDelegate {
    
}
