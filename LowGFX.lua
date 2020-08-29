
local addon,ns = ...;
local cvars = {
	componentTextureLevel="1.000000",
	graphicsEnvironmentDetail="1",
	graphicsGroundClutter="1",
	graphicsLiquidDetail="1",
	graphicsOutlineMode="1",
	graphicsParticleDensity="1",
	graphicsProjectedTextures="1",
	graphicsQuality="1",
	graphicsShadowQuality="1",
	graphicsSunshafts="1",
	graphicsTextureFiltering="1",
	graphicsTextureResolution="1",
	graphicsDepthEffects="1",
	groundEffectDist="40.000000",
	gxMaximize="0",
	lodObjectCullSize="35.000000",
	lodObjectFadeScale="50.000000",
	OutlineEngineMode="0.000000",
	particleDensity="10.000000",
	particleMTDensity="20.000000",
	projectedTextures="0.000000",
	rippleDetail="0.000000",
	shadowTextureSize="512.000000",
	sunShafts="0.000000",
	terrainMipLevel="1.000000",
	textureFilteringMode="0.000000",
	uiScale="0.5",
	useUiScale="0",
	volumeFogLevel="0.000000",
	waterDetail="0.000000",
	weatherDensity="0.000000",
	worldBaseMip="2.000000",
};

local function SetLowGFX()
	-- check if wow in fullscreen mode
	if GetCVar("gxMaximize")=="1" then
		for k,v in pairs(cvars)do
			SetCVar(k,v);
		end
		SetScreenResolution(1024,600);
		RestartGx();
		print(addon,"low graphic executed")
	end
end

function SlashCmdList.LOWGFX(cmdStr)
	--local cmd,args = strsplit(" ",cmdStr,2);
	--cmd = cmd:lower();
	--if cmd == "" then
	--end
	SetLowGFX()
end

SLASH_LOWGFX1 = "/lgfx";
