---@meta

---@type boolean
CLIENT = nil
---@type boolean
SERVER = nil
---@enum BLEND
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of blend functions
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L900).
BLEND = {
	ZERO = 1,
	ONE = 2,
	DST_COLOR = 3,
	ONE_MINUS_DST_COLOR = 4,
	SRC_ALPHA = 5,
	ONE_MINUS_SRC_ALPHA = 6,
	DST_ALPHA = 7,
	ONE_MINUS_DST_ALPHA = 8,
	SRC_ALPHA_SATURATE = 9,
	SRC_COLOR = 10,
	ONE_MINUS_SRC_COLOR = 11,
}

---@enum BLENDFUNC
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of blend modes
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L928).
BLENDFUNC = {
	ADD = 1,
	SUBTRACT = 2,
	REVERSE_SUBTRACT = 3,
	MIN = 4,
	MAX = 5,
}

---@enum BOX
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used by render.SetModelLighting
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L868).
BOX = {
	FRONT = 1,
	BACK = 2,
	RIGHT = 3,
	LEFT = 4,
	TOP = 5,
	BOTTOM = 6,
}

---@enum COLLISION_GROUP
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of collision groups for use with entity:setCollisionGroup
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L582).
COLLISION_GROUP = {
	NONE = 1,
	DEBRIS = 2,
	DEBRIS_TRIGGER = 3,
	INTERACTIVE_DEBRIS = 4,
	INTERACTIVE = 5,
	PLAYER = 6,
	BREAKABLE_GLASS = 7,
	VEHICLE = 8,
	PLAYER_MOVEMENT = 9,
	NPC = 10,
	IN_VEHICLE = 11,
	WEAPON = 12,
	VEHICLE_CLIP = 13,
	PROJECTILE = 14,
	DOOR_BLOCKER = 15,
	PASSABLE_DOOR = 16,
	DISSOLVING = 17,
	PUSHAWAY = 18,
	NPC_ACTOR = 19,
	NPC_SCRIPTED = 20,
	WORLD = 21,
}

---@enum CONTENTS
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used as masks in the trace library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L760).
CONTENTS = {
	CURRENT_270 = 1,
	DETAIL = 2,
	IGNORE_NODRAW_OPAQUE = 3,
	BLOCKLOS = 4,
	GRATE = 5,
	CURRENT_0 = 6,
	AREAPORTAL = 7,
	DEBRIS = 8,
	MONSTERCLIP = 9,
	SLIME = 10,
	WINDOW = 11,
	LADDER = 12,
	CURRENT_180 = 13,
	TRANSLUCENT = 14,
	EMPTY = 15,
	TEAM2 = 16,
	CURRENT_UP = 17,
	TESTFOGVOLUME = 18,
	TEAM1 = 19,
	AUX = 20,
	CURRENT_DOWN = 21,
	ORIGIN = 22,
	TEAM3 = 23,
	MOVEABLE = 24,
	PLAYERCLIP = 25,
	SOLID = 26,
	TEAM4 = 27,
	MONSTER = 28,
	HITBOX = 29,
	CURRENT_90 = 30,
	OPAQUE = 31,
	WATER = 32,
}

---@enum DAMAGE
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used for anything that returns a damage type.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1314).
DAMAGE = {
	GENERIC = 1,
	CRUSH = 2,
	BULLET = 3,
	SLASH = 4,
	BURN = 5,
	VEHICLE = 6,
	FALL = 7,
	BLAST = 8,
	CLUB = 9,
	SHOCK = 10,
	SONIC = 11,
	ENERGYBEAM = 12,
	PREVENTPHYSICSFORCE = 13,
	NEVERGIB = 14,
	ALWAYSGIB = 15,
	DROWN = 16,
	PARALYZE = 17,
	NERVEGAS = 18,
	POISON = 19,
	RADIATION = 20,
	DROWNRECOVER = 21,
	ACID = 22,
	SLOWBURN = 23,
	REMOVENORAGDOLL = 24,
	PHYSGUN = 25,
	PLASMA = 26,
	AIRBOAT = 27,
	DISSOLVE = 28,
	BLASTSURFACE = 29,
	DIRECT = 30,
	BUCKSHOT = 31,
	SNIPER = 32,
	MISSILEDEFENSE = 33,
}

---@enum EF
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of ef for use with hologram:addEffects hologram:removeEffects entity:isEffectActive
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L400).
EF = {
	BONEMERGE = 1,
	BONEMERGE_FASTCULL = 2,
	BRIGHTLIGHT = 3,
	DIMLIGHT = 4,
	NOINTERP = 5,
	NOSHADOW = 6,
	NODRAW = 7,
	NORECEIVESHADOW = 8,
	ITEM_BLINK = 9,
	PARENT_ANIMATES = 10,
	FOLLOWBONE = 11,
}

