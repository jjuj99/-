-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	-- 이미지 불러오기 ----
	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)

	local cardgroup= display.newGroup()
	-- local back = display.newImageRect("image/p9_2.png",display.contentWidth, display.contentHeight)
	-- back.x, back.y = display.contentWidth*0.5, display.contentHeight*0.5

	local setting1 = display.newImage("image/public/설정.png")
	setting1.x, setting1.y = display.contentWidth * 0.05, display.contentHeight * 0.09

	local face = display.newImage("image/public/지천.png")
	face.x, face.y = display.contentWidth * 0.853, display.contentHeight * 0.09

	local item = display.newImage("image/public/아이템.png")
	item.x, item.y = display.contentWidth * 0.95, display.contentHeight * 0.09
	
	local c1 = display.newImageRect("image/유영.png",170,248)
	c1.x,c1.y = display.contentWidth*0.151, display.contentHeight*0.773
	
	local c2 = display.newImageRect("image/심랑.png",170,248)
	c2.x,c2.y = display.contentWidth*0.8486, display.contentHeight*0.773

	local board = display.newImageRect("image/보드.png",680,400)
	board.x,board.y= display.contentWidth*0.5, display.contentHeight*0.48
---------
	local card1 = display.newImageRect("image/숨은그림.png",150,182)
	card1.x,card1.y= display.contentWidth*0.31, display.contentHeight*0.343
	cardgroup[0]=card1

	local card11 = display.newImageRect("image/그림2.png",150,182)
	card11.x,card11.y= display.contentWidth*0.31, display.contentHeight*0.343
	card11.alpha=0
	cardgroup[1]=card11

	local card12 = display.newImageRect("image/그림3.png",150,182)
	card12.x,card12.y= display.contentWidth*0.31, display.contentHeight*0.343
	card12.alpha=0
	cardgroup[2]=card12
-------
	local card2 = display.newImageRect("image/숨은그림.png",150,182)
	card2.x,card2.y= display.contentWidth*0.434, display.contentHeight*0.343
	cardgroup[3]=card2

	local card21 = display.newImageRect("image/그림2.png",150,182)
	card21.x,card21.y= display.contentWidth*0.434, display.contentHeight*0.343
	card21.alpha=0
	cardgroup[4]=card21

	local card22 = display.newImageRect("image/그림3.png",150,182)
	card22.x,card22.y= display.contentWidth*0.434, display.contentHeight*0.343
	card22.alpha=0
	cardgroup[5]=card22
----
	local card3 = display.newImageRect("image/숨은그림.png",150,182)
	card3.x,card3.y=  display.contentWidth*0.558, display.contentHeight*0.343
	cardgroup[6]=card3

	local card31 = display.newImageRect("image/그림2.png",150,182)
	card31.x,card31.y= display.contentWidth*0.558, display.contentHeight*0.343
	card31.alpha=0
	cardgroup[7]=card31

	local card32 = display.newImageRect("image/그림3.png",150,182)
	card32.x,card32.y= display.contentWidth*0.558, display.contentHeight*0.343
	card32.alpha=0
	cardgroup[8]=card32
------
	local card4 = display.newImageRect("image/숨은그림.png",150,182)
	card4.x,card4.y=  display.contentWidth*0.682, display.contentHeight*0.343
	cardgroup[9]=card4

	local card41 = display.newImageRect("image/그림2.png",150,182)
	card41.x,card41.y= display.contentWidth*0.682, display.contentHeight*0.343
	card41.alpha=0
	cardgroup[10]=card41

	local card42 = display.newImageRect("image/그림3.png",150,182)
	card42.x,card42.y= display.contentWidth*0.682, display.contentHeight*0.343
	card42.alpha=0
	cardgroup[11]=card42
------

	local card5 = display.newImageRect("image/숨은그림.png",150,182)
	card5.x,card5.y= display.contentWidth*0.31, display.contentHeight*0.617
	cardgroup[12]=card5

	local card51 = display.newImageRect("image/그림2.png",150,182)
	card51.x,card51.y= display.contentWidth*0.31, display.contentHeight*0.617
	card51.alpha=0
	cardgroup[13]=card51

	local card52 = display.newImageRect("image/그림3.png",150,182)
	card52.x,card52.y= display.contentWidth*0.31, display.contentHeight*0.617
	card52.alpha=0
	cardgroup[14]=card52
