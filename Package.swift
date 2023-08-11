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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/12322801/InAppStoryUGC_SwiftUI-1.2.3.xcframework.zip",
                      checksum: "2d389f6b1445a25a83418aeb19fb0f475a662520616cbd9e4a0bd7725509459d"
                )
    ],
    swiftLanguageVersions: [.v5]
)
