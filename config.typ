#import "tufted-lib/tufted.typ" as tufted

/// 在 `config.typ` 中配置全局模板配置 template
/// 之后的每个页面都会从上个页面导入这个模板函数
/// 在每个具体页面中，都可以通过 `#show: template` 来应用模板
/// 也可以通过 `template.with(...)` 来覆盖某些配置项，从而为某个页面定制参数
#let template = tufted.tufted-web.with(
  /// 网站顶部导航栏的链接字典。格式为 `("链接地址": "显示名称")`。
  // 例如，如果你想添加一个 Entry 页，你需要添加 `"/Entry/": "Entry"`
  // 然后在 `content/` 路径中新建 `Entry/`路径，在其中添加 `index.typ` 作为 Entry 页的内容
  header-links: (
    "/": [*主页*],
    "/me/": [*我*],
    "/interest/":[*兴趣*],
    "/blogs/": [*博文*],
    "/love/":[*恋爱日志*],
    "/film_television/": [*观影追剧*],
    "/graduate":[*保研*]
  ),
  
  /// 网站的站点标题。会显示在浏览器标签页以及 SEO/社交分享卡片中。
  website-title: "屈良煜的个人网站",
  /// 网站作者。用于生成 <meta name="author"> 标签。（可选）
  author: "屈良煜",
  /// 网站描述。用于 SEO 搜索引擎摘要和社交媒体分享预览。（可选）
  description: "个人网站",
  /// 站点的根 URL (例如 "https://example.com")。用于生成 Canonical URL 元数据。（可选）
  website-url: "https://28nightingale.github.io",
  /// 网站的默认语言，例如 "zh" 或 "en"，默认为 "zh"。
  lang: "zh",
  /// 订阅源配置 (字符串数组)，指定包含在 RSS 订阅源中的内容目录列表。（可选）
  /// 例如，`("/blogs/",)` 会将 `blogs` 目录下的所有文章包含在订阅源中。
  feed-dir: ("/blogs/",),
  
  /// 自定义页脚元素列表 (content 数组)，显示在页面底部。
  footer-elements: (
    "现居爱河",
    [模板来源： #link("https://github.com/Yousa-Mirage/Tufted-Blog-Template")[Tufted-Blog-Template]],
  ),
)

// 更多参数可参考网站配置文档。