-------
	local card6 = display.newImageRect("image/숨은그림.png",150,182)
	card6.x,card6.y= display.contentWidth*0.434, display.contentHeight*0.617

	local card61 = display.newImageRect("image/그림2.png",150,182)
	card61.x,card61.y= display.contentWidth*0.434, display.contentHeight*0.617
	card61.alpha=0

	local card62 = display.newImageRect("image/그림3.png",150,182)
	card62.x,card62.y= display.contentWidth*0.434, display.contentHeight*0.617
	card62.alpha=0
------
	local card7 = display.newImageRect("image/숨은그림.png",150,182)
	card7.x,card7.y=  display.contentWidth*0.558, display.contentHeight*0.617
	cardgroup[15]=card7

	local card71 = display.newImageRect("image/그림2.png",150,182)
	card71.x,card71.y= display.contentWidth*0.558, display.contentHeight*0.617
	card71.alpha=0
	cardgroup[16]=card71

	local card72 = display.newImageRect("image/그림3.png",150,182)
	card72.x,card72.y= display.contentWidth*0.558, display.contentHeight*0.617
	card72.alpha=0
	cardgroup[17]=card72
------
	local card8 = display.newImageRect("image/숨은그림.png",150,182)
	card8.x,card8.y=  display.contentWidth*0.682, display.contentHeight*0.617
	cardgroup[18]=card8

	local card81 = display.newImageRect("image/그림2.png",150,182)
	card81.x,card81.y= display.contentWidth*0.682, display.contentHeight*0.617
	card81.alpha=0
	cardgroup[19]=card81

	local card82 = display.newImageRect("image/그림3.png",150,182)
	card82.x,card82.y= display.contentWidth*0.682, display.contentHeight*0.617
	card82.alpha=0
	cardgroup[20]=card82
-------
	local level = display.newImageRect("image/단계.png",670,120)
	level.x,level.y= display.contentWidth*0.5, display.contentHeight*0.89

	------이미지 불러오기 끝 ----------------


	-----레이어 정리-----------
	sceneGroup:insert(background)
	--sceneGroup:insert(back)
	sceneGroup:insert(face)
	sceneGroup:insert(c1)
	sceneGroup:insert(c2)
	sceneGroup:insert(item)
	sceneGroup:insert(setting1)
	sceneGroup:insert(board)
	sceneGroup:insert(cardgroup)
	sceneGroup:insert(card6)
	sceneGroup:insert(card61)
	sceneGroup:insert(card62)
	sceneGroup:insert(level)
	--레이어 정리 끝 -------------

	--tap 확대 event------------------------------------------------
	function card1:tap( event )
		card1.alpha=0
		card11.alpha=1
	end
	card1:addEventListener("tap", card1)
	function card11:tap( event )
		card11.alpha=0
		card12.alpha=1
	end
	card11:addEventListener("tap", card11)
-----------
	function card2:tap( event )
		card2.alpha=0
		card21.alpha=1
	end
	card2:addEventListener("tap", card2)
	function card21:tap( event )
		card21.alpha=0
		card22.alpha=1
	end
	card21:addEventListener("tap", card21)
--------------------
	function card3:tap( event )
		card3.alpha=0
		card31.alpha=1
	end
	card3:addEventListener("tap", card3)
	function card31:tap( event )
		card31.alpha=0
		card32.alpha=1
	end
	card31:addEventListener("tap", card31)
----------------
	function card4:tap( event )
		card4.alpha=0
		card41.alpha=1
	end
	card4:addEventListener("tap", card4)
	function card41:tap( event )
		card41.alpha=0
		card42.alpha=1
	end
	card41:addEventListener("tap", card41)
--------------
	function card5:tap( event )
		card5.alpha=0
		card51.alpha=1
	end
	card5:addEventListener("tap", card5)
	function card51:tap( event )
		card51.alpha=0
		card52.alpha=1
	end
	card51:addEventListener("tap", card51)
--------------
	function card6:tap( event )
		card6.alpha=0
		card61.alpha=1
	end
	card6:addEventListener("tap", card6)
	function card61:tap( event )
		card61.alpha=0
		card62.alpha=1
	end
	card61:addEventListener("tap", card61)
--------------
	function card7:tap( event )
		card7.alpha=0
		card71.alpha=1
	end
	card7:addEventListener("tap", card7)
	function card71:tap( event )
		card71.alpha=0
		card72.alpha=1
	end
	card71:addEventListener("tap", card71)
--------------
	function card8:tap( event )
		card8.alpha=0
		card81.alpha=1
	end
	card8:addEventListener("tap", card8)
	function card81:tap( event )
		card81.alpha=0
		card82.alpha=1
	end
	card81:addEventListener("tap", card81)
--------------
	
	
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
