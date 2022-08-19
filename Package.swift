// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Lottie",
  platforms: [
    .iOS("11.0"),
    .macOS("10.10"),
    .tvOS("11.0")
  ],
  products: [
    .library(
        name: "Lottie",
        targets: ["Lottie"]
    )
  ],
  targets: [
    .target(
        name: "Lottie",
        path: "Sources",
        cSettings: [
            .define(
                "SWIFT_OPTIMIZATION_LEVEL",
                to: "-O"
            ),
            .define(
                "SWIFT_COMPILATION_MODE",
                to: "wholemodule"
            )
        ]
    )
  ]
)

//:configuration = Debug
//:completeSettings = none


//:configuration = Debug
//SWIFT_OPTIMIZATION_LEVEL = -O
//SWIFT_COMPILATION_MODE = wholemodule
