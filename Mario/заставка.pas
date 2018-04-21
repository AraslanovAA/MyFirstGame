Program Mario;
uses CRT,GraphABC, ABCobjects;
var
Xpchel, Ypchel,takeBag,xHero,yHero,speedHero,firstShop, u,firstMan, skeit,firstTime,ulazheno, firstStreet, ToLocation, firstMill, mon : integer;
spritePchel, spriteHero :string;
objectPchel, Main_Hero : PictureABC;

Procedure MovePchel();
var Y_, vverx: integer;
vzaim : PictureABC;
begin
vverx:=1;
if (ulazheno = 0) then 
vzaim := PictureABC.Create(0,0,'vzaimod.bmp');
if (ulazheno = 1) then
vzaim := PictureABC.Create(0,0,'win.png');
for Y_ := 0 to 930 do begin
if (ulazheno =1)and (Y_=929) then
vzaim.Destroy;
if (ulazheno = 1)and(Y_=900) then begin
vzaim.Destroy;
vzaim:=PictureABC.Create(0,0,'win_3.png');
end;
if (ulazheno =1)and(Y_=460) then begin
vzaim.Destroy;
vzaim:=PictureABC.Create(0,0,'win_2.png');
end;
if (Y_ = 920) and (ulazheno=0) then vzaim.Destroy;

if (vverx=1) and (Ypchel > 400) then begin
Ypchel:=Ypchel - 3;
end;
if (vverx=1) and (Ypchel <= 400) then begin
Ypchel:= Ypchel +3;
vverx:=0;
end;
if (vverx=0) and (Ypchel < 610) then begin
Ypchel:=Ypchel+3;
end;
if (vverx=0) and (Ypchel >=610) then begin
vverx:=1;
Ypchel:=Ypchel-3;
end;
Xpchel:=Y_;
objectPchel.MoveTo(Xpchel, Ypchel);
sleep(30);
end;
end;
Procedure Pchela();
begin
window.SetSize(1500,1100);
spritePchel := 'pchela_2.png';
Xpchel :=0;
Ypchel:=500;
objectPchel := PictureABC.Create(Xpchel, Ypchel, spritePchel);

end;
Procedure WindowGame();
begin
takeBag:=0;
ulazheno:=0;
firstShop:=0;
firstMan:=0;
speedHero:=4;
ToLocation:=0;
firstMill:=0;
firstTime := 0;
firstStreet:=0;
skeit:=0;
window.Caption:='Game';
window.SetPos(1,1);
window.SetSize(1500,1100);
window.IsFixedSize := true;
end;


Procedure Flower();
var
A,Lep_1,Lep_2,Lep_3,Lep_4 :array of point;
begin
Line(0,800,2000,800);
SetLength(A, 3);
A[0].X:=1000;
A[0].Y:=800;
A[1].X:=992;
A[1].Y:=770;
A[2].X:=970;
A[2].Y:=750;
Curve(A);
Circle(955,735,20);
SetLength(Lep_1, 7);
Lep_1[0].X:=963;
Lep_1[0].Y:=716;
Lep_1[1].X:=970;
Lep_1[1].Y:=705;
Lep_1[2].X:=966;
Lep_1[2].Y:=689;
Lep_1[3].X:=955;
Lep_1[3].Y:=685;
Lep_1[4].X:=944;
Lep_1[4].Y:=689;
Lep_1[5].X:=937;
Lep_1[5].Y:=700;
Lep_1[6].X:=941;
Lep_1[6].Y:=722;
Curve(Lep_1);
FloodFIll(955,688,clBlue);
FloodFill(955,735,clYellow);
SetLength(Lep_2, 8);
Lep_2[0].X:=941;
Lep_2[0].Y:=722;
Lep_2[1].X:=930;
Lep_2[1].Y:=717;
Lep_2[2].X:=920;
Lep_2[2].Y:=720;
Lep_2[3].X:=914;
Lep_2[3].Y:=728;
Lep_2[4].X:=915;
Lep_2[4].Y:=745;
Lep_2[5].X:=920;
Lep_2[5].Y:=750;
Lep_2[6].X:=926;
Lep_2[6].Y:=753;
Lep_2[7].X:=940;
Lep_2[7].Y:=750;
Curve(Lep_2);
FloodFIll(930,719,clBlue);
SetLength(Lep_3, 7);
Lep_3[0].X:=942;
Lep_3[0].Y:=751;
Lep_3[1].X:=939;
Lep_3[1].Y:=758;
Lep_3[2].X:=943;
Lep_3[2].Y:=770;
Lep_3[3].X:=963;
Lep_3[3].Y:=772;
Lep_3[4].X:=967;
Lep_3[4].Y:=770;
Lep_3[5].X:=970;
Lep_3[5].Y:=760;
Lep_3[6].X:=967;
Lep_3[6].Y:=751;
Curve(Lep_3);
FloodFIll(960,766,clBlue);
SetLength(Lep_4, 6);
Lep_4[0].X:=966;
Lep_4[0].Y:=720;
Lep_4[1].X:=977;
Lep_4[1].Y:=704;
Lep_4[2].X:=990;
Lep_4[2].Y:=710;
Lep_4[3].X:=991;
Lep_4[3].Y:=733;
Lep_4[4].X:=988;
Lep_4[4].Y:=745;
Lep_4[5].X:=973;
Lep_4[5].Y:=743;
Curve(Lep_4);
FloodFIll(977,706,clBlue);
end;

