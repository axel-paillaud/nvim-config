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
            " * Author  : Axel Paillaud - Axelweb",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("javascript", {
    s("header-stamp-prestacraft", {
        t({
            "/*",
            " * Author  : Axel Paillaud - PrestaCraft",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - PrestaCraft",
            " */"
        }),
    })
})

ls.add_snippets("php", {
    s("header-stamp", {
        t({
            "/*",
            " * Author  : Axel Paillaud - Axelweb",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("php", {
    s("header-stamp-prestacraft", {
        t({
            "/*",
            " * Author  : Axel Paillaud - PrestaCraft",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - PrestaCraft",
            " */"
        }),
    })
})

ls.add_snippets("css", {
    s("header-stamp", {
        t({
            "/*",
            " * Author  : Axel Paillaud - Axelweb",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("css", {
    s("header-stamp-prestacraft", {
        t({
            "/*",
            " * Author  : Axel Paillaud - PrestaCraft",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - PrestaCraft",
            " */"
        }),
    })
})

ls.add_snippets("scss", {
    s("header-stamp", {
        t({
            "/*",
            " * Author  : Axel Paillaud - Axelweb",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " */"
        }),
    })
})

ls.add_snippets("smarty", {
    s("header-stamp", {
        t({
            "{**",
            " * Author  : Axel Paillaud - Axelweb",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - Axelweb",
            " *}"
        }),
    })
})

ls.add_snippets("smarty", {
    s("header-stamp-prestacraft", {
        t({
            "{**",
            " * Author  : Axel Paillaud - PrestaCraft",
            " * Contact : <contact@axelweb.fr>",
            " * Date    : " .. os.date("%Y-%m-%d"),
            " * Copyright since " .. os.date("%Y") .. " Axel Paillaud - PrestaCraft",
            " *}"
        }),
    })
})
