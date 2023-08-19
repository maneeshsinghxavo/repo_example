load("@com_google_protobuf//:protobuf.bzl", "py_proto_library")


package(default_visibility = ["//visibility:public"])

filegroup(
    name = "book_proto",
    srcs = ["book.proto"],
    visibility = ["//visibility:public"],
)

py_proto_library(
    name = "book_py_proto",
    srcs = ["@manish_repo//:book_proto"],
    visibility = ["//visibility:public"],
)


sh_binary(
    name = "hello",
    srcs = ["@manish_repo//:hello"],
)