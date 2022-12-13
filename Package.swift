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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.5.xcframework.zip",
                      checksum: "f18e439c483864b5e2664da31df3e67acd39b9d39bfeb90a1741ab02ec1aaa92"
                )
    ],
    swiftLanguageVersions: [.v5]
)

