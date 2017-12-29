if(ngx.var.height ~= '' and ngx.var.width ~= '') then
    height = tonumber(ngx.var.height);
    width = tonumber(ngx.var.width);
    if(height > 1000) then
        height = 1000
    end
    if(width > 1000) then
        height = 1000
    end
    local command = "/data/local/GraphicsMagick/bin/gm convert " .. ngx.var.request_filepath .. " -resize " .. width .. "x" .. height .. " +profile \"*\" " .. ngx.var.request_filepath .. "_" .. ngx.var.width .. "x" .. ngx.var.height .. "." .. ngx.var.ext;
    os.execute(command);
    ngx.exec(ngx.var.request_uri);
else
    ngx.exit(ngx.HTTP_NOT_FOUND);
end
