local d,e=_G,_
local e,e,e,e,e,e,e=table.insert,table.remove,wipe,sort,date,time,random
local i,e,e,e,m,e,b,e,e,e=math,tostring,string.join,string.lower,string.split,string.sub,string.trim,string.upper,math.floor,tonumber
local e,x,S,e,e,e=select,pairs,print,next,type,unpack
local e,f,e=loadstring,assert,error
d.VCP=VCP or{}local s=''local e=2^32
local u=e-1
local function r(n)local t={}local e=setmetatable({},t)function t:__index(t)local n=n(t)e[t]=n
return n
end
return e
end
local function c(i,n)local function c(o,t)local e,l=0,1
while o~=0 and t~=0 do
local a,r=o%n,t%n
e=e+i[a][r]*l
o=(o-a)/n
t=(t-r)/n
l=l*n
end
e=e+(o+t)*l
return e
end
return c
end
local function t(e)local t=c(e,2^1)local t=r(function(n)return r(function(e)return t(n,e)end)end)return c(t,2^(e.n or 1))end
local a=t({[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4})local function r(t,n,l,...)local o=nil
if n then
t=t%e
n=n%e
o=a(t,n)if l then o=r(o,l,...)end
return o
elseif t then return t%e
else return 0 end
end
local function t(t,n,l,...)local o
if n then
t=t%e
n=n%e
o=((t+n)-a(t,n))/2
if l then o=bit32_band(o,l,...)end
return o
elseif t then return t%e
else return u end
end
local function P(t)return(-1-t)%e end
local function o(t,e)if e<0 then return lshift(t,-e)end
return i.floor(t%2^32/2^e)end
local function l(n,t)if t>31 or t<-31 then return 0 end
return o(n%e,t)end
local function a(t,e)if e<0 then return l(t,-e)end
return(t*2^e)%2^32
end
local function n(o,n)o=o%e
n=n%32
local e=t(o,2^n-1)return l(o,n)+a(e,32-n)end
local T={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298,}local function g(e)return(string.gsub(e,".",function(e)return string.format("%02x",string.byte(e))end))end
local function o(e,n)local t=""for n=1,n do
local n=e%256
t=string.char(n)..t
e=(e-n)/256
end
return t
end
local function c(n,t)local e=0
for t=t,t+3 do e=e*256+string.byte(n,t)end
return e
end
local function h(t,e)local n=64-((e+9)%64)e=o(8*e,8)t=t.."€"..string.rep("\0",n)..e
f(#t%64==0)return t
end
local function C(e)e[1]=1779033703
e[2]=3144134277
e[3]=1013904242
e[4]=2773480762
e[5]=1359893119
e[6]=2600822924
e[7]=528734635
e[8]=1541459225
return e
end
local function p(o,i,e)local a={}for e=1,16 do a[e]=c(o,i+(e-1)*4)end
for t=17,64 do
local e=a[t-15]local o=r(n(e,7),n(e,18),l(e,3))e=a[t-2]a[t]=a[t-16]+o+a[t-7]+r(n(e,17),n(e,19),l(e,10))end
local l,i,c,x,o,f,u,d=e[1],e[2],e[3],e[4],e[5],e[6],e[7],e[8]for s=1,64 do
local b=r(n(l,2),n(l,13),n(l,22))local e=r(t(l,i),t(l,c),t(i,c))local b=b+e
local e=r(n(o,6),n(o,11),n(o,25))local t=r(t(o,f),t(P(o),u))local e=d+e+t+T[s]+a[s]d,u,f,o,x,c,i,l=u,f,o,x+e,c,i,l,e+b
end
e[1]=t(e[1]+l)e[2]=t(e[2]+i)e[3]=t(e[3]+c)e[4]=t(e[4]+x)e[5]=t(e[5]+o)e[6]=t(e[6]+f)e[7]=t(e[7]+u)e[8]=t(e[8]+d)end
local function l(t)t=h(t,#t)local e=C({})for n=1,#t,64 do p(t,n,e)end
return g(o(e[1],4)..o(e[2],4)..o(e[3],4)..o(e[4],4)..o(e[5],4)..o(e[6],4)..o(e[7],4)..o(e[8],4))end
local function e()local e=CreateFrame('EditBox','VCPInputBox',UIParent,'InputBoxTemplate')e:SetWidth(250)e:SetHeight(20)VCPInputBoxMiddle:ClearAllPoints()VCPInputBoxMiddle:SetPoint('LEFT',VCPInputBoxLeft,'RIGHT',0,0)VCPInputBoxMiddle:SetPoint('RIGHT',VCPInputBoxRight,'LEFT',0,0)e:ClearAllPoints()e:SetPoint('CENTER',0,0)e:SetAutoFocus(false)e:SetText('This is an example input box')end
local function i(e,r,o,n,l,t)e=e or'Default'o=o or 300
n=n or 150
t=t or{r=0,g=0,b=0,a=.8}frameName=('%s%s'):format('VCPDialog',e)local e=d[frameName]or CreateFrame('Frame',frameName,UIParent)e.Close=e.Close or function()e:Hide()end
e:SetWidth(o)e:SetHeight(n)e.margin=l or 4
local n=e.texture or e:CreateTexture(nil,"BACKGROUND")n:SetTexture(t.r,t.g,t.b,t.a)n:SetAllPoints(e)e.texture=n
e:SetPoint("TOP",0,-100)local t=e.fontString or e:CreateFontString(('%s%s'):format(e:GetName(),'Text'))e.fontString=t
t:SetPoint("BOTTOMRIGHT",-5,35)t:SetPoint("TOPLEFT",5,-5)t:SetFont('Fonts\\FRIZQT__.TTF',14)t:SetJustifyV("TOP")t:SetText(r)e:Show()return e
end
local function c(a,l,t,c,r,n,o)a=a or'Button'l=l or'Yes'r=r or 30
n=n or{r=1,g=1,b=1,a=.5}o=o or{r=0,g=.7,b=0,a=1}t.buttons=t.buttons or{}local e=function(t,e)e.buttons=e.buttons or{}for n,e in x(e.buttons)do
if e.id==t then return e.frame end
end
local n=CreateFrame('Frame',('%sButton%s'):format(e:GetName(),t),e)table.insert(e.buttons,{id=t,frame=n})return n
end
local e=e(a,t)local a=e.texture or e:CreateTexture(nil,"BACKGROUND")e.texture=a
e:SetScript('OnMouseDown',function()if c then
c()end
end)e:SetScript('OnEnter',function(e)e.texture:SetTexture(o.r,o.g,o.b,o.a)end)e:SetScript('OnLeave',function(e)e.texture:SetTexture(n.r,n.g,n.b,n.a)end)a:SetTexture(n.r,n.g,n.b,n.a)a:SetAllPoints(e)e:SetHeight(r)local n=e.fontString or e:CreateFontString(('%s%s'):format(e:GetName(),'Text'))e.fontString=n
n:SetPoint("CENTER",0,0)n:SetFont('Fonts\\FRIZQT__.TTF',14,'OUTLINE')n:SetText(l)for o,n in x(t.buttons)do
n.frame:SetWidth((n.frame:GetParent():GetWidth()-(t.margin*(1+#t.buttons)))/#t.buttons)n.frame:ClearAllPoints()if o==1 then
n.frame:SetPoint("BOTTOMLEFT",t.margin,t.margin)else
n.frame:SetPoint("LEFT",t.buttons[o-1].frame,"RIGHT",t.margin,0)end
end
e:Show()end
local function a(t,n,o)n=n or''local e=t.textbox or CreateFrame('EditBox',('%s%s'):format(t:GetName(),'TextBox'),t,'InputBoxTemplate')t.textbox=e
e:SetPoint("BOTTOM",0,45)e:SetWidth(t:GetWidth()-10)e:SetHeight(12)e:SetText(n)e:SetMultiLine(false)if o then e:HighlightText()end
e:SetAutoFocus(false)e:SetCursorPosition(0)e:SetFocus()e:HighlightText()e:Show()local t=e.texture or e:CreateTexture(nil,"BACKGROUND")t:SetTexture(0,0,0,.3)t:SetAllPoints(e)e.texture=t
end
local function n()return string.lower(string.gsub(GetRealmName(),' ','-'))end
local function t()return string.lower(UnitName('player'))end
local function o()local e={deDE='eu',enGB='eu',enUS='us',esES='',esMX='',frFR='eu',itIT='eu',koKR='kr',ptBR='',ruRU='eu',zhCN='cn',zhTW='cn',}locale=GetLocale()for e,t in x(e)do
if e==locale then
return t
end
end
end
local function e()return string.format('%s-%s-%s',o(),n(),t())end
local function f(t)if not t then return end
local r=e()local e=t
local n=149
local o=4
for n=0,n do
if(n%o)==0 then
e=l(string.format('%s%s',e,t))elseif(n%o)==1 then
e=l(string.format('%s%s',e,r))elseif(n%o)==2 then
e=l(string.format('%s%s%s',e,t,r))elseif(n%o)==3 then
e=l(string.format('%s%s%s',e,r,t))end
end
return e
end
local function t()local e=i('ClaimOutput','VCP\n\nCopy the provided Claim Token for use in the online VCP application.',450)local t=a(e,s)local e=c('Close','Close',e,function()e:Close()end)end
local function n(e)if not(e=='')then
local e=m(' ',e)if b(e)=='claim'then
local e=i('ClaimInput','VCP\n\nPaste your provided API Key and click Verify.',450)local n=a(e)local t=c('Verify','Verify',e,function()s=f(d['VCPDialogClaimInputTextBox']:GetText())d['VCPDialogClaimInput']:Close()t()end)local e=c('cancel','Cancel',e,function()e:Close()end)end
else
S('Syntax: /vcp [claim]')end
end
SLASH_VCP1='/vcp'SlashCmdList['VCP']=n