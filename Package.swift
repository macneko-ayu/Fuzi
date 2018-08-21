// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi", 
    products: [
      .library(name: "Fuzi", targets: ["Fuzi"]),
    ],
    dependencies : [
        .package(url: "https://github.com/tid-kijyun/SwiftClibxml2.git", from: "1.0.2")
    ],
    targets: [
        .target(name: "Fuzi",
                path: "Sources",
                exclude: [
                    "Sources/Info.plist",
                    "Sources/Fuzi.h",
                    "Tests/FuziTests/Resources"
                ]),
        .testTarget(name: "FuziTests",
                    dependencies: ["Fuzi"]
                )
    ]
)

