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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11957288/InAppStoryUGC_SwiftUI-1.2.2.xcframework.zip",
                      checksum: "efd80521aafefac27cddf0404270ea448722552a39ef8339f228144fbd21987f"
                )
    ],
    swiftLanguageVersions: [.v5]
)

