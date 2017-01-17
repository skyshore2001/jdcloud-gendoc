@module jdcloud-gendoc

代码内文档生成器。

对以下关键字会生成标题(同时也生成链接): @fn, @var, @module, @class

对以下关键字会生成锚点（被链接对象）：@alias, @key, @event

使用@see可以引用这些对象。特别的，@see后面可连用多个以","分隔的关键字，如 @see param,mparam 。

用法：

	php jdcloud-gendoc.php mysrc.js -title "API-Reference" > doc.html

文档于utf-8编码，引用css文件style.css。该文件可自行配置。