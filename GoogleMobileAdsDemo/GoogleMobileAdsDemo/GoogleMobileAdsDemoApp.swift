//
//  GoogleMobileAdsDemoApp.swift
//  GoogleMobileAdsDemo
//
//  Created by devonly on 2024/04/30.
//

import SwiftUI
import GoogleMobileAds

@main
struct GoogleMobileAdsDemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate, UIWindowSceneDelegate {
        func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
        ) -> Bool {
            GADMobileAds.configure(completionHandler: nil)
            return true
        }
    }
}
