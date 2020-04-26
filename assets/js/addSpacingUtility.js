'use strict';

const plugin = require('tailwindcss/plugin');
const _ = require('lodash');

module.exports  =  function ( atr_name ) {
    return plugin(function({ addUtilities,  e, config }) {
        const newUtility = _.map(config('theme.spacing'), (value, key) => {
            return {
                [`.${e(`${atr_name}-${key}`)}`]: {
                    [`${atr_name}`]: `${value}`
                }
            }
        });
        addUtilities(newUtility);
    });
}

