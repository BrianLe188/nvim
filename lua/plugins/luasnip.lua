local ls = require("luasnip")

local typescript_snippets = {
    ls.s("csl", {
        ls.t("console.log("),
        ls.i(1, "message"),
        ls.t(")"),
    }),

    ls.s("expof", {
        ls.t("export function "),
        ls.i(1, "function_name"),
    }),

    ls.s("expoc", {
        ls.t("export const "),
        ls.i(1, "constant_name"),
    }),

    ls.s("expot", {
        ls.t("export type "),
        ls.i(1, "type_name"),
    }),

    ls.s('expocl', {
        ls.t('export class '),
        ls.i(1, 'class_name')
    }),

    ls.s('expoi', {
        ls.i('export interface '),
        ls.i(1, 'interface_name')
    }),

    ls.s("expod", {
        ls.t("export default "),
        ls.i(1, "something"),
    }),

    ls.s("expodf", {
        ls.t("export default function "),
        ls.i(1, "function_name"),
    }),

    ls.s("expodc", {
        ls.t("export default const "),
        ls.i(1, "constant_name"),
    }),

    ls.s("expodt", {
        ls.t("export default type "),
        ls.i(1, "type_name"),
    }),


    ls.s('expodcl', {
        ls.t('export default class '),
        ls.i(1, 'class_name')
    }),

    ls.s('expodi', {
        ls.i('export default interface '),
        ls.i(1, 'interface_name')
    }),
}

return {
	"L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
	config = function()
		-- Configuration for LuaSnip
		ls.config.set_config({
			-- Configuration options here
			history = true,
			updateevents = "TextChanged,TextChangedI",
		})

		ls.add_snippets("typescript", typescript_snippets)
        ls.add_snippets('javascript', typescript_snippets)
        ls.add_snippets('typescriptreact', typescript_snippets)
        ls.add_snippets('javascriptreact', typescript_snippets)
	end,
}
