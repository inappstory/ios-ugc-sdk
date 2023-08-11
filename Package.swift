// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InAppStoryUGC",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "InAppStoryUGC", targets: ["InAppStoryUGC"])
    ],
    targets: [
        .binaryTarget(name: "InAppStoryUGC",
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/12322781/InAppStoryUGC-1.2.3.xcframework.zip",
                      checksum: "e8e0e12ba27e5de244013d1a6a0a253da02119ed09d3befc8bf7a9bfaded4b93"
                )
    ],
    swiftLanguageVersions: [.v5]
)

