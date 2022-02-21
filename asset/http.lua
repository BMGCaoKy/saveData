local request=function (url,json,key)
  local cmd="curl "..url.."?"..key.."="..json
  local handle = io.popen(cmd)
  local result = handle:read("*a")
  --print(result)
  handle:close()
  return result
end
function self:onOpen(packet)
  self.Image.Button.onMouseClick = function() 
    local a=self.Image.Editbox:getText()
    local b=request("localhost/database.php",a,"data")
    print(b)
  end
end