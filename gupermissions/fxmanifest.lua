fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'Quags Garcia | Quagzy#0366'
description 'gupermissions'
version '1.0.0'


client_scripts {
	'cl.lua',
}

server_scripts {
	"sv.lua",
	"disc.lua"
}

shared_scripts {
	'@ox_lib/init.lua'
}

server_exports { 
	"GetDiscordRoles",
	"GetRoleIdFromRoleName",
	"GetDiscordAvatar",
	"GetDiscordName",
	"GetDiscordEmail",
	"IsDiscordEmailVerified",
	"GetDiscordNickname",
	"GetGuildIcon",
	"GetGuildSplash",
	"GetGuildName",
	"GetGuildDescription",
	"GetGuildMemberCount",
	"GetGuildOnlineMemberCount",
	"GetGuildRoleList",
	"ResetCaches",
	"CheckEqual",
	"SetNickname",
	"SetRoles",
	"AddRole",
	"RemoveRole",
	"ChangeDiscordVoice",
	"ClearCache",
	"FetchRoleID"
} 