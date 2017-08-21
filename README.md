@module jdcloud-gendoc

代码内文档生成器。

对以下关键字会生成标题(同时也生成链接): @fn, @var, @module, @class

对以下关键字会生成锚点（被链接对象）：@alias, @key, @event

使用@see可以引用这些对象。特别的，@see后面可连用多个以","分隔的关键字，如 @see param,mparam 。

用法：

	php jdcloud-gendoc.php mysrc.js -title "API-Reference" > doc.html

文档使用utf-8编码。输出模板默认为refdoc-template.php，如果要指定模板，可以用`-template`参数。

	php jdcloud-gendoc.php mysrc.js -title "API-Reference" -template refdoc-template-jdcloud.php > doc.html

默认会引用css文件style.css，如果要自行指定额外js/css文件，可以用-linkFiles参数，多个文件用逗号分隔，如

	php jdcloud-gendoc.php mysrc.js -title "API-Reference" -linkFiles "doc.js,doc.css" > doc.html

注意:

- php.ini应加载mbstring模块.
- 可直接使用生成的软件包jdcloud-gendoc.phar.