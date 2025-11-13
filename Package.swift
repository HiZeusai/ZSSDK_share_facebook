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
            checksum: "ddc36867026d1bcc8d89d445482d850197c7b11f4585f1f053df7e4d1ed384ef"
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
