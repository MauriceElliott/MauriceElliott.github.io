// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Codedawa",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "Codedawa",
            targets: ["Codedawa"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "Codedawa",
            dependencies: ["Publish"]
        )
    ]
)