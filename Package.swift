// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZSSDK_share_facebook",
    products: [
        .library(
            name: "Share_Facebook",
            targets: ["ShareFacebookBinary"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "13.2.1"),
    ],
    targets: [
        .binaryTarget(
            name: "ShareFacebookBinary",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.4/Share_Facebook.xcframework.zip",
            checksum: "320a412809488f0efa09bc2b0a3754e13bc96b2b2c941793b08ebf4d0244032d"
        )
    ]
)
