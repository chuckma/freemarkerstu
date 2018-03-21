<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>freemarker test</title>
    <style type="text/css">
        #demo{
            width: 500px;
            height: auto;
            left: 20px;
        }
    </style>
</head>
<body>
    整型数据:   ${intVar!} <br>
    Long:   ${longVar!}<br>
    字符串:    ${strinVar!}<br>
    double:    ${doubleVar!}<br>
    boolean:    ${booleanVar!?string('yes','no')}<br>
    Date:    ${dateVar!?string('yyyy-MM-dd')}<br>
    null:    ${nullVar!}<br>
    missing:    ${ssssVar!}<br>

    user 对象:    ${(user.userName)!}<br>

    <div id="demo">
        <ul>
            <li>集合list</li>
            <#list list as item>
                ${item!}<br>
            </#list>
        </ul>
        <ul>
            <li>集合map</li>
            <#list map? keys as key>
                ${key}:${map[key]}<br>
            </#list>
        </ul>
        <ul>
            <li>if 判断</li>
            <#assign var= 80/>
            <#if var == 99>
                var = 99
            <#else >
                var != 99
            </#if>

            <#if var &gt; 99>
                var > 99
            <#elseif var ==99 >
                var = 99
            <#else>
                var < 99
            </#if>
        </ul>

        <ul>
            <li>if 判断list  两个 ? 表示是否为空或者是否存在</li>
            <#if list??>
                <#list list as item>
                    ${item}<br>
                </#list>
            </#if>
        </ul>

        <ul>
            <li>if 多条件判断 || && !</li>
            <#assign var =1>
            <#if var ==1 || var ==2>
                ${var}<br>
            </#if>
            <#if var ==1 && var ==2>
                  ${var}<br>
            </#if>
        </ul>

        <ul>
            <li>字符串操作</li>
            <#assign a ='hello'/>
            <#assign b ='word'/>
            拼接  ${a+b};<br>
            截取 ${(a+b)?substring(5,8)}<br>
            大写 ${(a+b)?upper_case}<br>
            小写 ${(a+b)?lower_case}<br>
            index_of ${(a+b)?index_of('l')}<br>
        </ul>
        <ul>
            <li>自定义排序函数</li>
            <#assign myList = [23,2,5,67,34,89]/>
            <#list myList?sort?reverse as item>
           ${item_index} : ${item}<br>
        </#list>
        </ul>

        <ul>
            <li>内建函数</li>
        <#assign myList = [23,2,5,67,34,89]/>
        ${myList?first}
    </div>
</body>
</html>