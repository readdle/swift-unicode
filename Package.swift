// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if TARGET_LINUX
// Linux uses the system ICU from `libicu-dev`.
let unicodeTarget: Target = .systemLibrary(
    name: "unicode",
    path: "Sources/unicode-linux",
    pkgConfig: "icu-i18n",
    providers: [.apt(["libicu-dev"])]
)
#else
let unicodeTarget: Target = .binaryTarget(
    name: "unicode",
    url: "https://github.com/readdle/icu4darwin/releases/download/68.2/icu68-2-darwin-no-strip-xcframework-dynamic.zip",
    checksum: "4e47b9ca38fd3d17d0bd4e6af2b5e906677a0abd94173b8208f0b64f07d21021"
)
#endif

let package = Package(
	name: "unicode",
    products: [
        .library(
            name: "unicode",
            targets: ["unicode"]
        )
    ],
	targets: [
        unicodeTarget,
	]
)
