-- THIS SCRIPT WAS MADE BY NoSoyDany for La Nación Company.
-- Contact: nosoydany@lanacion.company
-- MADE IN SPAIN

fx_version 'cerulean'

game 'gta5'
description 'Break a bottle - Made for ESX Legacy'
author 'NoSoyDany'

version '1.2.0'

server_script {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/main.lua'
}

client_scripts {
	'client/main.lua'
}

dependencies {
	'es_extended'
}

shared_script '@es_extended/imports.lua' -- MADE FOR LEGACY. Ask for v1.1 on our discord.