---@enum FSASYNC
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- file.asyncRead ENUMs
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1162).
FSASYNC = {
	ERR_NOT_MINE = 1,
	ERR_RETRY_LATER = 2,
	ERR_ALIGNMENT = 3,
	ERR_FAILURE = 4,
	ERR_READING = 5,
	ERR_NOMEMORY = 6,
	ERR_UNKNOWNID = 7,
	ERR_FILEOPEN = 8,
	OK = 9,
	STATUS_PENDING = 10,
	STATUS_INPROGRESS = 11,
	STATUS_ABORTED = 12,
	STATUS_UNSERVICED = 13,
}

---@enum FSOLID
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of solid flags for use with entity:getSolidFlags
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L652).
FSOLID = {
	CUSTOMRAYTEST = 1,
	CUSTOMBOXTEST = 2,
	NOT_SOLID = 3,
	TRIGGER = 4,
	NOT_STANDABLE = 5,
	VOLUME_CONTENTS = 6,
	FORCE_WORLD_ALIGNED = 7,
	USE_TRIGGER_BOUNDS = 8,
	ROOT_PARENT_ALIGNED = 9,
	TRIGGER_TOUCH_DEBRIS = 10,
}

---@enum FVPHYSICS
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of physics object flags
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L428).
FVPHYSICS = {
	CONSTRAINT_STATIC = 1,
	DMG_DISSOLVE = 2,
	DMG_SLICE = 3,
	HEAVY_OBJECT = 4,
	MULTIOBJECT_ENTITY = 5,
	NO_IMPACT_DMG = 6,
	NO_NPC_IMPACT_DMG = 7,
	NO_PLAYER_PICKUP = 8,
	NO_SELF_COLLISIONS = 9,
	PART_OF_RAGDOLL = 10,
	PENETRATING = 11,
	PLAYER_HELD = 12,
	WAS_THROWN = 13,
}

---@enum GESTURE_SLOT
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of gesture_slot for use with player:playGesture player:resetGesture
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L562).
GESTURE_SLOT = {
	ATTACK_AND_RELOAD = 1,
	GRENADE = 2,
	JUMP = 3,
	SWIM = 4,
	FLINCH = 5,
	VCD = 6,
	CUSTOM = 7,
}

---@enum GMOD_CHANNEL
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used by Bass:getState()
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1386).
GMOD_CHANNEL = {
	---0
	STOPPED = 1,
	---1
	PLAYING = 2,
	---2
	PAUSED = 3,
	---3
	STALLED = 4,
}

---@enum HITGROUP
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Player and NPC hitgroup ENUMs
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1138).
HITGROUP = {
	GENERIC = 1,
	HEAD = 2,
	CHEST = 3,
	STOMACH = 4,
	LEFTARM = 5,
	RIGHTARM = 6,
	LEFTLEG = 7,
	RIGHTLEG = 8,
	GEAR = 9,
}

---@enum IN_KEY
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of in_keys for use with player:keyDown
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L506).
IN_KEY = {
	ALT1 = 1,
	ALT2 = 2,
	ATTACK = 3,
	ATTACK2 = 4,
	BACK = 5,
	DUCK = 6,
	FORWARD = 7,
	JUMP = 8,
	LEFT = 9,
	MOVELEFT = 10,
	MOVERIGHT = 11,
	RELOAD = 12,
	RIGHT = 13,
	SCORE = 14,
	SPEED = 15,
	USE = 16,
	WALK = 17,
	ZOOM = 18,
	GRENADE1 = 19,
	GRENADE2 = 20,
	WEAPON1 = 21,
	WEAPON2 = 22,
	BULLRUSH = 23,
	CANCEL = 24,
	RUN = 25,
}

