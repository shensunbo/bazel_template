# BUILD file for src directory

package(default_visibility = ["//visibility:public"])

cc_binary(
    name = "hello_world",
    srcs = ["main.cpp"],
    data = [
        "//res:config",
    ],
    copts = [
        "-std=c++17",
        "-Wall",
        "-Wextra",
    ],
    linkopts = select({
        "//:debug": ["-g"],
        "//:release": ["-O2"],
        "//conditions:default": [],
    }),
)

# Alternative library target if you want to separate logic from main
cc_library(
    name = "hello_lib",
    srcs = ["main.cpp"],
    hdrs = [],
    copts = [
        "-std=c++17",
        "-Wall",
        "-Wextra",
    ],
    visibility = ["//visibility:public"],
)