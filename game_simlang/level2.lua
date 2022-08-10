-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local timeAttack

function scene:create( event )
	local sceneGroup = self.view
	local levelText2

	local settingGroup = display.newGroup()

	local explosionSound2 = audio.loadSound( "sound/코드39.wav" )

	local explosionSound3 = audio.loadSound( "sound/스위치_랜턴_버튼.mp3" )

	local clickSound = audio.loadSound( "sound/카툰코드음14.wav" )
	

	-- local explosionSound = audio.loadSound( "image/simlang_image/Trust.mp3" )
	-- audio.play(explosionSound, {channel=2, loops=-1})
	--배경음악 설정
	-- audio.setMaxVolume(1, { channel=2 })
	-- audio.setVolume(0.5, {channel=2})
	-- 이미지 불러오기 ----
	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)

	local levelText = display.newText("2단계)어디에 있을까?", display.contentWidth*0.5, display.contentHeight*0.9, "font/경기천년바탕_Regular.ttf")
	levelText:setFillColor(0)
	levelText.size=30

	local cardgroup= display.newGroup()
	-- local back = display.newImageRect("image/p9_2.png",display.contentWidth, display.contentHeight)
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
---------
	local card1 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card1.x,card1.y= display.contentWidth*0.31, display.contentHeight*0.343
	cardgroup:insert(card1)

	local card11 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card11.x,card11.y= display.contentWidth*0.31, display.contentHeight*0.343
	card11.alpha=0
	cardgroup:insert(card11)
-------
	local card2 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card2.x,card2.y= display.contentWidth*0.434, display.contentHeight*0.343
	cardgroup:insert(card2)

	local card21 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card21.x,card21.y= display.contentWidth*0.434, display.contentHeight*0.343
	card21.alpha=0
	cardgroup:insert(card21)
----
	local card3 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card3.x,card3.y=  display.contentWidth*0.558, display.contentHeight*0.343
	cardgroup:insert(card3)

	local card31 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card31.x,card31.y= display.contentWidth*0.558, display.contentHeight*0.343
	card31.alpha=0
	cardgroup:insert(card31)

------
	local card4 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card4.x,card4.y=  display.contentWidth*0.682, display.contentHeight*0.343
	cardgroup:insert(card4)

	local card41 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card41.x,card41.y= display.contentWidth*0.682, display.contentHeight*0.343
	card41.alpha=0
	cardgroup:insert(card41)

------

	local card5 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card5.x,card5.y= display.contentWidth*0.31, display.contentHeight*0.617
	cardgroup:insert(card5)

	local card51 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card51.x,card51.y= display.contentWidth*0.31, display.contentHeight*0.617
	card51.alpha=0
	cardgroup:insert(card51)

-------
	local card6 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card6.x,card6.y= display.contentWidth*0.434, display.contentHeight*0.617
	cardgroup:insert(card6)

	local card61 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card61.x,card61.y= display.contentWidth*0.434, display.contentHeight*0.617
	card61.alpha=0
	cardgroup:insert(card61)
------
	local card7 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card7.x,card7.y=  display.contentWidth*0.558, display.contentHeight*0.617
	cardgroup:insert(card7)

	local card71 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card71.x,card71.y= display.contentWidth*0.558, display.contentHeight*0.617
	card71.alpha=0
	cardgroup:insert(card71)
------
	local card8 = display.newImageRect("image/simlang_image/숨은그림.png",150,182)
	card8.x,card8.y=  display.contentWidth*0.682, display.contentHeight*0.617
	cardgroup:insert(card8)

	local card81 = display.newImageRect("image/simlang_image/그림2.png",150,182)
	card81.x,card81.y= display.contentWidth*0.682, display.contentHeight*0.617
	card81.alpha=0
	cardgroup:insert(card81)

