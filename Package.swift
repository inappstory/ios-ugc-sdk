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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11545360/InAppStoryUGC-1.2.1.xcframework.zip",
                      checksum: "49c29e415d02867f3feb471ffbb3882ea478bdfe4404ab4d44df0f1e3f85df5f"
                )
    ],
    swiftLanguageVersions: [.v5]
)

