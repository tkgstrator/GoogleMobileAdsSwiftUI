//
//  GADMobileAds.swift
//  GoogleMobileAdsSwiftUI
//
//  Created by tkgstrator on 2023/03/26
//  Copyright © 2023 Magi Corporation. All rights reserved.
//

import Foundation
import GoogleMobileAds

public extension GADMobileAds {
    @available(iOS 13.0.0, *)
    static func configure() async {
        await sharedInstance().start()
    }
    
    static func configure(completionHandler: GADInitializationCompletionHandler? = nil) {
        sharedInstance().start(completionHandler: completionHandler)
    }
}