-------
	local level = display.newImageRect("image/simlang_image/단계.png",670,120)
	level.x,level.y= display.contentWidth*0.5, display.contentHeight*0.89

	local touchAn = display.newImage("image/simlang_image/숨은정답1.png")
	touchAn.x,touchAn.y=600,300
	touchAn:scale(0.3,0.3)

	------이미지 불러오기 끝 ----------------


	----설정창 이미지 불러오기 및 그룹넣고 레이어 정리----------
	local background2 = display.newImage("image/setting/설정창바탕.png")
	background2.strokeWidth = 5
	background2:setStrokeColor(0.5, 0.5, 0.5)
	background2.x, background2.y = display.contentCenterX, display.contentCenterY

	local replay = display.newImage("image/setting/2클릭.png")
	replay.x, replay.y = display.contentWidth * 0.5, display.contentHeight * 0.3

	local detail = display.newImage("image/setting/3클릭.png")
	detail.x, detail.y = display.contentWidth * 0.5, display.contentHeight * 0.5

	local out = display.newImage("image/setting/4클릭.png")
	out.x, out.y = display.contentWidth * 0.5, display.contentHeight * 0.7

	local sound1 = display.newRect(display.contentWidth * 0.4, display.contentHeight * 0.5, 50, 50)
	sound1.alpha = 0
	sound1.fill = {
		type = "image",
		filename = "image/setting/스피커1.png"
	}

	local sound2 = display.newRect(display.contentWidth * 0.5, display.contentHeight * 0.5, 50, 50)
	sound2.alpha = 0
	sound2.fill = {
		type = "image",
		filename = "image/setting/스피커2.png"
	}

	local sound3 = display.newRect(display.contentWidth * 0.6, display.contentHeight * 0.5, 50, 50)
	sound3.alpha = 0
	sound3.fill = {
		type = "image",
		filename = "image/setting/스피커3.png"
	}

    local button1 = display.newImage("image/public/X.png")
	button1.x,button1.y=display.contentWidth*0.645,display.contentHeight*0.17



	settingGroup:insert(background2)
	settingGroup:insert(replay)
	settingGroup:insert(detail)
	settingGroup:insert(sound1)
	settingGroup:insert(sound2)
	settingGroup:insert(sound3)
	settingGroup:insert(out)
	settingGroup:insert(button1)

	settingGroup.alpha=0
	-------------------------------event 정리--------------------------
	
	function detail:tap( event )
		audio.play(explosionSound3, {duration = 1000})
		detail.alpha = 0
		sound1.alpha = 1
		sound2.alpha = 1
		sound3.alpha = 1
	end
	detail:addEventListener("tap", detail)


	function sound1:tap ( event )
		audio.setVolume(0, {channel=2})
	end
	sound1:addEventListener("tap", sound1)

	function sound2:tap ( event )
		audio.setVolume(0.5, {channel=2})
	end
	sound2:addEventListener("tap", sound2)

	function sound3:tap ( event )
		audio.setVolume(1, {channel=2})
	end
	sound3:addEventListener("tap", sound3)

	function replay:tap( event )
		audio.play(explosionSound3, {duration = 1000})
        composer.removeScene('game_simlang.level2')
		composer.gotoScene('game_simlang.level2')
 	end
 	replay:addEventListener("tap", replay)

     function button1:tap( event )
		audio.play(explosionSound3, {duration = 1000})
        timer.resume(timeAttack)
		
		card1:addEventListener("tap", card1)
		card2:addEventListener("tap", card2)
		card3:addEventListener("tap", card3)
		card4:addEventListener("tap", card4)
		card5:addEventListener("tap", card5)
		card8:addEventListener("tap", card8)
		card6:addEventListener("tap", card6)
		card7:addEventListener("tap", card7)
		

		settingGroup.alpha=0
	end
	button1:addEventListener("tap", button1)

	function out:tap( event )
		audio.phase(explosionSound)
		audio.play(explosionSound3, {duration = 1000})		
        composer.removeScene('game_simlang.level3')
		composer.gotoScene('start')
 	end
 	out:addEventListener("tap", out)

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
	--레이어 정리 끝 -------------

	--timer event-------------------------
	local function counter( event )
		time.text = time.text - 1
   
		if( time.text == '5' ) then
			time:setFillColor(1, 0, 0)
		end
   
		if( time.text == '-1') then
			time.alpha = 0
			--audio.pause(explosionSound)
			composer.showOverlay('game_simlang.fail2')
			levelText.alpha=0
			levelText2 = display.newText("다시 시도해보자 ㅠㅠ", display.contentWidth*0.5, display.contentHeight*0.9, "font/경기천년바탕_Regular.ttf")
			levelText2:setFillColor(0)
			levelText2.size=30

			sceneGroup:insert(levelText2)
			timer.cancel(timeAttack)
		end
	end
   
	timeAttack = timer.performWithDelay(1000, counter, 11)   

	--tap 확대 event------------------------------------------------
	function card1:tap( event )
		card1.alpha=0
		card11.alpha=1
		audio.play(clickSound)
	end
	card1:addEventListener("tap", card1)

