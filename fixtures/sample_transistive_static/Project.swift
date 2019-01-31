import ProjectDescription

let project = Project(name: "sample_transistive_static",
                      up: [
                        /* Configures the environment for the project */
                        /* .homebrew(packages: ["swiftlint"]) */
                      ],
                      targets: [
                        Target(name: "App",
                               platform: .iOS,
                               product: .app,
                               bundleId: "io.tuist.App",
                               infoPlist: "Info.plist",
                               sources: "Sources/**",
                               dependencies: [
                                    .project(target: "A", path: "Modules/A")
                                ]),
                        Target(name: "AppTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "io.tuist.AppTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "App")
                               ])
                      ])
