-- Place in this Lua script all the levels of your game
-- Title is mandatory and must be the first level.

-- Intro image is a splash screen which appears before actual loading screen.
-- If you don't want it to appear, just remove this line.

Flow.SetIntroImagePath("Screens\\intro.jpg")

-- Intro video plays right after or instead of intro image, if specified.
-- If you don't want it to appear, just remove this line.

Flow.SetIntroVideoPath("Fmv\\intro.mp4")

-- Set overall amount of secrets in game.
-- If set to 0, secrets won't be displayed in statistics.

Flow.SetTotalSecretCount(1)

-- Enable/Disable Point Filter (square, unsmoothed pixels).

Flow.EnablePointFilter(false)

-- Enable/Disable saving and loading of savegames.

Flow.EnableLoadSave(true)

-- Disable/enable flycheat globally

Flow.EnableFlyCheat(true)

-- Disable/enable Lara drawing in title level

Flow.EnableLaraInTitle(false)

-- Disable/enable level selection in title level

Flow.EnableLevelSelect(true)

-- Disable/enable mass pickup (collect all pickups at once)

Flow.EnableMassPickup(true)

--------------------------------------------------

-- Title level

title = Level.new()

title.ambientTrack = "108"
title.levelFile = "Data\\title.ten"
title.scriptFile = "Scripts\\Levels\\title.lua"
title.loadScreenFile = "Screens\\main.png"

Flow.AddLevel(title)

--------------------------------------------------
-- Level1 level

Level1 = TEN.Flow.Level()

Level1.nameKey = "Tomb"
Level1.scriptFile = "Scripts\\Levels\\Level1.lua"
Level1.ambientTrack = "107"
Level1.horizon1.enabled = true
Level1.levelFile = "Data\\Level1.ten"
Level1.loadScreenFile = "Screens\\loading.png"
Level1.layer1 = Flow.SkyLayer.new(Color.new(131,176,243),4)
Level1.fog = Flow.Fog.new(Color.new(145, 127, 79), 4, 30)
Level1.objects = {
InventoryItem.new ("eye", ObjID.PUZZLE_ITEM1, 100, 0.5, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE),
InventoryItem.new ("jar_1", ObjID.PUZZLE_ITEM2, 0, 0.9, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE),
InventoryItem.new ("jar_2", ObjID.PUZZLE_ITEM2, 0, 0.9, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE),
InventoryItem.new ("half_eye_1", ObjID.PUZZLE_ITEM1_COMBO1, 100, 0.5, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE | ItemAction.COMBINE),
InventoryItem.new ("half_eye_2", ObjID.PUZZLE_ITEM1_COMBO2, 100, 0.5, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE | ItemAction.COMBINE),
InventoryItem.new ("trapdoor_key", ObjID.KEY_ITEM1, 80, 0.8, Rotation.new(0, 0, 0),RotationAxis.Y, -1, ItemAction.USE)
}

TEN.Flow.AddLevel(Level1)

--------------------------------------------------
