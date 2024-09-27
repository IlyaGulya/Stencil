// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
    .library(name: "Stencil", targets: ["Stencil"])
  ],
  dependencies: [
    .package(url: "https://github.com/IlyaGulya/PathKit-musl", branch: "master"),
    .package(url: "https://github.com/kylef/Spectre.git", from: "0.10.1")
  ],
  targets: [
    .target(name: "Stencil", dependencies: [
      "PathKit"
    ]),
    .testTarget(name: "StencilTests", dependencies: [
      "Stencil-musl",
      "Spectre"
    ])
  ],
  swiftLanguageVersions: [.v5]
)
