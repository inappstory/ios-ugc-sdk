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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC_SwiftUI-1.1.6.xcframework.zip",
                      checksum: "0801ca78f63150d946dc9fd3c313395c28ee8553408b8305a36a1e76fa38ff51"
                )
    ],
    swiftLanguageVersions: [.v5]
)