Procedure Stars();
begin
{звезда_1}
Line(600,300,595,320);
Line(595,320,565,318);
Line(565,318,590,328);
Line(600,300,605,320);
Line(605,320,635,318);
Line(635,318,610,328);
Line(590,328,585,350);
Line(585,350,600,339);
Line(610,328,615,350);
Line(615,350,600,339);
FloodFIll(600,305,clBlue);
{звезда2}
Line(870,300,865,320);
Line(865,320,835,318);
Line(835,318,860,328);
Line(870,300,875,320);
Line(875,320,905,318);
Line(905,318,880,328);
Line(860,328,855,350);
Line(855,350,870,339);
Line(880,328,885,350);
Line(885,350,870,339);
FloodFIll(870,305,clBlue);
end;


Procedure Numbers();
begin
{4}
Line(685,318,685,268);
Line(685,268,719,268);
Line(719,268,719,298);
Line(719,298,751,298);
Line(751,298,751,268);
Line(751,268,785,268);
Line(785,268,785,368);
Line(785,368,751,368);
Line(751,368,751,318);
Line(751,318,685,318);
FloodFIll(688,315,clBlue);
Delay(800);
{стереть4}
Setpencolor(clwhite);
FloodFIll(688,315,clwhite);
Line(685,318,685,268);
Line(685,268,719,268);
Line(719,268,719,298);
Line(719,298,751,298);
Line(751,298,751,268);
Line(751,268,785,268);
Line(785,268,785,368);
Line(785,368,751,368);
Line(751,368,751,318);
Line(751,318,685,318);
{3}
Setpencolor(clblack);
Line(685,268,785,268);
Line(785,268,785,368);
LIne(785,368,685,368);
Line(685,368,685,352);
Line(685,352,755,352);
Line(755,352,755,326);
Line(755,326,685,326);
Line(685,326,685,310);
Line(685,310,755,310);
Line(755,310,755,284);
Line(755,284,685,284);
Line(685,284,685,269);
FloodFIll(688,274,clSilver);
FloodFIll(600,305,clSilver);
FloodFIll(870,305,clSilver);
Delay(800);
{стереть3}
SetPencolor(clWhite);
FloodFIll(688,274,clWhite);
Line(685,268,785,268);
Line(785,268,785,368);
LIne(785,368,685,368);
Line(685,368,685,352);
Line(685,352,755,352);
Line(755,352,755,326);
Line(755,326,685,326);
Line(685,326,685,310);
Line(685,310,755,310);
Line(755,310,755,284);
Line(755,284,685,284);
Line(685,284,685,269);

