-----------------------------------------------------------------------------------------
--
-- scenario1.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	-- 오브젝트들 배치 --
	local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)

	local set = display.newImage("image/public/설정.png")
	set.x, set.y = display.contentWidth * 0.05, display.contentHeight * 0.09

	local guide = display.newImage("image/public/지천.png")
	guide.x, guide.y = display.contentWidth * 0.853, display.contentHeight * 0.09

	local item = display.newImage("image/public/아이템.png")
	item.x, item.y = display.contentWidth * 0.95, display.contentHeight * 0.09

	local main = display.newRect(display.contentWidth * 0.2, display.contentHeight * 0.6, 221, 435)

	local support = display.newRect(display.contentWidth * 0.8, display.contentHeight * 0.6, 221, 435)

	local speaker = display.newImage("image/dialogue/이름.png")
	speaker.x, speaker.y = display.contentWidth * 0.19, display.contentHeight * 0.62

	local lines = display.newImage("image/dialogue/대사창.png")
	lines.x, lines.y = display.contentWidth * 0.5, display.contentHeight * 0.8

	local next = display.newImage("image/dialogue/다음.png")
	next.x, next.y = display.contentWidth * 0.925, display.contentHeight * 0.88

	local highlight = display.newRect(display.contentCenterX, display.contentCenterY, 300, 300)
	highlight.alpha = 0

	-- 더미 대사, 더미 이름--

	local script = display.newText("더미텍스트", display.contentWidth*0.505, display.contentHeight*0.775, display.contentWidth * 0.88, display.contentWidth * 0.1)
	script.size = 30
	script.align = "left"
	script:setFillColor(0)

	local name = display.newText("더미네임", display.contentWidth * 0.19, display.contentHeight * 0.62)
	name.size = 30
	name:setFillColor(0)

	--fade--
	local options =
	{ 
		effect = "fade",
    	time = 150
    }

	-- json에서 정보 읽기
	local Data = jsonParse("json/1.json")

	-- json에서 읽은 정보 적용하기
	local index = 0

	--json으로 내용 바꾸기--
	local function nextScript( )
		index = index + 1

		if (index > #Data) then
			composer.gotoScene('scenario2', options)
			composer.removeScene('scenario1')
			return
		end

		if (Data[index].type == "narration") then
			name.text = Data[index].name
			script.text = Data[index].content
			main.alpha = 0
			support.alpha = 0
			speaker.alpha = 0
			highlight.alpha = 0
		elseif (Data[index].type == "dialogue1") then
			name.text = Data[index].name
			script.text = Data[index].content
			support.alpha = 0
			main.alpha = 1
			speaker.alpha = 1
			highlight.alpha = 0
			main.fill = {
				type = "image",
				filename = Data[index].main
			}
		elseif (Data[index].type == "dialogue2") then
			name.text = Data[index].name
			script.text = Data[index].content
			main.alpha = 1
			support.alpha = 1
			highlight.alpha = 0
			speaker.alpha = 1
			support.fill = {
				type = "image",
				filename = Data[index].support
			}
			main.fill = {
				type = "image",
				filename = Data[index].main
			}
		elseif (Data[index].type == "highlight") then
			name.text = Data[index].name
			script.text = Data[index].content
			support.alpha = 0
			main.alpha = 1
			speaker.alpha = 1
			highlight.alpha = 1
			main.fill = {
				type = "image",
				filename = Data[index].main
			}
			highlight.fill = {
				type = "image",
				filename = Data[index].highlight
			}
		end
	end

	--다음 대사--
	local function tap(event)
		nextScript()
	end
	next:addEventListener("tap", tap)

	--처음 대사 자동으로--
	nextScript()

	--layer 정리--

	sceneGroup:insert(background)
	sceneGroup:insert(set)
	sceneGroup:insert(guide)
	sceneGroup:insert(item)
	sceneGroup:insert(main)
	sceneGroup:insert(support)
	sceneGroup:insert(speaker)
	sceneGroup:insert(lines)
	sceneGroup:insert(name)
	sceneGroup:insert(script)
	sceneGroup:insert(next)
	sceneGroup:insert(highlight)

	--설정창--

	function set:tap( event )
 		composer.showOverlay('setting1')
 	end
 	set:addEventListener("tap", set)

 	function item:tap( event )
 		composer.showOverlay('items')
 	end
 	item:addEventListener("tap", item)

 	function guide:tap( event )
 		composer.showOverlay('info')
 	end
 	guide:addEventListener("tap", guide)

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