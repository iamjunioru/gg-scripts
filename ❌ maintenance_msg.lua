-- yuni here

function firstMain()
gg.setVisible(false)

local printStr = " ā ļø The script used contains several bugfixes, fixed by me!\n "
printStr = printStr .. "\n" .. "ā ļø š š®šŗ š°š¼šæšæš²š°šš¶š»š“ šš¼šŗš² š¼š³ ššµš²šŗ š³š¼šæ šÆš²ššš²šæ š²šš½š²šæš¶š²š»š°š²."
printStr = printStr .. "\n"
printStr = printStr .. "\n" .. "š©š²šæšš¶š¼š»: 3.1 adapted from šš»šš²šæš»š®š°š¶š¼š»š®š¹ š¦š²šæšš¶š°š²."
printStr = printStr .. "\n"
printStr = printStr .. "\n" .. "š¬ If you have any questions, speak to me on Discord: å°¤å°¼#4534!"
local alertMsg = gg.alert(printStr, "š§ Wait for maintenance", "š¹ Talk to Yuni on Discord")
if (alertMsg == 1) then Sair()
elseif(alertMsg == 2) then Copy()
end
end


function Sair()
gg.alert("\nā ļø š¦š¢š¢š” šŖššš šš šš©ššššššš", "š¹ šŖš®š¶š...")
gg.toast("See you later! āØ")
os.exit()
end

function Copy()
gg.copyText('å°¤å°¼#4534')
gg.toast("š¬ Yuni: My Discord ID has been copied! talk to me.")
os.exit()
end

while true do
if gg.isVisible() then
gg.setVisible(false)
firstMain()
end
end