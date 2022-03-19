--autor: dream
--main/

function Main()
local choice=gg.choice({
	 "1. 🔷 No Cape", 
     "2. ⚡ Infinite Fly V1",
     "3. ⚡ Infinite Fly V2",
	 "4. Infinite Slide",
	 "5. 💙 TGC Founder's Cape - Founder's Pack(TGCPass)",
-- "6. Acender velas/Explodir escuridão",
	 "6. 🎒 Trocar de Instrumentos",
	 "7. Remove Clouds",
	 "8. ❌ Sair"
}, nil, "Yuni 🌹\nFree Version 0.2 - Sky v0.13.2(164898)\nEnjoy:")


if choice == 1 then noCape() end
if choice == 2 then Flyv1() end
if choice == 3 then Flyv2() end
if choice == 4 then Slide() end
if choice == 5 then TGC() end
--if choice == 6 then lightCandles() end
if choice == 6 then Behind() end
if choice == 7 then Clouds() end
if choice == 8 then sair() end
end

--main/>

--funções

local tmdplist = false
local senergy={}
local wxf={}
--função da capa transparente
function noCape()
gg.setVisible(false)
if(not tmdplist) then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("256",gg.TYPE_DWORD)
    gg.refineNumber("256",gg.TYPE_DWORD)
 local wxfks = gg.getResultCount()
  if wxfks ~= 0 then
      wxf = gg.getResults(wxfks)
      local tmp = {}
    for k, v in pairs(wxf) do
      tmp[#tmp + 1] = {}
      tmp[#tmp].address = v.address +60
      tmp[#tmp].flags = gg.TYPE_FLOAT
     end
      tmp = gg.getValues(tmp)
      for k, v in pairs(tmp) do
       if v.value == 1.25 then
      wxf[1] = tmp[k]
      break
      end
    end
      senergy[1] = {}
      senergy[1].flags = gg.TYPE_FLOAT
      senergy[1].address = wxf[1].address -56
      senergy[1].value = "14"
      senergy[1].freeze = true
      senergy[2] = {}
      senergy[2].flags = gg.TYPE_FLOAT
      senergy[2].address = wxf[1].address -16
      senergy[2].value = "0"
      senergy[2].freeze = true
      gg.addListItems(senergy)
      gg.clearResults()
      tmdplist=true
      gg.toast("🔷 Prontinho, agora tu tá sem capa.")
      end
else
    senergy[2].flags = gg.TYPE_FLOAT
    senergy[2].address = wxf[1].address -16
    senergy[2].freeze = true
    senergy[2].value = "1"
    gg.addListItems(senergy)
    tmdplist=false
    gg.toast("🔷 Prontinho, agora tu tá com capa.")
end
gg.clearResults()
end

--função de asa infinita
function Flyv1()
	gg.setVisible(false)
    gg.toast("💫 Ei, fica paradinho...")
    if nl_flag ~= 1 then
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("256", gg.TYPE_DWORD)
      gg.refineNumber("256", gg.TYPE_DWORD)
      wxfks = gg.getResultCount()
      if wxfks ~= 0 then
        wxf = gg.getResults(wxfks)
        tmp = {}
        for _FORV_3_, _FORV_4_ in pairs(wxf) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_4_.address + 60
          tmp[#tmp].flags = gg.TYPE_FLOAT
        end
        tmp = gg.getValues(tmp)
        for _FORV_3_, _FORV_4_ in pairs(tmp) do
          if _FORV_4_.value == 1.25 then
            wxf[1] = tmp[_FORV_3_]
            break
          end
        end
        nlsl = {}
        nlsl[1] = {}
        nlsl[1].address = wxf[1].address + 26200
        nlsl[1].flags = gg.TYPE_Dword
        wxfpy = {}
        wxfpy[1] = {}
        wxfpy[1].address = wxf[1].address - 56
        wxfpy[1].flags = gg.TYPE_FLOAT
        wxfpy[1].value = "14"
        wxfpy[1].freeze = true
        gg.addListItems(wxfpy)
        gg.clearResults()
        gg.toast("⚡ Vôo infinito ativado!")
        nl_flag = 1
      end
    else
      gg.toast("⚡ Vôo infinito desativado!")
      wxfpy[1].freeze = false
      gg.addListItems(wxfpy)
      nl_flag = 0
    end
end

-- função de asa infinita V2
function Flyv2
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("0.80",gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("0.95",gg.TYPE_FLOAT)
  gg.clearResults()
  end

--ter a capa de fundador e ir no escritório
function TGC()
  local tgc = {}
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("29281", 4, false, gg.SING_EQUAL, 0, -1)
  gg.refineNumber("29281", 4, false, gg.SING_EQUAL, 0, -1)

  z = gg.getResultCount()
  w = gg.getResults(z)
  tmp = {}
  for i, v in ipairs(w) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address - 160
    tmp[#tmp].flags = 4
  end
  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value == 1 then
      tmp[i].address = tmp[i].address + 8
      tmp[i].flags = 4
      tgc[1] = tmp[i]
      break
    end
  end
  tgc[1].value = "2219120716"
  gg.toast("💙 O TGC Pass foi obtido, agora você pode entrar no Escritório")
  gg.setValues(tgc)
  gg.addListItems(tgc)
  gg.clearResults()
end


local candlesLighted = false
local candlesLightedList = {}
--acender velas
function lightCandles()
    gg.setVisible(false)
    gg.clearResults()
	
	if(not candlesLighted) then
	
		   gg.setRanges(gg.REGION_C_ALLOC)
		
			local lz = {}
			for i=1,420 do
				lz[i] = {}
				lz[i].address = lzdz + i * 448
				lz[i].flags = gg.TYPE_FLOAT
				lz[i].value = 1
				lz[i].freeze = true
			end
			gg.addListItems(lz)
			
			candlesLighted = true
			candlesLightedList = lz
			gg.toast("As velas estão todas acesas!")
		
	else
		
		-- cancelar acender a vela e restaure todos os endereços alterados
		if(candlesLightedList ~= nil and #candlesLightedList > 0) then
			gg.clearResults()
			for i,v in pairs(candlesLightedList) do
				v.freeze = false
			end
			gg.addListItems(candlesLightedList)
		end
		
		candlesLighted = false
		gg.toast("O acendimento automático das velas foi cancelado!")
		
	end
    
    gg.clearResults()
end


local flowersLightedList = {}

-------InfiniteSlide-----

function Slide(on)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("0.80",gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("-0.75",gg.TYPE_FLOAT)
  gg.clearResults()
  end

function Slide2(off)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("-0.75",gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("0.80",gg.TYPE_FLOAT)
  gg.clearResults()
  end


  -----RemoveClouds-----

function Clouds(on)
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("16",gg.TYPE_FLOAT)
gg.setVisible(false)
gg.getResults(1000)
gg.editAll("-15", gg.TYPE_FLOAT)
gg.clearResults()
end



--Item traseiro
function Behind()
	BeMenu = 1
	gg.clearResults()
	menu13 = gg.choice({
		"1. 💕 Balanço",
		"2. 🔥 Fogueira",
		"3. ☂️ Guarda-chuva Supremo",
		"4. 🪑 Mesa",
		"5. 🎇 Cetro de fogos",
		"6. 🎸 Violão",
		"7. 🧸 Flauta",
		"8. ➰ Flauta Pan",
		"9. 🎹 Piano de inverno",
		"10. 🔔 Sino",
		"11. ☂️ Guarda-chuva",
		"12. 💫 Não há nada nas costas",
		'⬅️ Retornar a página inicial'
},nil,'Script feito por Dream/Yuni 💫\nBuild10 - Sky ver: 0.12.1\nO que você carrega nas costas?')
	if menu13 == 1 then k001() end
	if menu13 == 2 then k002() end
	if menu13 == 3 then k003() end
	if menu13 == 4 then k004() end
	if menu13 == 5 then k005() end
	if menu13 == 6 then k006() end
	if menu13 == 7 then k007() end
	if menu13 == 8 then k008() end
	if menu13 == 9 then k009() end
	if menu13 == 10 then k010() end
	if menu13 == 11 then k011() end
	if menu13 == 12 then k012() end
	if menu13 == 13 then HOME() end
GLWW=-1
end

function K1()
	menu14 = gg.choice({
		"1. 💫 Não há nada nas costas",
		"2. 💕 Balanço",
		"3. 🔥 Fogueira",
		"4. 🪑🎄 Mesa de Natal",
		"5. ☂️ Guarda-Chuva Supremo",
		"6. 🪑 Mesa",
		"7. 🎇 Cetro de fogos",
		"8. 🎸 Violão",
		"9. 🧸 Flauta",
		"10. ➰ Flauta Pan",
		"11. 🎹 Piano de inverno",
		"12. 🔔 Sino",
		"13. ☂️Guarda-Chuva",
		'⬅️ Retornar a página inicial'
},nil,'Script feito por Dream/Yuni 💫\nBuild10 - Sky ver: 0.12.1\nO que você deseja?')
	if menu14 == 1 then k12() end
	if menu14 == 2 then k10() end
	if menu14 == 3 then k9() end
	if menu14 == 4 then k11() end
	if menu14 == 5 then k0() end
	if menu14 == 6 then k3() end
	if menu14 == 7 then k8() end
	if menu14 == 8 then k4() end
	if menu14 == 9 then k5() end
	if menu14 == 10 then k6() end
	if menu14 == 11 then k2() end
	if menu14 == 12 then k1() end
	if menu14 == 13 then k7() end
	if menu14 == 14 then Behind() end
	GLWW=-1
end

function k001()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3580839943", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
	K1()
end
end

function k002()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3779226149", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
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
	gg.toast("Tem algo errado... use os itens correspondentes")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("Prontinho, selecione o item que deseja")
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
gg.toast("Fogueira")
end

function k10()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3580839943",gg.TYPE_QWORD)
gg.toast("Balanço")
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
gg.toast("Sem nada nas costas")
end

--Tp
function Tp()
	Teleport({118.10299682617;0.97198873758;-1733.97021484375})
	gg.toast("Teleportar")
end


function sair()
gg.toast("Nos vemos depois! 🌹")
os.exit()
end



--isso aqui costuma ficar no final, serve para
--deixar a função main visivel
while true do
if gg.isVisible() then
gg.setVisible(false)
Main()
end
end