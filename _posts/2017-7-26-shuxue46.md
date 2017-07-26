
考试周的时候写了一个markdown解析器，不过并不完整，功能还不是很棒棒。

于是重构了一遍，尽可能完整了一下，并且做成了模块，一行代码便可以安装。


# 安装

```
$ easy_install ecohMd
```


# 用法

目前只有一个函数：

```
import ecohMD
ecohMD.do(放markdown文件的文件夹，markdown文件文件名，输出文件的文件夹，输出html文件的文件名)
```

即可在输出文件的文件夹下看到输出文件。

双击.html就可以了。

# 目前功能

\*\*加粗\*\*

\_\_加粗\_\_

\*斜体\*

\_斜体\_

\+\+下划线\+\+

\~\~删除线\~\~

\=\=背景色\=\=

\[文字\]\(超链接\)

\!\[图片\]\(图片路径\)

\# 一级标题

\## 二级标题 		

\### 三级标题 	 	

\#### 四级标题 	

\##### 五级标题 	

\###### 六级标题 	

\####### 无效的标题 	

> 一级标题 	

> \------

> 二级标题 	

> \=======

\+ 无序列表1 		

\+ 无序列表2

\- 无序列表1 	

\- 无序列表2

\* 无序列表1 	

\* 无序列表2

\1. 有序列表1 	

\2. 有序列表2

\> 引用文字

\`\`\`

代码

\`\`\`

# Examples

md文件如下：

![image](http://i2.tiimg.com/1949/c566a88db39dfa49.png)

输出如下：

![image](http://i2.tiimg.com/1949/9051f5d17e8d674b.png)

代码如下：

```
import ecohMD
ecohMD.do("/Users/ecohnoch/Desktop/Markdown-Html/Markdown","test.md", "/Users/ecohnoch/Desktop/Markdown-Html/Markdown/output","fuck.html")
```

