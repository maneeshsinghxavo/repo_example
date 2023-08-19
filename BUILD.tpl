
package(default_visibility = ["//visibility:public"])
load("@com_google_protobuf//:protobuf.bzl", "py_proto_library")


filegroup(
    name = "book_proto",
    srcs = ["book.proto"],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "hello",
    srcs = ["hello.sh"],
    visibility = ["//visibility:public"],
)

py_proto_library(
    name = "book_py_proto",
    srcs = [":book_proto"],
    visibility = ["//visibility:public"],
)
