# Example BUILD file for nlohmann/json library
# Save this as json.BUILD and reference it in deps.bzl

cc_library(
    name = "json",
    hdrs = glob(["nlohmann/**/*.hpp"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)