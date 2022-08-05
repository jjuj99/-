-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local timeAttack

function scene:create( event )
	local sceneGroup = self.view

	local explosionSound = audio.loadSound( "image/simlang_image/Trust.mp3" )
	audio.play(explosionSound, {channel=2, loops=-1})
	--배경음악 설정
	audio.setMaxVolume(1, { channel=2 })
	audio.setVolume(0.5, {channel=2})

	local levelText2
	local startGroup = display.newGroup()

	--시작 화면---------------------
	local time= display.newText(10, display.contentWidth/2, display.contentHeight*0.12)
	time.size = 50

	local back = display.newRoundedRect(display.contentWidth/2, display.contentHeight/2, 700,500,10)
	back:setFillColor(0.5, 0.5, 0.2)

	local textStart= display.newRoundedRect(display.contentWidth/2, display.contentHeight*0.4, 500,300,10)
	textStart:setFillColor(0.5, 0.4, 0.4)

	local textStart2 = display.newText("게임 플레이 방법", display.contentWidth/2, display.contentHeight*0.24)
	textStart2.size = 30

	local button = display.newRoundedRect(display.contentWidth/2, display.contentHeight*0.77, 500,100,10)
	button:setFillColor(0.5, 0.4, 0.4)


 	local text = display.newText("시작하기", display.contentWidth/2, display.contentHeight*0.77)
 	text.size = 30

	 startGroup:insert(back)
	 startGroup:insert(time)
	 startGroup:insert(textStart)
	 startGroup:insert(textStart2)
	 startGroup:insert(button)
	 startGroup:insert(text)
	-- 이미지 불러오기 ----
	local levelText = display.newText("1단계)어디에 있을까?", display.contentWidth*0.5, display.contentHeight*0.9)
	levelText:setFillColor(0)
	levelText.size=30

	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)

	local cardgroup= display.newGroup()
	-- local back = display.newImageRect("image/p9_1.png",display.contentWidth, display.contentHeight)
	-- back.x, back.y = display.contentWidth*0.5, display.contentHeight*0.5

	

	local setting1 = display.newImage("image/public/설정.png")
	setting1.x, setting1.y = display.contentWidth * 0.05, display.contentHeight * 0.09

	local face = display.newImage("image/public/지천.png")
	face.x, face.y = display.contentWidth * 0.853, display.contentHeight * 0.09

	local item = display.newImage("image/public/아이템.png")
	item.x, item.y = display.contentWidth * 0.95, display.contentHeight * 0.09

	local c1 = display.newImageRect("image/simlang_image/유영.png",170,248)
	c1.x,c1.y = display.contentWidth*0.151, display.contentHeight*0.773
	
	local c2 = display.newImageRect("image/simlang_image/심랑.png",170,248)
	c2.x,c2.y = display.contentWidth*0.8486, display.contentHeight*0.773

	local board = display.newImageRect("image/simlang_image/보드.png",680,400)
	board.x,board.y= display.contentWidth*0.5, display.contentHeight*0.48

	local time= display.newText(10, display.contentWidth/2, display.contentHeight*0.12)
	time.size = 50

	local timeBoard = display.newRoundedRect(display.contentWidth/2, display.contentHeight*0.1, 100,100, 5)
	timeBoard:setFillColor(0.6, 0.5, 0.5)

	local timerText =  display.newText("timer", display.contentWidth*0.5, display.contentHeight*0.05)
	timerText.size=20

--------
	local card1 = display.newImageRect("image/simlang_image/그림.png",300,180)
	card1.x,card1.y= display.contentWidth*0.37, display.contentHeight*0.34
	cardgroup:insert(card1)

	local card11 = display.newImageRect("image/simlang_image/그림2.png",300,180)
	card11.x,card11.y= display.contentWidth*0.37, display.contentHeight*0.34
	card11.alpha=0
	cardgroup:insert(card11)
--------
	local card2 = display.newImageRect("image/simlang_image/그림.png",300,180)
	card2.x,card2.y= display.contentWidth*0.63, display.contentHeight*0.34
	cardgroup:insert(card2)

	local card21 = display.newImageRect("image/simlang_image/그림2.png",300,180)
	card21.x,card21.y= display.contentWidth*0.63, display.contentHeight*0.34
	card21.alpha=0
	cardgroup:insert(card21)
-------
	local card3 = display.newImageRect("image/simlang_image/그림.png",300,180)
	card3.x,card3.y= display.contentWidth*0.37, display.contentHeight*0.62
	cardgroup:insert(card3)

	local card31 = display.newImageRect("image/simlang_image/그림2.png",300,180)
	card31.x,card31.y= display.contentWidth*0.37, display.contentHeight*0.62
	card31.alpha=0
	cardgroup:insert(card31)
	