---@enum KEY
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of keyboard keys for use with input library
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L38).
KEY = {
	FIRST = 1,
	NONE = 2,
	[0] = 3,
	KEY0 = 4,
	[1] = 5,
	KEY1 = 6,
	[2] = 7,
	KEY2 = 8,
	[3] = 9,
	KEY3 = 10,
	[4] = 11,
	KEY4 = 12,
	[5] = 13,
	KEY5 = 14,
	[6] = 15,
	KEY6 = 16,
	[7] = 17,
	KEY7 = 18,
	[8] = 19,
	KEY8 = 20,
	[9] = 21,
	KEY9 = 22,
	A = 23,
	B = 24,
	C = 25,
	D = 26,
	E = 27,
	F = 28,
	G = 29,
	H = 30,
	I = 31,
	J = 32,
	K = 33,
	L = 34,
	M = 35,
	N = 36,
	O = 37,
	P = 38,
	Q = 39,
	R = 40,
	S = 41,
	T = 42,
	U = 43,
	V = 44,
	W = 45,
	X = 46,
	Y = 47,
	Z = 48,
	KP_INS = 49,
	PAD_0 = 50,
	KP_END = 51,
	PAD_1 = 52,
	KP_DOWNARROW = 53,
	PAD_2 = 54,
	KP_PGDN = 55,
	PAD_3 = 56,
	KP_LEFTARROW = 57,
	PAD_4 = 58,
	KP_5 = 59,
	PAD_5 = 60,
	KP_RIGHTARROW = 61,
	PAD_6 = 62,
	KP_HOME = 63,
	PAD_7 = 64,
	KP_UPARROW = 65,
	PAD_8 = 66,
	KP_PGUP = 67,
	PAD_9 = 68,
	PAD_DIVIDE = 69,
	KP_SLASH = 70,
	KP_MULTIPLY = 71,
	PAD_MULTIPLY = 72,
	KP_MINUS = 73,
	PAD_MINUS = 74,
	KP_PLUS = 75,
	PAD_PLUS = 76,
	KP_ENTER = 77,
	PAD_ENTER = 78,
	KP_DEL = 79,
	PAD_DECIMAL = 80,
	LBRACKET = 81,
	RBRACKET = 82,
	SEMICOLON = 83,
	APOSTROPHE = 84,
	BACKQUOTE = 85,
	COMMA = 86,
	PERIOD = 87,
	SLASH = 88,
	BACKSLASH = 89,
	MINUS = 90,
	EQUAL = 91,
	ENTER = 92,
	SPACE = 93,
	BACKSPACE = 94,
	TAB = 95,
	CAPSLOCK = 96,
	NUMLOCK = 97,
	ESCAPE = 98,
	SCROLLLOCK = 99,
	INS = 100,
	INSERT = 101,
	DEL = 102,
	DELETE = 103,
	HOME = 104,
	END = 105,
	PGUP = 106,
	PAGEUP = 107,
	PGDN = 108,
	PAGEDOWN = 109,
	PAUSE = 110,
	BREAK = 111,
	SHIFT = 112,
	LSHIFT = 113,
	RSHIFT = 114,
	ALT = 115,
	LALT = 116,
	RALT = 117,
	CTRL = 118,
	LCONTROL = 119,
	RCTRL = 120,
	RCONTROL = 121,
	LWIN = 122,
	RWIN = 123,
	APP = 124,
	UPARROW = 125,
	UP = 126,
	LEFTARROW = 127,
	LEFT = 128,
	DOWNARROW = 129,
	DOWN = 130,
	RIGHTARROW = 131,
	RIGHT = 132,
	F1 = 133,
	F2 = 134,
	F3 = 135,
	F4 = 136,
	F5 = 137,
	F6 = 138,
	F7 = 139,
	F8 = 140,
	F9 = 141,
	F10 = 142,
	F11 = 143,
	F12 = 144,
	CAPSLOCKTOGGLE = 145,
	NUMLOCKTOGGLE = 146,
	SCROLLLOCKTOGGLE = 147,
	LAST = 148,
	COUNT = 149,
}

---@enum MASK
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used as trace masks in the trace library. These are simply combinations of the CONTENTS enums.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L712).
MASK = {
	OPAQUE_AND_NPCS = 1,
	SOLID = 2,
	OPAQUE = 3,
	PLAYERSOLID_BRUSHONLY = 4,
	BLOCKLOS = 5,
	SHOT_HULL = 6,
	ALL = 7,
	VISIBLE = 8,
	NPCWORLDSTATIC = 9,
	DEADSOLID = 10,
	SPLITAREAPORTAL = 11,
	CURRENT = 12,
	BLOCKLOS_AND_NPCS = 13,
	SHOT = 14,
	NPCSOLID = 15,
	SOLID_BRUSHONLY = 16,
	VISIBLE_AND_NPCS = 17,
	NPCSOLID_BRUSHONLY = 18,
	SHOT_PORTAL = 19,
	WATER = 20,
	PLAYERSOLID = 21,
}

