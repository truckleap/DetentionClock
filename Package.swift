// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DetentionClock",
    products: [.library(name: "DetentionClock", targets: ["DetentionClock"])],
    targets: [.target(name: "DetentionClock", path: ".", exclude: ["README.md", "LICENSE", "DetentionClock.podspec"], sources: ["DetentionClock.swift"])]
)
