#!/usr/bin/lua

local uci = require('luci.model.uci').cursor()

local sname = uci:get_first("gluon-node-info", "location")
local altitude = uci:get("gluon-node-info", sname, "altitude")
if altitude ~= nil then
  uci:delete("gluon-node-info", sname, "altitude")
  uci:save("gluon-node-info")
  uci:commit("gluon-node-info")
end
