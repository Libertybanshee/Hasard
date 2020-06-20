
love.graphics.print("GG",0,0)

math.randomseed(os.time())
WinDefense = 0
WinAttaque = 0
Attaque = math.random(50)
Defense = math.random(50)
  
Resultat = Attaque + Defense 
  
  if Resultat < 50 then
    love.graphics.print("Defense Win "..Resultat, 0, 10)
    WinDefense = WinDefense + 1
    love.graphics.print("Historique Defense Win = "..WinDefense, 0, 20)

  elseif Resultat > 50 then
    love.graphics.print("Attaque Win "..Resultat,0 , 30)
    WinAttaque = WinAttaque + 1
    love.graphics.print("Historique Attaque Win = "..WinAttaque, 0, 40)
  end