---@enum MAT
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs describing surface material. Used in TraceResult
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1086).
MAT = {
	ANTLION = 1,
	BLOODYFLESH = 2,
	CONCRETE = 3,
	DIRT = 4,
	EGGSHELL = 5,
	FLESH = 6,
	GRATE = 7,
	ALIENFLESH = 8,
	CLIP = 9,
	SNOW = 10,
	PLASTIC = 11,
	METAL = 12,
	SAND = 13,
	FOLIAGE = 14,
	COMPUTER = 15,
	SLOSH = 16,
	TILE = 17,
	GRASS = 18,
	VENT = 19,
	WOOD = 20,
	DEFAULT = 21,
	GLASS = 22,
	WARPSHIELD = 23,
}

---@enum MATERIAL
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of mesh types. To be used with mesh.generate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L678).
MATERIAL = {
	LINES = 1,
	LINE_LOOP = 2,
	LINE_STRIP = 3,
	POINTS = 4,
	POLYGON = 5,
	QUADS = 6,
	TRIANGLES = 7,
	TRIANGLE_STRIP = 8,
}

---@enum MATERIAL_FOG
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of fog modes to use with render.setFogMode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L700).
MATERIAL_FOG = {
	NONE = 1,
	LINEAR = 2,
	LINEAR_BELOW_FOG_Z = 3,
}

---@enum MOUSE
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of mouse buttons for use with input library
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L342).
MOUSE = {
	MOUSE1 = 1,
	LEFT = 2,
	MOUSE2 = 3,
	RIGHT = 4,
	MOUSE3 = 5,
	MIDDLE = 6,
	MOUSE4 = 7,
	[4] = 8,
	MOUSE5 = 9,
	[5] = 10,
	MWHEELUP = 11,
	WHEEL_UP = 12,
	MWHEELDOWN = 13,
	WHEEL_DOWN = 14,
	COUNT = 15,
	FIRST = 16,
	LAST = 17,
}

---@enum MOVETYPE
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of entity move types
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L460).
MOVETYPE = {
	NONE = 1,
	ISOMETRIC = 2,
	WALK = 3,
	STEP = 4,
	FLY = 5,
	FLYGRAVITY = 6,
	VPHYSICS = 7,
	PUSH = 8,
	NOCLIP = 9,
	LADDER = 10,
	OBSERVER = 11,
	CUSTOM = 12,
}

---@enum NOTIFY
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Notification library enums
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L6).
NOTIFY = {
	GENERIC = 1,
	ERROR = 2,
	UNDO = 3,
	HINT = 4,
	CLEANUP = 5,
}

---@enum PATTACH
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- PATTACH enum for particle library
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L382).
PATTACH = {
	ABSORIGIN = 1,
	ABSORIGIN_FOLLOW = 2,
	CUSTOMORIGIN = 3,
	POINT = 4,
	POINT_FOLLOW = 5,
	WORLDORIGIN = 6,
}

---@enum RENDERFX
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of entity renderfx to be used with Entity.setRenderFX
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L972).
RENDERFX = {
	NONE = 1,
	PULSESLOW = 2,
	PULSEFAST = 3,
	PULSESLOWWIDE = 4,
	PULSEFASTWIDE = 5,
	FADESLOW = 6,
	FADEFAST = 7,
	SOLIDSLOW = 8,
	SOLIDFAST = 9,
	STROBESLOW = 10,
	STROBEFAST = 11,
	STROBEFASTER = 12,
	FLICKERSLOW = 13,
	FLICKERFAST = 14,
	NODISSIPATION = 15,
	DISTORT = 16,
	HOLOGRAM = 17,
	EXPLODE = 18,
	GLOWSHELL = 19,
	CLAMPMINSCALE = 20,
	RAIN = 21,
	SNOW = 22,
	SPOTLIGHT = 23,
	RAGDOLL = 24,
	PULSEFASTWIDER = 25,
}

---@enum RENDERMODE
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of entity render modes to be used with Entity.setRenderMode
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L944).
RENDERMODE = {
	NORMAL = 1,
	TRANSCOLOR = 2,
	TRANSTEXTURE = 3,
	GLOW = 4,
	TRANSALPHA = 5,
	TRANSADD = 6,
	ENVIROMENTAL = 7,
	TRANSADDFRAMEBLEND = 8,
	TRANSALPHADD = 9,
	WORLDGLOW = 10,
	NONE = 11,
}

---@enum SIM
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs used by Entity.setCustomPropForces (Entity.PhysicsSimulate internally)
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L490).
SIM = {
	NOTHING = 1,
	LOCAL_ACCELERATION = 2,
	LOCAL_FORCE = 3,
	GLOBAL_ACCELERATION = 4,
	GLOBAL_FORCE = 5,
}

