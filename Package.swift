// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSwiftPackageTwoModules",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestSwiftPackageModule1",
            targets: ["TestSwiftPackageModule1"]),
        .library(
            name: "TestSwiftPackageModule2",
            targets: ["TestSwiftPackageModule2"]),

    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestSwiftPackageModule1",
            dependencies: ["TestSwiftPackageModule2"]),
        .target(
            name: "TestSwiftPackageModule2"),
    ]
)
