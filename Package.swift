// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMobileAdsSwiftUI",
    platforms: [.iOS(.v12), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GoogleMobileAdsSwiftUI",
            targets: ["GoogleMobileAdsSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.3.0"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.54.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin.git", from: "1.3.0"),
        .package(url: "https://github.com/apple/swift-format.git", from: "509.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GoogleMobileAdsSwiftUI",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
            ]),
        .testTarget(
            name: "GoogleMobileAdsSwiftUITests",
            dependencies: ["GoogleMobileAdsSwiftUI"]),
    ]
)
