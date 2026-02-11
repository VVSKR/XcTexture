// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Texture",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]),
        .library(
            name: "PINRemoteImage",
            targets: ["PINRemoteImage"]),
        .library(
            name: "PINCache",
            targets: ["PINCache"]),
        .library(
            name: "PINOperation",
            targets: ["PINOperation"]),
        .library(
            name: "libwebp",
            targets: ["libwebp"])
    ],
    targets: [
        .binaryTarget(name: "AsyncDisplayKit", path: "Carthage/Build/AsyncDisplayKit.xcframework"),
        .binaryTarget(name: "PINRemoteImage", path: "Carthage/Build/PINRemoteImage.xcframework"),
        .binaryTarget(name: "PINCache", path: "Carthage/Build/PINCache.xcframework"),
        .binaryTarget(name: "PINOperation", path: "Carthage/Build/PINOperation.xcframework"),
        .binaryTarget(name: "libwebp", path: "Carthage/Build/libwebp.xcframework")
    ]
)

//import PackageDescription
//
//let package = Package(
//    name: "AsyncDisplayKit",
//    platforms: [.iOS(.v17)],
//    products: [
//        .library(
//            name: "AsyncDisplayKit",
//            targets: ["AsyncDisplayKit", "PINRemoteImage", "PINCache", "PINOperation", "libwebp"]
//        ),
//    ],
//    targets: [
//        .binaryTarget(name: "AsyncDisplayKit", path: "XcFrameworks/AsyncDisplayKit.xcframework"),
//        .binaryTarget(name: "PINRemoteImage", path: "XcFrameworks/PINRemoteImage.xcframework"),
//        .binaryTarget(name: "PINCache", path: "XcFrameworks/PINCache.xcframework"),
//        .binaryTarget(name: "PINOperation", path: "XcFrameworks/PINOperation.xcframework"),
//        .binaryTarget(name: "libwebp", path: "XcFrameworks/libwebp.xcframework")
//    ]
//)


//SWIFT_EMIT_LOC_STRINGS = YES;
//                OTHER_SWIFT_FLAGS = (
//                    "$(inherited)",
//                    "-Xcc",
//                    "-DPIN_WEBP=1",
//                    "-Xcc",
//                    "-DAS_USE_ASSETS_LIBRARY=1",
//                    "-Xcc",
//                    "-DAS_USE_MAPKIT=1",
//                    "-Xcc",
//                    "-DAS_USE_PHOTOS=1",
//                    "-Xcc",
//                    "-DAS_USE_VIDEO=1",
//                );

