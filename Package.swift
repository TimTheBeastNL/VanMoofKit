// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "VanMoofKit",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macOS(.v12),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "VanMoofKit",
            targets: [
                "VanMoofKit"
            ]
        ),
        .executable(
            name: "vanmoof",
            targets: [
                "VanMoofCLI"
            ]
        )
    ],
    targets: [
        .target(
            name: "VanMoofKit"
        ),
        .executableTarget(
            name: "VanMoofCLI",
            dependencies: [
                "VanMoofKit"
            ]
        ),
        .testTarget(
            name: "VanMoofKitTests",
            dependencies: [
                "VanMoofKit"
            ]
        )
    ]
)