-------
	local card4 = display.newImageRect("image/simlang_image/그림.png",300,180)
	card4.x,card4.y= display.contentWidth*0.63, display.contentHeight*0.62
	cardgroup:insert(card4)

	local card41 = display.newImageRect("image/simlang_image/그림2.png",300,180)
	card41.x,card41.y= display.contentWidth*0.63, display.contentHeight*0.62
	card41.alpha=0
	cardgroup:insert(card41)

------
	local level = display.newImageRect("image/simlang_image/단계.png",670,120)
	level.x,level.y= display.contentWidth*0.5, display.contentHeight*0.89

	local touchAn = display.newImage("image/simlang_image/숨은정답1.png")
	touchAn.x,touchAn.y=400,500
	touchAn:scale(0.3,0.3)

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
	sceneGroup:insert(level)
	sceneGroup:insert(touchAn)
	sceneGroup:insert(levelText)
	sceneGroup:insert(timeBoard)
	sceneGroup:insert(timerText)
	sceneGroup:insert(time)
	touchAn:toFront()
	--레이어 정리 끝 -------------

	function button:tap( event )
		startGroup.alpha=0

			--timer event-------------------------
		local function counter( event )
			time.text = time.text - 1
	
			if( time.text == '5' ) then
				time:setFillColor(1, 0, 0)
			end
	
			if( time.text == '-1') then
				time.alpha = 0
				audio.pause(explosionSound)
				composer.showOverlay('game_simlang.fail')
				levelText.alpha=0
				levelText2 = display.newText("다시 시도해보자 ㅠㅠ", display.contentWidth*0.5, display.contentHeight*0.9)
				levelText2:setFillColor(0)
				levelText2.size=30

				sceneGroup:insert(levelText2)
				
			end
		end
	
		timeAttack = timer.performWithDelay(1000, counter, 11)   
	end
	button:addEventListener("tap", button)

	
	sceneGroup:insert(startGroup)


	--tap 확대 event------------------------------------------------
	function card1:tap( event )
		card1.alpha=0
		card11.alpha=1
	end
	card1:addEventListener("tap", card1)

---------------------
	function card2:tap( event )
		card2.alpha=0
		card21.alpha=1
	end
	card2:addEventListener("tap", card2)
--------------------
	function card3:tap( event )
		card3.alpha=0
		card31.alpha=1
		touchAn.x,touchAn.y=450,450
		touchAn:scale(1.3,1.3)
	end
	card3:addEventListener("tap", card3)
----------------
	function card4:tap( event )
		card4.alpha=0
		card41.alpha=1
	end
	card4:addEventListener("tap", card4)
--------------
	function touchAn:tap( event )
		time.alpha = 0
		--audio.pause(explosionSound)
		timer.pause(timeAttack)
		levelText.alpha=0
		levelText2 = display.newText("찾기 성공! 1단계 통과~~", display.contentWidth*0.5, display.contentHeight*0.9)
		levelText2:setFillColor(0)
		levelText2.size=30

		sceneGroup:insert(levelText2)
	local board = display.newImageRect("image/simlang_image/보드.png",500,300)
	board.x,board.y= display.contentWidth*0.5, display.contentHeight*0.5

    local title = display.newText("게임 클리어/꽃 획득 성공!", display.contentWidth/2, display.contentHeight*0.33)
 	title.size = 30
    title:setFillColor(0)

    local object1 = display.newImageRect("image/public/꽃1.png",150,150)
	object1.x,object1.y= display.contentWidth*0.38, display.contentHeight*0.5

    local object2 = display.newImageRect("image/public/설명1.png",300,150)
	object2.x,object2.y= display.contentWidth*0.56, display.contentHeight*0.5

	local button1 = display.newImageRect("image/simlang_image/엑스.png",50,50)
	button1.x,button1.y=864,235

 	sceneGroup:insert(board)
    sceneGroup:insert(title)
    sceneGroup:insert(object1)
    sceneGroup:insert(object2)
	sceneGroup:insert(button1)

	

	
	--시작 화면---------------------


	----------------------------------------------------------------------
	function button1:tap( event )
		composer.removeScene('game_simlang.level1')
		composer.gotoScene('game_simlang.level2')
		timer.cancel(timeAttack)
	end
	button1:addEventListener("tap", button1)
		--composer.showOverlay('game_simlang.popup')
	end
	touchAn:addEventListener("tap", touchAn)

	function setting1:tap( event )
		timer.pause(timeAttack)
		composer.setVariable( "timeAttack", timeAttack )

		composer.showOverlay('game_simlang.setting1')
	end
	setting1:addEventListener("tap", setting1)

	function face:tap( event )
		timer.pause(timeAttack)
		composer.setVariable( "timeAttack2", timeAttack )

		composer.showOverlay('game_simlang.jichunface')
	end
	face:addEventListener("tap", face)

	function item:tap( event )
		timer.pause(timeAttack)
		composer.setVariable( "timeAttack3", timeAttack )
		composer.showOverlay('game_simlang.item')
	end
	item:addEventListener("tap", item)
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
		composer.removeScene('game_simlang.level1')
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene