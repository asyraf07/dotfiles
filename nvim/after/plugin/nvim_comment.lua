local comment = require("nvim_comment")

comment.setup()

comment.setup({
    comment_empty = false,
    line_mapping = "gcc",
    operator_mapping = "gc",
})
