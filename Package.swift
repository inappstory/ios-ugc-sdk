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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.3.xcframework.zip",
                      checksum: "698339463d99c84b27e6f991edb24463d47d58de94749dcd837dcec725d9459f"
                )
    ],
    swiftLanguageVersions: [.v5]
)

