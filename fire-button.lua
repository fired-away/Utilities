local function FireButton1(Button)
	for i, v in pairs(getconnections(Button.MouseButton1Click)) do
		v:Fire()
	end

	for i, v in pairs(getconnections(Button.MouseButton1Down)) do
		v:Fire()
	end

	for i, v in pairs(getconnections(Button.Activated)) do
		v:Fire()
	end
end

local function FireButton2(Button)
	for i, v in pairs(getconnections(Button.MouseButton2Click)) do
		v:Fire()
	end

	for i, v in pairs(getconnections(Button.MouseButton2Down)) do
		v:Fire()
	end

	for i, v in pairs(getconnections(Button.Activated)) do
		v:Fire()
	end
end
