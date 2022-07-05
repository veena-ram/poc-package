// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PocPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PocPackage",
            targets: ["enterprise-mobile-framework", "AWSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PocPackage",
            dependencies: []),
        .binaryTarget(name: "AWSDK", url: "https://vmwaresaas.jfrog.io/artifactory/Workspace-ONE-iOS-SDK/MAMSDK/Release/22.5.0/AWSDK.xcframework.zip", checksum:"3008d20d272f32aaacf073c0a0a327ea3beeb6de6675b44188120df140a11def"),
        .binaryTarget(name: "enterprise-mobile-framework",
                      path: "./Sources/PocPackage/enterprise-mobile-framework.xcframework")
    ]
)
