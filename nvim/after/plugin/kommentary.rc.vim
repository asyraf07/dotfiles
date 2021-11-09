lua << EOF
require('kommentary.config').configure_language("javascript", {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"{/*", "*/}"},
    prefer_single_line_comments = false,
    prefer_multi_line_comments = true,
})

require('kommentary.config').configure_language("python", {
    single_line_comment_string = "#",
    multi_line_comment_strings = {"{/*", "*/}"},
    prefer_single_line_comments = true,
    prefer_multi_line_comments = false,
})


require('kommentary.config').configure_language("vim", {
    single_line_comment_string = "--",
    multi_line_comment_strings = {"{/*", "*/}"},
    prefer_single_line_comments = true,
    prefer_multi_line_comments = false,
})
EOF
