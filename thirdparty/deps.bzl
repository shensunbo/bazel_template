# Third-party dependencies configuration

# Example: Google Test framework
# Uncomment and modify as needed:

# load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
# 
# http_archive(
#     name = "com_google_googletest",
#     urls = ["https://github.com/google/googletest/archive/release-1.12.1.tar.gz"],
#     strip_prefix = "googletest-release-1.12.1",
# )

# Example: Abseil (Google's C++ Common Libraries)
# http_archive(
#     name = "com_google_absl",
#     urls = ["https://github.com/abseil/abseil-cpp/archive/refs/tags/20230125.0.tar.gz"],
#     strip_prefix = "abseil-cpp-20230125.0",
# )

# Example: JSON library (nlohmann/json)
# http_archive(
#     name = "nlohmann_json",
#     urls = ["https://github.com/nlohmann/json/releases/download/v3.11.2/include.zip"],
#     build_file = "@//thirdparty:json.BUILD",
#     strip_prefix = "include",
# )