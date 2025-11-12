# BUILD file for res directory

package(default_visibility = ["//visibility:public"])

# Configuration files
filegroup(
    name = "config",
    srcs = [
        "config.txt",
    ],
    visibility = ["//visibility:public"],
)

# Example of other resource types you might have
filegroup(
    name = "assets",
    srcs = glob([
        "*.png",
        "*.jpg", 
        "*.json",
        "*.xml",
    ], allow_empty = True),
    visibility = ["//visibility:public"],
)