{2}
SetPenColor(clBlack);
Line(685,268,685,296);
Line(685,296,699,296);
Line(699,296,699,282);
Line(699,282,727,282);
Line(727,282,727,324);
Line(727,324,685,324);
Line(685,324,685,368);
Line(685,368,741,368);
Line(741,368,741,354);
Line(741,354,699,354);
Line(699,354,699,340);
Line(685,268,741,268);
Line(741,268,741,340);
Line(741,340,699,340);
FloodFIll(600,305,clLIme);
FloodFIll(870,305,clLime);
FloodFill(688,270,clLime);
Delay(800);

{стереть2}
SetPenColor(clWhite);
FloodFill(688,270,clWhite);
Line(685,268,685,296);
Line(685,296,699,296);
Line(699,296,699,282);
Line(699,282,727,282);
Line(727,282,727,324);
Line(727,324,685,324);
Line(685,324,685,368);
Line(685,368,741,368);
Line(741,368,741,354);
Line(741,354,699,354);
Line(699,354,699,340);
Line(685,268,741,268);
Line(741,268,741,340);
Line(741,340,699,340);

{1}
SetPenColor(clBlack);
Line(725,268,745,268);
Line(745,268,745,368);
Line(745,368,725,368);
Line(725,368,725,268);
FloodFIll(600,305,clRed);
FloodFIll(870,305,clRed);
FloodFIll(730,270,clRed);
Delay(800);
{стереть 1 и звезды}
SetPenColor(clWhite);
FloodFIll(730,270,clWhite);
FloodFIll(600,305,clwhite);
FloodFIll(870,305,clWHite);
Line(725,268,745,268);
Line(745,268,745,368);
Line(745,368,725,368);
Line(725,368,725,268);
Line(600,300,595,320);
Line(595,320,565,318);
Line(565,318,590,328);
Line(600,300,605,320);
Line(605,320,635,318);
Line(635,318,610,328);
Line(590,328,585,350);
Line(585,350,600,339);
Line(610,328,615,350);
Line(615,350,600,339);
Line(870,300,865,320);
Line(865,320,835,318);
Line(835,318,860,328);
Line(870,300,875,320);
Line(875,320,905,318);
Line(905,318,880,328);
Line(860,328,855,350);
Line(855,350,870,339);
Line(880,328,885,350);
Line(885,350,870,339);
end;

                         Procedure Update_Money(money_, WhatDo : integer);
                         begin
                         if (WhatDo =1) then mon:=mon +money_;
{вывести на экран}       if (WhatDo =0) then mon:=mon;
                         end;
    Procedure DelMono(key : integer);
begin
if key = VK_E then u:=1;
end;
    Procedure Komnata();
