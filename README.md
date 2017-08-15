# Nginx-Lua-FastDFS-GraphicsMagick

我们通常使用FastDFS来当作图片服务器，客户端通过Nginx请求图片。<br/>
某些情况下，客户端对请求的图片有尺寸要求，如 500x600.jpg。这时我们可以使用GraphicsMagick工具动态的修改图片以满足客户端的需求。<br/>
这里使用lua脚本，调用GraphicsMagick的gm命令开处理图片。<br/>

