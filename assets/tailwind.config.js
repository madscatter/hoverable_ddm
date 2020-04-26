const  addGroupHoverVariant  = require('./js/addGroupHoverVariant');
const  addSpacingUtility  = require('./js/addSpacingUtility');

module.exports = {
    theme: {
        extend: {},
    },
    variants: {
        visibility: ['responsive', 'hover', 'focus', 'active',  'group1-hover', 'group2-hover', 'group3-hover']
    },
    plugins: [
        addGroupHoverVariant('group1'),
        addGroupHoverVariant('group2'),
        addGroupHoverVariant('group3'),
        addSpacingUtility('left'),
        addSpacingUtility('right'),
    ],
};
