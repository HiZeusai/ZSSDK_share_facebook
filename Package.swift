// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZSSDK_share_facebook",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZSSDK_share_facebook",
            targets: ["ZSSDK_share_facebook"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZSSDK_share_facebook"),
        .testTarget(
            name: "ZSSDK_share_facebookTests",
            dependencies: ["ZSSDK_share_facebook"]
        ),
    ]
)
