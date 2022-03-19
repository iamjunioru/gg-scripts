-- yuni here

function firstMain()
gg.setVisible(false)

local printStr = " ⚠️ The script used contains several bugfixes, fixed by me!\n "
printStr = printStr .. "\n" .. "⚠️ 𝗜 𝗮𝗺 𝗰𝗼𝗿𝗿𝗲𝗰𝘁𝗶𝗻𝗴 𝘀𝗼𝗺𝗲 𝗼𝗳 𝘁𝗵𝗲𝗺 𝗳𝗼𝗿 𝗯𝗲𝘁𝘁𝗲𝗿 𝗲𝘅𝗽𝗲𝗿𝗶𝗲𝗻𝗰𝗲."
printStr = printStr .. "\n"
printStr = printStr .. "\n" .. "𝗩𝗲𝗿𝘀𝗶𝗼𝗻: 3.1 adapted from 𝗜𝗻𝘁𝗲𝗿𝗻𝗮𝗰𝗶𝗼𝗻𝗮𝗹 𝗦𝗲𝗿𝘃𝗶𝗰𝗲."
printStr = printStr .. "\n"
printStr = printStr .. "\n" .. "💬 If you have any questions, speak to me on Discord: 尤尼#4534!"
local alertMsg = gg.alert(printStr, "🚧 Wait for maintenance", "🌹 Talk to Yuni on Discord")
if (alertMsg == 1) then Sair()
elseif(alertMsg == 2) then Copy()
end
end


function Sair()
gg.alert("\n⚠️ 𝗦𝗢𝗢𝗡 𝗪𝗜𝗟𝗟 𝗕𝗘 𝗔𝗩𝗔𝗟𝗜𝗔𝗕𝗟𝗘", "🌹 𝗪𝗮𝗶𝘁...")
gg.toast("See you later! ✨")
os.exit()
end

function Copy()
gg.copyText('尤尼#4534')
gg.toast("💬 Yuni: My Discord ID has been copied! talk to me.")
os.exit()
end

while true do
if gg.isVisible() then
gg.setVisible(false)
firstMain()
end
end