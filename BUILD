# Root BUILD file for bazel_template project

package(default_visibility = ["//visibility:public"])

# Define common config settings that can be used across the project
config_setting(
    name = "debug",
    values = {"compilation_mode": "dbg"},
)

config_setting(
    name = "release",
    values = {"compilation_mode": "opt"},
)