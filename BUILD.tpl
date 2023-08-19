
package(default_visibility = ["//visibility:public"])

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
