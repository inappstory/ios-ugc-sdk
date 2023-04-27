// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InAppStoryUGC_SwiftUI",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "InAppStoryUGC_SwiftUI", targets: ["InAppStoryUGC_SwiftUI"])
    ],
    targets: [
        .binaryTarget(name: "InAppStoryUGC_SwiftUI",
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11345959/InAppStoryUGC_SwiftUI-1.2.0.xcframework.zip",
                      checksum: "c9995220447772f89986d6626b59f20eb66018ffbc2bcc16d60478f5bfbe4810"
                )
    ],
    swiftLanguageVersions: [.v5]
)

