//
//  AppDelegate.swift
//  NetflixClone
//
//  Created by Duy Nguyen on 31/03/2022.
//

import UIKit
import Resolver

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let router = AppCoordinator().strongRouter
    private lazy var mainWindow = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        router.setRoot(for: mainWindow)
        // Dependency Injection
//        Resolver.registerAllServices()
        return true
    }
}

