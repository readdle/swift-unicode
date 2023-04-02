// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "unicode",
    products: [
        .library(
            name: "unicode",
            targets: ["unicode"]
        )
    ],
	targets: [
        .binaryTarget(
            name: "unicode",
            url: "https://github.com/readdle/icu4darwin/releases/download/68.2/icu68-2-darwin-no-strip-xcframework-dynamic.zip",
            checksum: "4e47b9ca38fd3d17d0bd4e6af2b5e906677a0abd94173b8208f0b64f07d21021"
        ),
	]
)
