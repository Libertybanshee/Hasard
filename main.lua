math.randomseed(os.time())                                                      -- Paramètre random via le temp IRL
WinDefense = 0
WinAttaque = 0
Draw = 0
Resultat = 0
Try = 0
Attaque = math.random(50)
Defense = math.random(50)
  
  
function love.load()
  numero11 = love.graphics.newImage("image/11.png")
end

function love.update(dt)
  
  Resultat = Attaque + Defense 
  
end

function love.draw()
  
    love.graphics.draw(numero11,100,100)
  
    love.graphics.print("Attaque :"..Attaque,0,0)
    love.graphics.print("Défense :"..Defense,0,15)
    love.graphics.print("Nb Victoire :"..WinAttaque,0,45)
    love.graphics.print("Nb d'Exeaquo :"..Draw,0,60)
    love.graphics.print("Nb Défaite :"..WinDefense,0,75)
    love.graphics.print("Nb Duel :"..Try,0,90)
  
  if Resultat > 55 then
    love.graphics.print("Attaque Win :"..Resultat,0,30)
    
  elseif Resultat < 45 then
    love.graphics.print("Defense Win :"..Resultat,0,30)
    
  elseif Resultat >= 45 and Resultat <= 55 then                                                   
    love.graphics.print("Exeaquo :"..Resultat,0,30)
    
  end

end

function love.keypressed(key)
  print(key)
  if key == "space" then
    Try = Try + 1
    Attaque = math.random(50)
    Defense = math.random(50)
  end
    
  if Resultat > 55 then
    WinAttaque = WinAttaque + 1
    
  elseif Resultat < 45 then
    WinDefense = WinDefense + 1
    
  elseif Resultat >= 45 and Resultat <= 55 then
    Draw = Draw + 1
  end

end