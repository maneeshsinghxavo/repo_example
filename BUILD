load("@com_google_protobuf//:protobuf.bzl", "py_proto_library")


package(default_visibility = ["//visibility:public"])

filegroup(
    name = "book_proto",
    srcs = ["book.proto"],
    visibility = ["//visibility:public"],
)

# py_proto_library(
#     name = "book_py_proto",
#     srcs = ["@manish_repo//:book_proto"],
#     visibility = ["//visibility:public"],
# )

py_proto_library(
    name = "book_py_proto",
    srcs = [":book_proto"],
    visibility = ["//visibility:public"],
)


sh_binary(
    name = "hello",
    srcs = ["@manish_repo//:hello"],
)

py_binary(
    name = "test_book",
    srcs = ["test_book.py"],
    data = [
        ":book_py_proto",  # a py_library
    ],
)