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
        .binaryTarget(
            name: "InAppStoryUGC_SwiftUI",
            path: "InAppStoryUGC_SwiftUI.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
