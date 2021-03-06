//
//  AppDelegate.swift
//  Parstagram
// AppDelegate.swift
//
//  Created by Linxi Xu on 3/15/21.
//

import UIKit
// Don't forget to install Parse pods!
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "nv9PJhStn3GC6PG1dineiJ3t6nQlOsCYa3Dx8XTo" // <- UPDATE
                $0.clientKey = "W6noxl80Z9ubhRZ6dcaWfyieD5IgE2gixJl1ouTZ" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        // --- end copy
//        if PFUser.current() != nil {
//            let main = UIStoryboard(name: "Main", bundle: nil)
//            let FeedNavigationController = main.instantiateViewController(identifier: "FeedNavigationController")
//
//            window?.rootViewController = FeedNavigationController
//        }



        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

