//
//  GoogleMobileAdsView.swift
//  GoogleMobileAdsSwiftUI
//
//  Created by tkgstrator on 2023/03/26
//  Copyright © 2023 Magi Corporation. All rights reserved.
//

import Foundation
import GoogleMobileAds
import SwiftUI

#if canImport(UIKit)
    import UIKit
#endif

public class UIGoogleMobileAdsView: GADBannerView {
    public init() {
        super.init(adSize: GADAdSizeBanner)
        self.isOpaque = true
        self.frame = CGRect(origin: .zero, size: GADAdSizeBanner.size)
        self.backgroundColor = .clear
        self.translatesAutoresizingMaskIntoConstraints = false
        self.load(GADRequest())
    }

    override init(adSize: GADAdSize, origin: CGPoint) {
        super.init(adSize: adSize, origin: origin)
    }

    // swiftlint:disable:next unavailable_function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@available(iOS 13.0, *)
public struct GoogleMobileAdsView: UIViewControllerRepresentable {
    private let adUnitID: String

    public init(adUnitID: String) {
        #if DEBUG
            self.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        #else
            self.adUnitID = adUnitID
        #endif
    }

    public func makeCoordinator() {}

    public func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        let bannerView = UIGoogleMobileAdsView()
        bannerView.adUnitID = self.adUnitID
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        bannerView.rootViewController = UIApplication.shared.windows.first?.rootViewController
        bannerView.isHidden = false
        controller.view.addSubview(bannerView)
        controller.view.frame = CGRect(origin: .zero, size: GADAdSizeBanner.size)
        bannerView.load(GADRequest())
        return controller
    }

    public func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
