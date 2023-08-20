test


run bazel build :hello

 /home/manish/develop/repo_example/WORKSPACE:13:15: in <toplevel>
Repository rule git_repository defined at:
  /home/manish/.cache/bazel/_bazel_manish/303908da59afcb52620d9f9c8dd22db7/external/bazel_tools/tools/build_defs/repo/git.bzl:181:33: in <toplevel>
ERROR: /home/manish/develop/repo_example/BUILD:12:17: //:book_py_proto_genproto: label '@manish_repo//:book_pb2.py' is not in the current package
ERROR: Skipping ':hello': Error evaluating ':hello': error loading package '': Package '' contains errors
WARNING: Target pattern parsing failed.
ERROR: Error evaluating ':hello': error loading package '': Package '' contains errors


if comment book_py_proto target [line 12-16]
you will see success message


manish@localhost:~/develop/repo_example> bazel build :hello 
INFO: Analyzed target //:hello (39 packages loaded, 163 targets configured).
INFO: Found 1 target...
Target //:hello up-to-date:
  bazel-bin/hello
INFO: Elapsed time: 2.172s, Critical Path: 0.07s
INFO: 4 processes: 4 internal.
INFO: Build completed successfully, 4 total actions


you can also refer 
bazel build @manish_repo//:book_py_proto

bazel run //:test_book