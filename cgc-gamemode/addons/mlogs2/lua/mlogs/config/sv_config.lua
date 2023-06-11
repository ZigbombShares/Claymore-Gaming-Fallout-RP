--[[
	mLogs 2 (M4D Logs 2)
	Created by M4D | http://m4d.one/ | http://steamcommunity.com/id/m4dhead |
	Copyright © 2018 M4D.one All Rights Reserved
	All 3rd party content is public domain or used with permission
	M4D.one is the copyright holder of all code below. Do not distribute in any circumstances.
--]]

// FILE VERSION: 1 - View lastest versions here: https://docs.m4dsolutions.com/#/category/1/article/4
mLogs.config.fileVersions = mLogs.config.fileVersions or {}
mLogs.config.fileVersions["config/sv_config.lua"] = 1

// Documentation: https://docs.m4dsolutions.com/#/category/1/article/2

// Storage
// When changing to MySQL, please read the following guide to ensure you have installed the libraries correctly.
// https://docs.m4dsolutions.com/#/category/1/article/5
mLogs.config.provider = "mysql" // Storage Type, can be either "flatfile" or "mysql"

// ---- THESE SETTINGS ARE USED IF YOU ARE USING MYSQL ABOVE ---- //
mLogs.config.mysqlHost = "192.185.16.74" // MySQL Host
mLogs.config.mysqlUsername = "claymore_admin" // MySQL Username
mLogs.config.mysqlPassword = "tSQBG'AN+{-@G<8b" // MySQL Password
mLogs.config.mysqlDatabase = "claymore_gmod" // MySQL Database
mLogs.config.mysqlPort = 3306 // MySQL Port

//-----------------------------------------
if not mLogs.config then
	mLogs.Print(mLogs.getLang("invalid_config"))
	return
end

mLogs.Print(mLogs.getLang("loaded_config"))
hook.Call("mLogs_ConfigLoaded")
