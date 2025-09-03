// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WEB_VIEW_LIB",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WEB_VIEW_LIB",
            targets: ["WEB_VIEW_LIB"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "WEB_VIEW_LIB",
            url: "https://github.com/kimleak/WEBVIEW_SDK/releases/download/v1.0.0/WEBVIEW_SDK.xcframework.zip",
            checksum: "3b0ab98a34e2a00b78d893689e7d9c121b86ff629b4b5b65510b6d5ce502939d"
        )
        
    ]
)
