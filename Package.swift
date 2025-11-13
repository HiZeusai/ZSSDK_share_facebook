// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZSSDK_share_facebook",
    products: [
        .library(
            name: "Share_Facebook",
            targets: ["ShareFacebookWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "15.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "Share_Facebook",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.5/Share_Facebook.xcframework.zip",
            checksum: "e9ef0999e2a560af86fb30efa6037663c7d51ed7f5f24b5addbce08b72382f4e"
        ),
        .target(
            name: "ShareFacebookWrapper",
            dependencies: [
                "Share_Facebook",
                .product(name: "FacebookShare", package: "facebook-ios-sdk")
            ],
            path: "Sources"
        ),
    ]
)
