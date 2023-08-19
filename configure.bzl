
def _repo_configure_impl(repository_ctx):

    repository_ctx.template(
        "BUILD",
        Label("//:BUILD.tpl"),
        {
            "%{NAME}%": repository_ctx.attr.pkg_name,
        },
    )

    repository_ctx.template(
    "book.proto",
    Label("//:book.proto.tpl"),
    {
        "%{NAME}%": repository_ctx.attr.pkg_name,
    },
    )

    repository_ctx.template(
    "hello.sh",
    Label("//:hello.sh.tpl"),
    {
        "%{NAME}%": repository_ctx.attr.pkg_name,
    },
    )


repo_configure = repository_rule(
    implementation = _repo_configure_impl,
    attrs = {
        "pkg_name": attr.string(),
    },
)
