# Bazel C++ Template

一个完整的C++ Bazel项目模板，包含了标准的项目结构和配置。

## 项目结构

```
bazel_template/
├── src/                 # 源代码目录
│   ├── BUILD           # 源代码构建文件
│   └── main.cpp        # Hello World 主程序
├── res/                # 资源文件目录  
│   ├── BUILD           # 资源文件构建文件
│   └── config.txt      # 示例配置文件
├── thirdparty/         # 第三方依赖
│   ├── BUILD           # 第三方依赖构建文件
│   ├── deps.bzl        # 依赖配置文件
│   └── json.BUILD      # JSON库BUILD示例
├── BUILD               # 根目录BUILD文件
├── WORKSPACE           # Bazel工作空间配置
├── .bazelrc            # Bazel构建配置
└── README.md           # 项目说明文档
```

## 快速开始

### 前置条件

确保您的系统已安装：
- [Bazel](https://bazel.build/install) (推荐版本 5.0+)
- C++ 编译器 (GCC 或 Clang)
- Git

### 构建项目

```bash
# 克隆项目
git clone <repository-url>
cd bazel_template

# 构建Hello World程序
bazel build //src:hello_world

# 运行程序
bazel run //src:hello_world
```

### 构建配置

项目支持多种构建配置：

```bash
# Debug构建 (包含调试信息)
bazel build --config=debug //src:hello_world

# Release构建 (优化版本)
bazel build --config=release //src:hello_world

# 快速构建 (开发用)
bazel build --config=fast //src:hello_world

# 使用地址消毒器
bazel build --config=asan //src:hello_world
```

## 添加新的源文件

1. 在 `src/` 目录下添加您的 `.cpp` 和 `.h` 文件
2. 更新 `src/BUILD` 文件，将新文件添加到相应的 `cc_library` 或 `cc_binary` 目标中
3. 运行构建命令

示例 `src/BUILD` 文件结构：

```python
cc_binary(
    name = "my_app",
    srcs = [
        "main.cpp",
        "my_class.cpp",
    ],
    hdrs = [
        "my_class.h",
    ],
    deps = [
        # 添加依赖
    ],
)
```

## 添加第三方依赖

1. 编辑 `thirdparty/deps.bzl` 文件
2. 取消注释或添加所需的依赖项
3. 如果需要，创建对应的 BUILD 文件
4. 在 `WORKSPACE` 文件中加载依赖

示例添加 Google Test：

```python
# 在 thirdparty/deps.bzl 中
http_archive(
    name = "com_google_googletest",
    urls = ["https://github.com/google/googletest/archive/release-1.12.1.tar.gz"],
    strip_prefix = "googletest-release-1.12.1",
)

# 在您的 BUILD 文件中使用
cc_test(
    name = "my_test",
    srcs = ["my_test.cpp"],
    deps = [
        "@com_google_googletest//:gtest_main",
    ],
)
```

## 资源文件

资源文件放在 `res/` 目录下，可以通过以下方式在程序中使用：

1. 在 `cc_binary` 或 `cc_test` 的 `data` 属性中添加资源文件
2. 在代码中使用相对路径访问资源文件

## 测试

```bash
# 运行所有测试
bazel test //...

# 运行特定测试
bazel test //src:my_test

# 查看测试输出
bazel test --test_output=all //src:my_test
```

## 代码覆盖率

```bash
# 生成覆盖率报告
bazel coverage //...

# 查看覆盖率报告
genhtml bazel-out/_coverage/_coverage_report.dat -o coverage_html
```

## 自定义配置

您可以创建 `.bazelrc.user` 文件来添加个人特定的构建配置，这个文件会被自动加载但不会被提交到版本控制中。

## 许可证

本项目模板在 MIT 许可证下发布。详见 LICENSE 文件。

## 贡献指南

欢迎提交 issue 和 pull request 来改进这个模板！
