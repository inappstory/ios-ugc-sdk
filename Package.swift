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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11545371/InAppStoryUGC_SwiftUI-1.2.1.xcframework.zip",
                      checksum: "fce5923fc84e32229981f784f2a05637d05f62d7e08ed3e4acbda64ad5412d16"
                )
    ],
    swiftLanguageVersions: [.v5]
)

