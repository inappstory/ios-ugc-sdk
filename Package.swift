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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC_SwiftUI-1.1.0.xcframework.zip",
                      checksum: "4d739793d12482098c6e791aacf8be3e3051337848e876bfc15f3dc455ab86f2"
                )
    ],
    swiftLanguageVersions: [.v5]
)

