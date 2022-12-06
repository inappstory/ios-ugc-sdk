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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC_SwiftUI-1.1.3.xcframework.zip",
                      checksum: "7d4849a381a9c54b9307d7bc8db0dffa6e3f5fab37f6521a114180db7d49e7ff"
                )
    ],
    swiftLanguageVersions: [.v5]
)