---@enum SOLID
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of solid for use with entity:getSolid
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L631).
SOLID = {
	NONE = 1,
	BSP = 2,
	BBOX = 3,
	OBB = 4,
	OBB_YAW = 5,
	CUSTOM = 6,
	VPHYSICS = 7,
}

---@enum STENCIL
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of stencil comparisons and operations
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L830).
STENCIL = {
	NEVER = 1,
	LESS = 2,
	EQUAL = 3,
	LESSEQUAL = 4,
	GREATER = 5,
	NOTEQUAL = 6,
	GREATEREQUAL = 7,
	ALWAYS = 8,
	KEEP = 9,
	ZERO = 10,
	REPLACE = 11,
	INCRSAT = 12,
	DECRSAT = 13,
	INVERT = 14,
	INCR = 15,
	DECR = 16,
}

---@enum TEXFILTER
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- ENUMs of texture filtering modes
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L886).
TEXFILTER = {
	NONE = 1,
	POINT = 2,
	LINEAR = 3,
	ANISOTROPIC = 4,
}

---@enum TEXT_ALIGN
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Align enum for drawing text
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L22).
TEXT_ALIGN = {
	---Align the text on the left
	LEFT = 1,
	---Align the text in center
	CENTER = 2,
	---Align the text on the right
	RIGHT = 3,
	---Align the text on the top
	TOP = 4,
	---Align the text on the bottom
	BOTTOM = 5,
}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates an Angle struct.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L33).
---@param p number? # Pitch
---@param y number? # Yaw
---@param r number? # Roll
---@return Angle # Angle struct
function Angle(p, y, r) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a table struct that resembles a Color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L64).
---@param number any # |string? r Red component or string hexadecimal color. Defaults to 255.
---@param g number? # Green component. Defaults to 255.
---@param b number? # Blue component. Defaults to 255.
---@param a number? # Alpha component. Defaults to 255.
---@return Color # New color
function Color(number, g, b, a) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a new VMatrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L25).
---@param t table|Angle|nil # Optional data or rotation angle to initialize the Matrix with.
---@param v Vector? # Optional translation to initialize the Matrix with.
---@return VMatrix # New VMatrix
function Matrix(t, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a Quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L195).
---@param r number? # R (real) component
---@param i number? # I component
---@param j number? # J component
---@param k number? # K component
---@return Quaternion # Quaternion object
function Quaternion(r, i, j, k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a Vector struct.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L43).
---@param x number? # X value
---@param y number? # Y value
---@param z number? # Z value
---@return Vector # Vector
function Vector(x, y, z) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a Vector2 struct for use with wire xv2 type.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L163).
---@param x number? # X value
---@param y number? # Y value
---@return Vector2 # Vector2
function Vector2(x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a new websocket object.
--- Add onMessage, onConnected, onDisconnected functions for callbacks.
--- Also see the websocket example.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L112).
---@param domain string # Domain of the websocket server.
---@param port number? # Port of the websocket server. (Default 443)
---@param secure boolean? # Whether to use secure connection (wss). (Default false)
---@param path string? # Optional path of the websocket.
---@return WebSocket # The websocket object. Use WebSocket:connect() to connect.
function WebSocket(domain, port, secure, path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- If the result of the first argument is false or nil, an error is thrown with the second argument as the message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1119).
---@param expression any # Anything that will be evaluated to be true or false
---@param msg string? # Error message. Default "assertion failed!"
---@param ... any # Any arguments to return if the assertion is successful
function assert(expression, msg, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity representing a processor that this script is running on.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L57).
---@return Entity # Starfall chip entity
function chip() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a 'middleclass' class object that can be used similarly to Java/C++ classes. See https://github.com/kikito/middleclass for examples.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1221).
---@param name string # The string name of the class
---@param super table? # The (optional) parent class to inherit from
function class(name, super) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Execute a console command.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L579).
---@param cmd string # Command to execute
function concmd(cmd) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the Average CPU Time in the buffer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L243).
---@return number # Average CPU Time of the buffer.
function cpuAverage() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the CPU Time max.
--- CPU Time is stored in a buffer of N elements, if the average of this exceeds cpuMax, the chip will error.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L297).
---@return number # Max SysTime allowed to take for execution of the chip in a Think.
function cpuMax() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the total average time for all chips by the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L287).
---@return number # Total average CPU Time of all your chips.
function cpuTotalAverage() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the total used time for all chips by the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L277).
---@return number # Total used CPU time of all your chips.
function cpuTotalUsed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the current count for this Think's CPU Time.
--- This value increases as more executions are done, may not be exactly as you want.
--- If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L235).
---@return number # Current cpu time used this Think
function cpuUsed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Generates the CRC checksum of the specified string. (https://en.wikipedia.org/wiki/Cyclic_redundancy_check).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L212).
---@param stringToHash string # The string to calculate the checksum of
---@return string # The unsigned 32 bit checksum as a string
function crc(stringToHash) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs all included scripts in directory, but does not cache the result.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L825).
---@param path string # The directory to include. Make sure to --@includedir it
---@param loadpriority table # Table of files that should be loaded before any others in the directory
---@return table # Table of return values of the scripts
function dodir(path, loadpriority) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs an included script, but does not cache the result.
--- Pretty much like standard Lua dofile().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L812).
---@param path string # The file path to include. Make sure to --@include it
---@return ... # Return value(s) of the script
function dofile(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the current instance to allow HUD drawing. Only works if player is in your vehicle or.
--- if it's ran on yourself or if the player is connected to your hud and you want to disconnect them.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1177).
---@param ply Player # The player to enable the hud on. If CLIENT, will be forced to player()
---@param active boolean # Whether hud hooks should be active. true to force on, false to force off.
function enableHud(ply, active) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity with index 'num'.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L83).
---@param num number # Entity index
---@return Entity # Entity at the index
function entity(num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Throws an error. Similar to 'throw' but throws whatever you want instead of an SF Error.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1110).
---@param msg string # Message string
---@param level number? # Which level in the stacktrace to blame. Defaults to 1. 0 for no stacktrace.
function error(msg, level) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the local player's camera angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L694).
---@return Angle # The local player's camera angles
function eyeAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the local player's camera position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L701).
---@return Vector # The local player's camera position
function eyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the local player's camera forward vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L708).
---@return Vector # The local player's camera forward vector
function eyeVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets all libraries.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L426).
---@return table # Table where each key is the library name and value is table of the library
function getLibraries() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets an SF type's methods table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L944).
---@param sfType string # Name of SF type
---@return table # Table of the type's methods which can be edited or iterated
function getMethods(sfType) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the source code of and compiled function for specified script.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L716).
---@param path string # Path of file. Can be absolute or relative to calling file. Must be '--@include'-ed.
---@return string? # Source code, or nil if could not be found
---@return function? # Compiled function, or nil if could not be found
function getScript(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the source code of and compiled functions for the scripts used by the chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L727).
---@param ent Entity? # Optional target entity. Default: chip()
---@return table # Table where keys are paths and values are strings
---@return table? # Table where keys are paths and values are functions, or nil if another chip was specified
function getScripts(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the chip's userdata that the duplicator tool loads.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L602).
---@return string # String data
function getUserdata() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua's getfenv.
--- Returns the environment of either the stack level or the function specified.
--- Note that this function will return nil if the return value would be anything other than builtins_library or an environment you have passed to setfenv.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L925).
---@param funcOrStackLevel function|number # Function or stack level to get the environment of
---@return table? # Environment table (or nil, if restricted)
function getfenv(funcOrStackLevel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the metatable of an object or nil.
--- Doesn't work on most internal metatables.
--- For any types other than table, nil will be returned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L202).
---@param tbl any # Table to get metatable of
---@return table? # The metatable of tbl
function getmetatable(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the chip is capable of performing an action.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L311).
---@param perm string # The permission id to check
---@param obj any # Optional object to pass to the permission system.
---@return boolean # Whether the client has granted the specified permission.
---@return string # The reason the permission check failed
function hasPermission(perm, obj) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an iterator function for a for loop, to return ordered key-value pairs from a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L114).
---@param tbl table # Table to iterate over
---@return function # Iterator function
---@return table # Table being iterated over
---@return number # Origin index. Equals 0.
function ipairs(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if this is the first time this hook was predicted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L229).
---@return boolean # Whether this is the first time this hook was predicted
function isFirstTimePredicted() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the table has an isValid function and isValid returns true.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1127).
---@param object any # Table to check
---@return boolean # If it is valid
function isValid(object) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the given input is a boolean.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L188).
---@param x any # Input to check
---@return boolean # If the object is a boolean or not
function isbool(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the given input is a function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L195).
---@param x any # Input to check
---@return boolean # If the object is a function or not
function isfunction(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the given input is a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L167).
---@param x any # Input to check
---@return boolean # If the object is a number or not
function isnumber(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the given input is a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L174).
---@param x any # Input to check
---@return boolean # If the object is a string or not
function isstring(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the given input is a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L181).
---@param x any # Input to check
---@return boolean # If the object is a table or not
function istable(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Like Lua 5.2 or LuaJIT's load/loadstring, except it has no mode parameter and, of course, the resulting function is in your instance's environment by default.
--- For compatibility with older versions of Starfall, loadstring is NOT an alias of this function like it is in vanilla Lua 5.2/LuaJIT.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L872).
---@param code string # String to compile
---@param identifier string? # Name of compiled function
---@param env table? # Environment of compiled function
---@return function? # Compiled function, or nil if failed to compile
---@return string? # Error string, or nil if successfully compiled
function loadstring(code, identifier, env) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Translates the specified position and angle from the specified local coordinate system.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1158).
---@param localPos Vector # The position vector that should be translated to world coordinates
---@param localAng Angle # The angle that should be converted to a world angle
---@param originPos Vector # The origin point of the source coordinate system, in world coordinates
---@param originAngle Angle # The angles of the source coordinate system, as a world angle
---@return Vector # worldPos
---@return Angle # worldAngles
function localToWorld(localPos, localAng, originPos, originAngle) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the next key and value pair in a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L141).
---@param tbl table # Table to get the next key-value pair of
---@param k any # Previous key (can be nil)
---@return any # Key or nil
---@return any # Value or nil
function next(tbl, k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whoever created the chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L63).
---@return Player # Owner of the chip
function owner() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an iterator function for a for loop that will return the values of the specified table in an arbitrary order.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L123).
---@param tbl table # Table to iterate over
---@return function # Iterator function
---@return table # Table being iterated over
---@return any # Nil as current index (for the constructor)
function pairs(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua's pcall with SF throw implementation.
--- Calls a function and catches an error that can be thrown while the execution of the call.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1024).
---@param func function # Function to be executed and of which the errors should be caught of
---@param ... any # Arguments to call the function with.
---@return boolean # If the function had no errors occur within it.
---@return ... # If an error occurred, this will be a string containing the error message. Otherwise, this will be the return values of the function passed in.
function pcall(func, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Is permission request fully satisfied.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L362).
---@return boolean # Whether the client gave all permissions specified in last request or not.
function permissionRequestSatisfied() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Same as owner() on the server. On the client, returns the local player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L70).
---@param num number? # UserID to get the player with.
---@return Player # Returns player with given UserID or if none specified then returns either the owner (server) or the local player (client)
function player(num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Prints a message to the player's chat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L530).
---@param ... any # Values to print. Colors before text will set the text color
function print(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Prints a message to the player's console.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L543).
---@param ... any # Values to print. Colors before text will set the text color
function printConsole(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Prints a message to a target player's chat as long as they're connected to a hud.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L552).
---@param ply Player # The target player. If in CLIENT, then ply is the client player and this param is omitted
---@param ... any # Values to print. Colors before text will set the text color
function printHud(ply, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Prints a message to your chat, console, or the center of your screen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L640).
---@param mtype number # How the message should be displayed. See http://wiki.facepunch.com/gmod/Enums/HUD
---@param text string # The message text.
function printMessage(mtype, text) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Prints a table to player's chat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L572).
---@param tbl table # Table to print
function printTable(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the moving average of ram usage of the gmod lua environment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L255).
---@return number # The ram used in kilobytes
function ramAverage() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the max allowed ram usage of the gmod lua environment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L261).
---@return number # The max ram usage in kilobytes
function ramMax() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the current ram usage of the gmod lua environment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L249).
---@return number # The ram used in kilobytes
function ramUsed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the value of a table index without invoking a metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L441).
---@param table table # The table to get the value from
---@param key any # The index of the table
---@return any # The value of the index
function rawget(table, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set the value of a table index without invoking a metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L432).
---@param tbl table # The table to modify
---@param key any # The index of the table
---@param value any # The value to set the index equal to
function rawset(tbl, key, value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs an included script and caches the result.
--- The path must be an actual path, including the file extension and using slashes for directory separators instead of periods.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L757).
---@param path string # The file path to include. Make sure to --@include it
---@return any # Return value of the script
function require(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs all included scripts in a directory and caches the results.
--- The path must be an actual path, including the file extension and using slashes for directory separators instead of periods.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L770).
---@param path string # The directory to include. Make sure to --@includedir it
---@param loadpriority table # Table of files that should be loaded before any others in the directory
---@return table # Table of return values of the scripts
function requiredir(path, loadpriority) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Restarts a chip owned by yourself.
--- Only restarts the realm that this gets called in.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1197).
---@param chip Entity? # The chip to restart. If nil, it will restart the current chip.
function restart(chip) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Used to select single values from a vararg or get the count of values in it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L92).
---@param parameter any #
---@param ... any # Args to select from
---@return any # Returns a number or vararg, depending on the select method.
function select(parameter, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Opens the permission request dialogue if the player is connected to HUD. setupPermissionRequest must be called first.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L370).
function sendPermissionRequest() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the chip's display author.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L620).
---@param author string # Author to set the chip's author to
function setAuthor(author) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets clipboard text. Only works on the owner of the chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L631).
---@param txt string # Text to set to the clipboard
function setClipboardText(txt) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the chip's display name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L609).
---@param name string # Name to set the chip's name to
function setName(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a soft cpu quota which will trigger a catchable error if the cpu goes over a certain amount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L304).
---@param quota number # The threshold where the soft error will be thrown. Ratio of current cpu to the max cpu usage. 0.5 is 50%
function setSoftQuota(quota) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the chip's userdata that the duplicator tool saves. max 1MiB; can be changed with convar sf_userdata_max.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L590).
---@param str string # String data
function setUserdata(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua's setfenv.
--- Sets the environment of either the stack level or the function specified.
--- Note that this function will throw an error if you try to use it on anything outside of your sandbox.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L904).
---@param funcOrStackLevel function|number # Function or stack level to set the environment of
---@param tbl table # New environment
---@return function # Function with environment set to tbl
function setfenv(funcOrStackLevel, tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets, changes or removes a table's metatable. Doesn't work on most internal metatables.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L159).
---@param tbl table # The table to set the metatable of
---@param meta table # The metatable to use
---@return table # tbl with metatable set to meta
function setmetatable(tbl, meta) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Setups request for overriding permissions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L329).
---@param perms table # Table of overridable permissions' names.
---@param desc string # Description attached to request.
---@param showOnUse boolean # Whether request will popup when player uses chip or linked screen.
function setupPermissionRequest(perms, desc, showOnUse) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the chip to allow other chips to view its sources.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L751).
---@param enable boolean # If true, allow sharing scripts
function shareScripts(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Throws an exception.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1102).
---@param msg string # Message string
---@param level number? # Which level in the stacktrace to blame. Defaults to 1
---@param uncatchable boolean? # Makes this exception uncatchable
function throw(msg, level, uncatchable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Attempts to convert the value to a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L107).
---@param obj any # Object to turn into a number
---@return number? # The object as a number or nil if it couldn't be converted
function tonumber(obj) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Attempts to convert the value to a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L100).
---@param obj any # Object to turn into a string
---@return string # Object as a string
function tostring(obj) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Try to execute a function and catch possible exceptions.
--- Similar to xpcall, but a bit more in-depth.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1081).
---@param func function # Function to execute
---@param catch function? # Optional function to execute in case func fails
function try(func, catch) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a string representing the name of the type of the passed object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L132).
---@param obj any # Object to get type of
---@return string # The name of the object's type.
function type(obj) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- This function takes a numeric indexed table and return all the members as a vararg.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L150).
---@param tbl table # Table to get elements out of
---@param startIndex number? # Which index to start from (default 1)
---@param endIndex number? # Which index to end at (default #tbl)
---@return ... # Elements of tbl
function unpack(tbl, startIndex, endIndex) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the starfall version.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L267).
---@return string # Starfall version
function version() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Translates the specified position and angle into the specified coordinate system.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1139).
---@param pos Vector # The position that should be translated from the current to the new system
---@param ang Angle # The angles that should be translated from the current to the new system
---@param newSystemOrigin Vector # The origin of the system to translate to
---@param newSystemAngles Angle # The angles of the system to translate to
---@return Vector # localPos
---@return Angle # localAngles
function worldToLocal(pos, ang, newSystemOrigin, newSystemAngles) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua's xpcall with SF throw implementation, and a traceback for debugging.
--- Attempts to call the first function. If the execution succeeds, this returns true followed by the returns of the function.
--- If execution fails, this returns false and the second function is called with the error message, and the stack trace.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1053).
---@param func function # The function to call initially.
---@param callback function # The function to be called if execution of the first fails; the error message and stack trace are passed.
---@param ... any # Varargs to pass to the initial function.
---@return boolean # Status of the execution; true for success, false for failure.
---@return ... # The returns of the first function if execution succeeded, otherwise the return values of the error callback.
function xpcall(func, callback, ...) end
