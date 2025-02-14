// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "test-swift-package-two-modules",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "test-swift-package-two-modules",
            targets: ["test-swift-package-module-1", "test-swift-package-module-2]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "test-swift-package-module-1"),
        .target(
            name: "test-swift-package-module-2"),
    ]
)
