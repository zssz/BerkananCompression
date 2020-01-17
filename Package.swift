// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
  name: "BerkananCompression",
  products: [
    .library(
      name: "BerkananCompression",
      targets: ["BerkananCompression"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "BerkananCompression",
      dependencies: []),
  ]
)
