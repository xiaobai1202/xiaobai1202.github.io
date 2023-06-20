module.exports = {
    title: "xiaobai's technical notes",
    description: 'Just A Personal Technical Notes',
    configureWebpack: {
        resolve: {
            alias: {
                '@source': '.vuepress/public'
            }
        }
    },
    markdown: {
        lineNumbers: true
    },
    theme: 'vdoing',
    themeConfig: {
        sidebar: 'structuring' //  'structuring' | { mode: 'structuring', collapsable: Boolean} | 'auto' | 自定义
     }
}