var
mono_1,mono_2,mono_3: PictureABC;
begin
u:=0;
window.SetSize(1152,864);
window.IsFixedSize := true;
window.Fill('komnata.jpg');
spriteHero := 'mainHero_.png';
xHero:=300;
yHero:=280;
Main_Hero := PictureABC.Create(xHero, yHero, spriteHero);
mono_1 :=PictureABC.Create(320,95, 'speak_1.png');
while (u<>1) do begin
graphABC.OnKeyDown := DelMono;
end;
mono_1.Destroy;
u:=0;
mono_2 :=PictureABC.Create(366,95, 'speak_2.png');
while (u<>1) do begin
graphABC.OnKeyDown := DelMono;
end;
mono_2.Destroy;
u:=0;
mono_3 :=PictureABC.Create(320,95, 'speak_3.png');
while (u<>1) do begin
graphABC.OnKeyDown := DelMono;
end;
clearwindow;
mono_3.Destroy;
Main_Hero.Destroy;
end;
     Procedure MoveHeroSTR(key :integer);
     begin
     if key = VK_E then u:=1;
     if key = VK_D then  if (xHero <= 840) then xHero:= xHero +speedHero;
     if key = VK_A then  if (xHero >=10)  then xHero:= xHero -speedHero;
     Main_Hero.MoveTo(xHero,yHero);
     end;

     Procedure StreetWalking();
     var 
     monoSTR : pictureABC;
     home, millioner, embankment, goAway : integer;
     begin
     home:=0;
     millioner:=0;
     embankment:=0;
     goAway:=0;
     u:=0;
     xHero:=250;
     yHero:=260;
     window.SetSize(1010,701);
          window.SetSize(1010,701);
     window.IsFixedSize := true;
     window.Fill('street.png');
     Main_Hero := PictureABC.Create(xHero, yHero, 'SkHero.png');
     if (firstStreet=0)then begin
     firstStreet:=1;
     monoSTR:=PictureABC.Create(260,90,'speak_4.png');
     while (u<>1) do begin
     graphABC.OnKeyDown := DelMono;
     end;
     monoSTR.Destroy;
     u:=0;
     monoSTR:=PictureABC.Create(260,90,'speak_5.png');
     while (u<>1) do begin
     graphABC.OnKeyDown := DelMono;
     end;
     monoSTR.Destroy;
     u:=0;
     end;
     While (goAway<>1) do begin
     graphABC.OnKeyDown := MoveHeroSTR;
     if (xHero <=90) and (u=1) then begin
     goAway:=1;
     home:=1;
     end;
     if (xHero >=400) and (xHero <=600) and (u=1) and (firstMill = 0) then begin
     goAway:=1;
     millioner:=1;
     end;
     if (xHero >=400) and (xHero <=600) and (u=1) then u:=0;
     if (xHero >= 830) and (u=1) then begin
     goAway:=1;
     embankment:=1;
     end;
     if (xHero > 90)and (xHero < 400) and (u=1)then u:=0;
     if (xHero >600) and (xHero <830) and (u=1) then u:=0;
     end;
     Main_Hero.Destroy;
     if (home =1) then  
     ToLocation:=0;
     if (millioner =1) then ToLocation:=2;{выход на миллионера}
     if (embankment=1) then ToLocation:=3;{выход на напбережную}
     clearwindow;
     end;

   Procedure MoveHero(key :integer);
   begin
   if key = VK_E then u:=1;
   if key = VK_D then  if (xHero <= 647) then xHero:= xHero +speedHero;
   if key = VK_A then  if (xHero >=233)  then xHero:= xHero -speedHero;
   Main_Hero.MoveTo(xHero,yHero);
   end;

   Procedure DvizPoKomnate();
   var
   door : integer;
   vzaim_2, Bag_ : PictureABC;
   begin
   door:=0;
   window.SetSize(1152,864);
   window.IsFixedSize := true;
   if (firstTime =0) then begin
   xHero:=301;
   yHero:=280;
   window.Fill('komnata.jpg');
   Main_Hero := PictureABC.Create(xHero, yHero, 'mainHero_.png');
   end;
   if (firstTime =1) then begin
   xHero:=300;
   yHero:=215;
   window.Fill('komnata_2.jpg');
   Main_Hero := PictureABC.Create(xHero, yHero, 'SkHero.png');
   end;
   if (ulazheno = 1) and (takeBag=0)then 
   Bag_ :=PictureABC.Create(220,480,'bag.png');
   while (door<>1) do begin
   if (ulazheno =1) and (takeBag=0) and (xHero>=200) and (xHero<=240) then
   begin
   takeBag:=1;
   Bag_.Destroy;
   Update_Money(50,1);
   end;
   if (u=1) and (xHero<=300) and (firstTime = 0) then begin
   Main_Hero.Destroy;
   yHero:=215;
   window.Fill('komnata_2.jpg');
   Main_Hero := PictureABC.Create(xHero, yHero, 'SkHero.png');
   skeit:=1;
   firstTime:=1;
   end;
   if (u=1) and (xHero > 300) and (xHero < 500) then u:=0;
   if (u=1) and (xHero >= 500) and (skeit =1) then door:=1;{выход из комнаты}
   if (u=1) and (xHero >= 500) and (skeit =0) then
   begin
   vzaim_2 := PictureABC.Create(400,0,'vzaimod_3.png');
   u:=0;
   sleep(100);
   vzaim_2.Destroy;
   end;
   graphABC.OnKeyDown := MoveHero;
   end;
   if (ulazheno=1) and (takeBag=0) then
   Bag_.Destroy;
   Main_Hero.Destroy;
   ToLocation:=1;
   clearwindow;
   end;
      
   
      Procedure GameAnswer(key : integer);
      begin
      if key = VK_Z then u:=2;
      if key = VK_X then u:=3;
      if key = VK_C then u:=4;
      if key = VK_V then u:=5;
      end; 
   
      Procedure MillGame();
      var
      millmono, miLLmoney, Not_ :PictureABC;
      begin
      window.SetSize(961,606);
      window.IsFixedSize := true;
      window.Fill('millLocation.png');
      firstMill:=1;
      u:=0;
            millmono :=PictureABC.Create(580,0, 'Mill_speak_1.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      millmono.Destroy;
      u:=0;
            millmono :=PictureABC.Create(580,0, 'Mill_speak_2.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      millmono.Destroy;
      u:=0;
            millmono :=PictureABC.Create(580,0, 'Mill_speak_3.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      millmono.Destroy;
      u:=0;
      {первый вопрос}
            millmono :=PictureABC.Create(0,239, 'quest_0.png');
      while (u<>2) and (u<>3) and (u<>4) do begin
      if (u=5)then u:=0;
      graphABC.OnKeyDown := GameAnswer;
      end;
      millmono.Destroy;
      u:=0;
            miLLmoney :=PictureABC.Create(85,130, 'money_1.png');
            millmono :=PictureABC.Create(580,0, 'Mill_speak_4.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      millmono.Destroy;
      u:=0;
      {второй вопрос}
            millmono :=PictureABC.Create(0,239, 'quest_1.png');
      while (u<>5) do begin
      if (u=2) or (u=3) or (u=4) then begin
      Not_:=PictureABC.Create(400,400,'ISupposeNot.png');
      sleep(200);
      Not_.Destroy;
      u:=0;
      end;
      graphABC.OnKeyDown := GameAnswer;
      end;
      millmono.Destroy;
      u:=0;
            miLLmoney.Destroy;
            miLLmoney :=PictureABC.Create(85,130, 'money_2.png');
            millmono :=PictureABC.Create(580,0, 'Mill_speak_5.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      millmono.Destroy;
      u:=0;
      {третий}
                  millmono :=PictureABC.Create(0,239, 'quest_2.png');
      while (u<>2) do begin
      if (u=5) or (u=3) or (u=4) then  begin
      Not_:=PictureABC.Create(400,400,'ISupposeNot.png');
      sleep(200);
      Not_.Destroy;
      u:=0;
      end;
      graphABC.OnKeyDown := GameAnswer;
      end;
      millmono.Destroy;
      u:=0;
            miLLmoney.Destroy;
            miLLmoney :=PictureABC.Create(85,130, 'money_3.png');
            millmono :=PictureABC.Create(580,0, 'Mill_speak_6.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      u:=0;
      millmono.Destroy;
            millmono :=PictureABC.Create(580,0, 'Mill_speak_7.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      u:=0;
      millmono.Destroy;
            millmono :=PictureABC.Create(580,0, 'Mill_speak_8.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      u:=0;
      millmono.Destroy;
      miLLmoney.Destroy;
            miLLmoney :=PictureABC.Create(85,130, 'money_1.png');
            millmono :=PictureABC.Create(580,0, 'Mill_speak_9.png');
      while (u<>1) do begin
      graphABC.OnKeyDown := DelMono;
      end;
      u:=0;
      millmono.Destroy;
      Update_Money(250,1);
      miLLmoney.Destroy;
      clearwindow;
      ToLocation:=1;
      end;



Procedure Moovik();
var name,Human, taxi : PictureABC;
j_, xTaxi :integer;
begin
u:=0;
clearwindow;
FloodFIll(688,315,clBlack);
sleep(500);
name := PIctureABC.Create(400,0,'name_1.png');
while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   name.Destroy;
   u:=0;
   clearwindow;
      window.Fill('lastLoc.png');
      xHero:=11;
 Main_Hero := PictureABC.Create(xHero, yHero, 'mainHero_.png');
 Human := PictureABC.Create(870, 250, 'man.png');
 xTaxi:=870;
 taxi := PictureABC.Create(xTaxi,280, 'ideal.png');
 for j_:=1 to 100 do begin
 xTaxi:=xTaxi -1;
 taxi.MoveTo(xTaxi,280);
 end;
 sleep(500);
 Human.Destroy;
 for j_:=1 to 1400 do begin
 xTaxi:=xTaxi -1;
 taxi.MoveTo(xTaxi,280);
 end;
 taxi.Destroy;
end;
      
      Procedure MoveHeroShop(key :integer);
   begin
   if key = VK_E then u:=1;
   if key = VK_D then  if (xHero <= 870) then xHero:= xHero +speedHero;
   if key = VK_A then  if (xHero >=7)  then xHero:= xHero -speedHero;
   Main_Hero.MoveTo(xHero,yHero);
   end;
   
   Procedure ShopLoc();
   var
   Human, Shop : PictureABC;
   LeaveLoc : integer;
   begin
   {firstShop}
   window.SetSize(1000,500);
   window.IsFixedSize := true;
   xHero:=130;
   yHero:=180;
   window.Fill('lastLoc.png');
   Main_Hero := PictureABC.Create(xHero, yHero, 'mainHero_.png');
   if (ulazheno =0)then
   Human := PictureABC.Create(870, 250, 'man.png');
   LeaveLoc := 0;
   u:=0;
   while (LeaveLoc <>1)do  begin
   
   if (xHero<=20)and (u=1) then
   LeaveLoc:=1;

   if (xHero>20)and (xHero <630) and (u=1) then u:=0;
   
   if (xHero>=630)and (xHero<=730)and (u=1) then begin
   
   if (firstShop = 1) and (ulazheno = 0)and (u=1) then 
   begin
   u:=0;
      Shop := PictureABC.Create(400, 100, 'uladte.png');
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0;
   end;
   
   if (firstShop = 1)and (mon <>300) and (u=1) then begin
   u:=0;
      Shop := PictureABC.Create(400, 100, 'NeedMoney.png');
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0;
   end;   
   
   if (firstShop=0) then begin
   firstShop:=1;
   u:=0;
   Shop := PictureABC.Create(400, 100, 'FirstShop.png');
   sleep(500);
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0;
   end;
   
   
   if (firstShop=1)and (mon = 300) and (ulazheno=1) then
   begin
   LeaveLoc:=1;
   ToLocation:=10;
   end;
   end;
   if (xHero>730) and (u=1)and (firstShop=0) then u:=0;
   if (xHero>730) and (u=1)and (firstShop=1) and (firstMan=0)then
   begin   
   firstMan:=1;
   ulazheno:=1;
   u:=0;
   Shop := PictureABC.Create(600, 70, 'man_speak_1.png');
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0;
   Shop := PictureABC.Create(600, 70, 'man_speak_2.png');
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0;
   Shop := PictureABC.Create(600, 70, 'man_speak_3.png');
   while (u<>1) do begin
   graphABC.OnKeyDown := DelMono;
   end;
   Shop.Destroy;
   u:=0; 
   Human.Destroy;
   Main_Hero.Destroy;
   Moovik();
   end;
   graphABC.OnKeyDown := MoveHeroShop;
   end;
   Main_Hero.Destroy;
   clearwindow;
   if(ulazheno = 0) then Human.Destroy;
   if (ToLocation <>10) then
   ToLocation:=1;
   end;


                      Procedure CreateComp();
                      begin
                      clearwindow;
                      
                      Pchela();
                      MovePchel();
                      
                      end;
begin
WindowGame();
Flower();
Stars();

Numbers();

Pchela();

MovePchel();
objectPchel.Destroy;
Komnata();
while (ToLocation<>10) do begin
if (ToLocation = 0)then
DvizPoKomnate();

if (ToLocation = 1)then 
StreetWalking();
clearwindow;
if (ToLocation = 2) then 
MillGame();
clearwindow;
if (ToLocation=3) then
ShopLoc();
if (ToLocation =10) then
CreateComp();
clearwindow;
end;

ReadLn();
end.