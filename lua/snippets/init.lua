local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

ls.add_snippets("javascript", {
    s("header-stamp", {
        t({
            "/*",
            " * Author : Axel Paillaud - Axelweb <contact@axelweb.fr>",
            " * Date : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("php", {
    s("header-stamp", {
        t({
            "/*",
            " * Author : Axel Paillaud - Axelweb <contact@axelweb.fr>",
            " * Date : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("smarty", {
    s("header-stamp", {
        t({
            "{**",
            " * Author : Axel Paillaud - Axelweb <contact@axelweb.fr>",
            " * Date : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " *}"
        }),
    })
})
