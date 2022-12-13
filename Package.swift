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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC_SwiftUI-1.1.5.xcframework.zip",
                      checksum: "8f80c874bfcf674f8fed10aa37b4f842b3b2983611316558ebb1b8604b7559ac"
                )
    ],
    swiftLanguageVersions: [.v5]
)