-----------
	function card2:tap( event )
		card2.alpha=0
		card21.alpha=1
		touchAn.x,touchAn.y=550,260
		touchAn:scale(1.3,1.3)
		audio.play(clickSound)
	end
	card2:addEventListener("tap", card2)
--------------------
	function card3:tap( event )
		card3.alpha=0
		card31.alpha=1
		audio.play(clickSound)
	end
	card3:addEventListener("tap", card3)

----------------
	function card4:tap( event )
		card4.alpha=0
		card41.alpha=1
		audio.play(clickSound)
	end
	card4:addEventListener("tap", card4)
--------------
	function card5:tap( event )
		card5.alpha=0
		card51.alpha=1
		audio.play(clickSound)
	end
	card5:addEventListener("tap", card5)
--------------
	function card6:tap( event )
		card6.alpha=0
		card61.alpha=1
		audio.play(clickSound)
	end
	card6:addEventListener("tap", card6)
--------------
	function card7:tap( event )
		card7.alpha=0
		card71.alpha=1
		audio.play(clickSound)
	end
	card7:addEventListener("tap", card7)
--------------
	function card8:tap( event )
		card8.alpha=0
		card81.alpha=1
		audio.play(clickSound)
	end
	card8:addEventListener("tap", card8)
--------------
	function touchAn:tap( event )
		time.alpha = 0
		audio.play(explosionSound2)
		--audio.pause(explosionSound)
		timer.pause(timeAttack)

		levelText.alpha=0
		levelText2 = display.newText("찾기 성공! 2단계 통과~~", display.contentWidth*0.5, display.contentHeight*0.9, "font/경기천년바탕_Regular.ttf")
		levelText2:setFillColor(0)
		levelText2.size=30

		sceneGroup:insert(levelText2)
		local board = display.newImageRect("image/items/바탕.png",500,300)
		board.x,board.y= display.contentWidth*0.5, display.contentHeight*0.5
	
		local title = display.newText("게임 클리어/꽃 획득 성공!", display.contentWidth/2, display.contentHeight*0.33, "font/경기천년바탕_Regular.ttf")
		 title.size = 30
		title:setFillColor(0)
	
		local object1 = display.newImageRect("image/items/금사철.png",450,180)
	object1.x,object1.y= display.contentWidth*0.5, display.contentHeight*0.5

	local button2 = display.newImageRect("image/simlang_image/엑스.png",50,50)
	button2.x,button2.y=864,235

 	sceneGroup:insert(board)
    sceneGroup:insert(title)
    sceneGroup:insert(object1)
	sceneGroup:insert(button2)
	
		function button2:tap( event )
			composer.removeScene('game_simlang.level2')
			composer.gotoScene('game_simlang.level3')
			timer.cancel(timeAttack)
		end
		button2:addEventListener("tap", button2)
	end
	touchAn:addEventListener("tap", touchAn)
	
	function setting1:tap( event )
		audio.play(explosionSound3, {duration = 1000})
		timer.pause(timeAttack)
		card1:removeEventListener("tap", card1)
		card2:removeEventListener("tap", card2)
		card3:removeEventListener("tap", card3)
		card4:removeEventListener("tap", card4)
		card5:removeEventListener("tap", card5)
		card6:removeEventListener("tap", card6)
		card7:removeEventListener("tap", card7)
		card8:removeEventListener("tap", card8)
		

		settingGroup.alpha=1
	end
	setting1:addEventListener("tap", setting1)

	function face:tap( event )
		audio.play(explosionSound3, {duration = 1000})
		timer.pause(timeAttack)
		composer.setVariable( "timeAttack2", timeAttack )

		composer.showOverlay('game_simlang.jichunface2')
	end
	face:addEventListener("tap", face)

	function item:tap( event )
		audio.play(explosionSound3, {duration = 1000})
		timer.pause(timeAttack)
		composer.setVariable( "timeAttack3", timeAttack )
		composer.showOverlay('game_simlang.item2')
	end
	item:addEventListener("tap", item)

	sceneGroup:insert(settingGroup)
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
		composer.removeScene('game_simlang.level2')
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
