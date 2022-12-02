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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC_SwiftUI-1.1.2.xcframework.zip",
                      checksum: "832893c5c4fd0ece5b7534ccbd7c8e40ce3f1e2d1b16e0283933a4033276b3b4"
                )
    ],
    swiftLanguageVersions: [.v5]
)

