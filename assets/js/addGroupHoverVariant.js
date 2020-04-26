'use strict';

const plugin = require('tailwindcss/plugin');
const selectorParser = require('postcss-selector-parser');
const prefixSelector = require('tailwindcss/lib/util/prefixSelector.js').default;

module.exports = function (hoverName, combinator = " ") {
    if(!combinator.match(/^[>+~ ]$/)) {
        throw `Invalid combinator. Your argument '${combinator}' is not acceptable.`
    }
    combinator = combinator.replace(/([>+~])/," $1 ");
    return plugin(function({ addVariant, config  }) {
        addVariant(`${hoverName}-hover`, ({ modifySelectors, separator }) => {
            return modifySelectors(({ selector }) => {
                return selectorParser(selectors => {
                    selectors.walkClasses(sel => {
                        sel.value = `${hoverName}-hover${separator}${sel.value}`;
                        sel.parent.insertBefore(sel, selectorParser().astSync(prefixSelector(config('prefix'), `.${hoverName}:hover${combinator}`))
                        )
                    })
                }).processSync(selector)
            })
        })
    });
}

