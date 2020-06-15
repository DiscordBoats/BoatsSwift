// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var dependencies: [Package.Dependency] = [
	.package(url: "https://github.com/dduan/Just.git",  from: "0.8.0")
]

var targetDeps: [Target.Dependency] = ["Just"]

let package = Package(
	name: "BoatsSwift",
	products: [
		.library(name: "BoatsSwift", targets: ["BoatsSwift"])
	],
	dependencies: dependencies,
	targets: [
		.target(
			name: "BoatsSwift",
			dependencies: targetDeps
		)
	]
)
