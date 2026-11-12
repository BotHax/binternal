# B'INTERNAL Documentation

- [ImGui](https://github.com/ocornut/imgui): v1.92.8 (docking)
- [Lua](https://lua.org): v5.4.8
- Using also: [sol2](https://github.com/thephd/sol2)
- Last update: v5.61

| Table of contents |
|-------------------|
| [Struct and types](##structures) |
| [Core Functions](#functions) |
| [Hook Detail and Examples](#hook-callback-signature--examples) |
| [Additional Functions](#more-functions) |
| [Additional API](#additional-api) |

---
# Structures

### Vector2

| Field | Description | Type |
|-------|-------------|------|
| `x` | X coordinate | ~ |
| `y` | Y coordinate | ~ |

---

### Vector3

| Field | Description | Type |
|-------|-------------|-----|
| `x` | X coordinate | ~ |
| `y` | Y coordinate | ~ |
| `z` | Z coordinate | ~ |

---

### Rect

| Field | Description | Type |
|-------|-------------|------|
| `left` | Left edge | ~ |
| `top` | Top edge | ~ |
| `right` | Right edge | ~ |
| `bottom` | Bottom edge | ~ |

---

### ClientNPC

| Field | Description | Type |
|-------|-------------|------|
| `id` | NPC identifier | int |
| `type` | NPC type | int |
| `pos` | Current position | [Vector2](#vector2) |
| `target` | Target position | [Vector2](#vector2) |

##### Related Function

- GetNPCList
- GetNPC

---

### Console

| Field | Description | Type |
|-------|-------------|------|
| `capacity` | Maximum number of log lines | int |
| `logs` | Log entries | ~ |

##### Related Function

- GetConsole

---

### ENetClient

| Field | Description | Type |
|-------|-------------|------|
| `address` | Server address | string |
| `port` | Server port | int |
| `protocol` | Protocol number | int |

##### Related Function

- GetClient
- GetPing

---

### GameTimer

| Field | Description | Type |
|-------|-------------|------|
| `lastms` | Last millisecond timestamp | int |
| `timems` | Current time in milliseconds | int |
| `fpstimer` | FPS timer value | int |
| `gametimer` | Game timer value | int |
| `shadowoffset` | Shadow offset | int |
| `fps` | Current FPS | float |
| `fpstemp` | Temporary FPS value | float |
| `paused` | Whether the game timer is paused | bool |
| `deltams` | Delta time in milliseconds | int |
| `deltafloat` | Delta time as float | float |
| `history` | Tick history | ~ |
| `shadowgametick` | Shadow game tick | int |

##### Related Function

- GetGameTimer

---

### ItemInfo

| Field | Description | Type |
|-------|-------------|------|
| `id` | Item identifier | int |
| `type` | Item type | int |
| `material` | Material type | int |
| `name` | Item name | string |
| `coltype` | Collision type | int |
| `filename` | Texture filename | string |
| `texturex` | Texture X position | int |
| `texturey` | Texture Y position | int |
| `breakhit` | Break hit points (item health / 6) | int |
| `flags` | Item flags | int |
| `flags2` | Secondary item flags | int |
| `bodypart` | Body part | int |
| `seed1` | Seed value 1 | int |
| `seed2` | Seed value 2 | int |
| `growtime` | Seconds to bloom | int |
| `rarity` | Rarity | int |
| `maxamount` | Maximum stack amount | int |
| `description` | Item description | string |

##### Related Function

- GetItemInfo
- GetItemByName
- GetItemByIDSafe
- GetItemsByPartialName
- GetItemInfoList

---

### AvatarData

| Field | Description | Type |
|-------|-------------|------|
| `skincolor` | Skin color | int |
| `clothing` | Table of clothing item IDs (indexed 0–8) | int[9] |

---

### NetAvatar

| Field | Description | Type |
|-------|-------------|------|
| `pos` | Position | [Vector2](#vector2) |
| `name` | Player name | string |
| `netid` | Network identifier | int |
| `isleft` | Whether facing left | int |
| `skincolor` | Skin color | int |
| `userid` | User identifier | int |
| `country` | Country | string |
| `invisible` | Whether invisible | bool |
| `mstate` | Mod state | bool |
| `smstate` | Supermod state | bool |
| `avatar` | Avatar data | [AvatarData](#avatardata) |


##### Related Function

- GetLocal
- GetPlayerList
- GetPlayer
- SetFacingLeft

---

### Tile

| Field | Description | Type |
|-------|-------------|------|
| `fg` | Foreground tile ID | int |
| `bg` | Background tile ID | int |
| `x` | Tile X position | int |
| `y` | Tile Y position | int |
| `worldpos` | World position | int |
| `collidable` | Whether collidable | bool |
| `coltype` | Collision type | int |
| `locktile` | Lock tile state | int |
| `flags` | Tile flags table | [TileFlags](#tileflags) |
| `extra` | Extra tile data | [TileExtra](#tileextra) |

##### Related Function

- GetTile
- GetWorldLock
- GetTiles

---

### TileFlags

| Field | Description | Type |
|-------|-------------|------|
| `value` | Raw flags value | int |
| `extra` | Tile has extra data | bool |
| `locked` | Tile is locked | bool |
| `spliced` | Spliced tree | bool |
| `dropseed` | Tile will drop seed | bool |
| `tree` | Tree tile | bool |
| `flipped` | Flipped | bool |
| `enabled` | Enabled | bool |
| `public` | Public | bool |
| `extraframe` | Extra frame | bool |
| `silenced` | Silenced | bool |
| `water` | Water | bool |
| `glue` | Glue | bool |
| `burn` | Fire/burning | bool |
| `red` | Red | bool |
| `green` | Green | bool |
| `blue` | Blue | bool |

##### Related Function

- SetTileFlags

---

### TileExtra

| Field | Description | Type |
|-------|-------------|------|
| `type` | Extra data type | int |
| `flags` | Some flags | int |
| `owner` | Owner name | int |
| `label` | Label | string |
| `label2` | Hidden label | string |
| `label3` | Secondary label | string |
| `lastupdate` | Last update timestamp | int |
| `growth` | Growth value | int |
| `fruitcount` | Fruit count | int |
| `volume` | Volume | int |
| `alttype` | Alternate type | int |
| `admin` | Table of admin entries | int[] |
| `avatar` | Avatar data | [AvatarData](#avatardata) |
| `silkworm` | Silkworm data | ~ |
| `ftank` | Fish tank data | ~ |
| `magplant` | Item sucker info | [ItemSuckerInfo](#itemsuckerinfo) |
| `color` | Kranken color | int |
| `stormcloud` | Storm cloud | bool |
| `progress` | Seed/provider progress | float |

---

### ItemSuckerInfo

| Field | Description | Type |
|-------|-------------|------|
| `id` | Item identifier | int |
| `amount` | Item amount | int |
| `collecting` | Whether collecting is enabled | bool |
| `remote` | Whether remote is enabled | bool |

---

### WorldObject

| Field | Description | Type |
|-------|-------------|------|
| `pos` | Position | [Vector2](#vector2) |
| `id` | Object identifier | int |
| `amount` | Object amount | int |
| `flags` | Object flags | int |
| `oid` | Object OID | int |


##### Related Function

- GetObjectList

---

### World

| Field | Description | Type |
|-------|-------------|------|
| `width` | World width in tiles | int |
| `height` | World height in tiles | int |
| `tilecount` | Total tile count | int |
| `objectcount` | Total object count | int |
| `lastoid` | Last object OID counter | int |
| `name` | World name | string |
| `lockcount` | Area lock count | int |
| `locked` | Whether the world is locked with world lock | bool |

##### Related Function

- GetWorld

---

### WorldCamera

| Field | Description | Type |
|-------|-------------|------|
| `pos` | Camera position | [Vector2](#vector2) |
| `center` | Camera center | [Vector2](#vector2) |
| `scale` | Camera scale | float
| `resolution` | Current resolution | [Vector2](#vector2) |

##### Related Function

- GetCamera

---

### InventoryItem

| Field | Description | Type |
|-------|-------------|------|
| `id` | Item identifier | int |
| `amount` | Item amount | int |
| `flags` | Item flags | int |

##### Related Function

- GetInventory
- GetItemCount

---

### PlayerItems

| Field | Description | Type |
|-------|-------------|------|
| `flags` | Inventory flags | int |
| `clothing` | Table of clothing item IDs (indexed 0–8) | int[9] |
| `quickslot` | Table of quickslot item IDs (indexed 0–3) | int[4] |
| `slot` | Backpack slot | int |
| `selected` | Selected item | int |
| `gems` | Gem count | int |
| `gemscollected` | Gems collected | int |

##### Related Function

- GetPlayerItems
- GetPlayerInfo
- GetGems
- SetItemSelected

---

### GameUpdatePacket

| Field | Description | Type |
|-------|-------------|------|
| `type` | Packet type | int |
| `dropped` | Dropped value | int |
| `padding1` | Padding field 1 | int |
| `padding2` | Padding field 2 | int |
| `netid` | Net ID | int |
| `snetid` | Secondary net ID | int |
| `state` | State | int |
| `padding4` | Padding field 4 | float |
| `value` | Value | int |
| `x` | X value | float |
| `y` | Y value | float |
| `xspeed` | X speed | float |
| `yspeed` | Y speed | float |
| `padding5` | Padding field 5 | int |
| `px` | Tile X position | int |
| `py` | Tile Y position | int |
| `extrasize` | Extra data size | int |

##### Related Function

- SendPacketRaw

---

### VariantList

| Field | Description | Type |
|-------|-------------|------|
| `[0..6]` | Each slot contains a Variant value | any |

##### Related Function

- SendVariantList

---

### HTTPResponse

| Field | Description | Type |
|-------|-------------|------|
| `url` | Request URL | string |
| `method` | Request method | string |
| `redirect` | Redirect URL | string |
| `code` | CURLcode | int |
| `status` | HTTP status | int |
| `error` | Wether there an error | bool |
| `content` | Content/error | string |
| `headers` | Response header table (key: header name) | string[] |

##### Related Function

- MakeRequest

---
# Functions

| Name | ret | p1 | p2 | p3 | p4 | p5 | Description | Note |
|------|-----|----|----|----|----|----|-------------|------|
| LogToConsole | ~ | any | any | any | any | any | Print anything to growtopia console | `LogToConsole("Hello,", "world!")` will same as `LogToConsole("Hello,\tworld!")` |
| RequestJoinWorld | ~ | string | ~ | ~ | ~ | ~ | Warp ||
| GetConsole | [Console](#console) | ~ | ~ | ~ | ~ | ~ | Get growtopia Console instance | Not yet implemented |
| GetGameTimer | [GameTimer](#gametimer) | ~ | ~ | ~ | ~ | ~ | Get GameTimer instance ||
| GetClient | [ENetClient](#enetclient) | ~ | ~ | ~ |~ | ~ | Get ENetClient instance ||
| GetNPC | [ClientNPC](#clientnpc) | int | ~ | ~ | ~ | ~ | Get npc by npc id | nil if not exists |
| GetNPCList | [ClientNPC](#clientnpc)[] | ~ | ~ | ~ | ~ | ~ | Get npc list | Table key: npc.id |
| GetInventory | [InventoryItem](#inventoryitem)[] | ~ | ~ | ~ | ~ | ~ | Get inventory items | Table key: item.id |
| GetItemInfo | [ItemInfo](#iteminfo) | int | ~ | ~ | ~ | ~ | Get ItemInfo by item id | nil if not exists |
| GetItemInfo | [ItemInfo](#iteminfo) | string | ~ | ~ | ~ | ~ | Get ItemInfo by name | nil if not exists |
| GetItemByName | [ItemInfo](#iteminfo) | string | ~ | ~ | ~ | ~ | Get ItemInfo by name | nil if not exists |
| GetItemByIDSafe | [ItemInfo](#iteminfo) | int | ~ | ~ | ~ | ~ | Get ItemInfo by item id | nil if not exists |
| GetItemsByPartialName | [ItemInfo](#iteminfo)[] | string | ~ | ~ | ~ | ~ | Get all ItemInfo which name contains a provided string ||
| GetItemInfoList | [ItemInfo](#iteminfo)[] | ~ | ~ | ~ | ~ | ~ | Get ALL ItemInfo instance ||
| GetLocal | [NetAvatar](#netavatar) | ~ | ~ | ~ | ~ | ~ | Get local player NetAvatar instance | nil if not present |
| GetPlayer | [NetAvatar](#netavatar) | int | ~ | ~ | ~ | ~ | Get NetAvatar by player netid | nil if not exists |
| GetPlayerList | [NetAvatar](#netavatar)[] | ~ | ~ | ~ | ~ | ~ | Get ALL player NetAvatar instance | Table key: player.netid |
| GetObjectList | [WorldObject](#worldobject)[] | ~ | ~ | ~ | ~ | ~ | Get object list | Table key: object.oid |
| GetTiles | [Tile](#tile)[] | ~ | ~ | ~ | ~ | ~ | Get ALL Tile instance | Table key: tile.worldpos ||
| GetWorldLock | [Tile](#tile) | ~ | ~ | ~ | ~ | ~ | Get main lock in world | nil if not present |
| GetTile | [Tile](#tile) | int | ~ | ~ | ~ | ~ | Get Tile by worldpos | nil if not exists |
| GetTile | [Tile](#tile) | int | int | ~ | ~ | ~ | Get Tile by tile x and y | nil if not exists |
| GetWorld | [World](#world) | ~ | ~ | ~ | ~ | ~ | Get World instance | nil if not present |
| GetCamera | [WorldCamera](#worldcamera) | ~ | ~ |  ~ | ~ |~ | Get WorldCamera instance | nil if not present |
| GetPlayerItems | [PlayerItems](#playeritems) | ~ | ~ | ~ | ~ | ~ | Get PlayerItems instance ||
| GetPlayerInfo | [PlayerItems](#playeritems) | ~ | ~ | ~ | ~ | ~ | Same as above ||
| GetGems | int | ~ | ~ | ~ | ~ | ~ | Get gems amount ||
| GetPing | int | ~ | ~ | ~ | ~ | ~ | Get rtt connection ||
| GetItemCount | int | int | ~ | ~ | ~ | ~ | Get item count by item id in inventory ||
| SetItemSelected | ~ | int | ~ | ~ | ~ | ~ | Set item selected ||
| SetFPSLimit | ~ | float | ~ | ~ | ~ | ~ | Set game fps limit ||
| SetFacingLeft | ~ | bool | ~ | ~ | ~ | ~ | Set local player facing ||
| SetTileFlags | ~ | int | int | int | ~ | ~ | Set tile flag by raw value | p1: tile x, p2: tile y, p3: flags.value |
| SetTileFlags | ~ | int | int | [TileFlags](#tileflags) | ~ | ~ | Set tile flag by TileFlags structure | p1: tile x, p2: tile y |
| SendPacket | ~ | int | string | ~ | ~ | ~ | Send text packet to server | p1: type, p2: text |
| SendPacketRaw | ~ | bool | [GameUpdatePacket](#gameupdatepacket) | [int] | ~ | ~ | Send raw packet | p1: whether send the packet to local client, p3: enet flags |
| SendVariantList | ~ | [VariantList](#variantlist) | [int = -1] | [int = 0] | ~ | ~ | Send variantlist to local client | p2: netid, p3: delay |
| SendWorldTouch | ~ | [Vector2](#vector2) | [bool = true] | ~ | ~ | ~ | Send world touch | p1: world position, p2: optional firsttouch |
| SendWorldTouch | ~ | float | float | [bool = true] | ~ | ~ | Send world touch | p1: world x position, p2: world y position, p3: optional firsttouch |
| FindPath | bool | int | int | [int = 0] | ~ | ~ | FIndPath to designated tile x and y position | p3: delay |
| CheckPath | bool | int | int | ~ | ~ | ~ | Check whether possible to travel to target tile x and y ||
| AddHook | ~ | string | any | function | ~ | ~ | Attach hook | p1: hook type, p2: hook id, p3: callback |
| RemoveHook | ~ | any | ~ | ~ | ~ | ~ | Remove hook by hook id | p1: hook id |
| RemoveHooks | ~ | ~ | ~ | ~ | ~ | ~ | Remove ALL hooks ||

---
# Hook Callback Signature & Examples

### `OnVariant` / `Call`: function(var, netid, delay)
```lua
AddHook('call', 1, function(var, netid, delay)
    if var[0] == 'OnDialogRequest' then
        LogToConsole('Dialog blocked!')
        return true
    end
end)
```
### `OnSendPacket` / `Text`: function(type, text)
```lua
AddHook('text', 1, function(type, text)
    if text:find('/hello') then
        LogToConsole('hello from command!')
        return true
    end
end)
```
### `OnSendPacketRaw` / `Raw`: function(packet, flags)
```lua
AddHook('raw', 1, function(packet, flags)
    if packet.type == 3 then
        LogToConsole('Blocked punch/break packet')
        return true
    end
end)
```
### `OnProcessTankUpdatePacket` / `Tank`: function(packet)
```lua
AddHook('tank', 1, function(packet)
    if packet.type == 0 then
        local player = GetPlayer(packet.netid)
        if player then
            LogToConsole('Player', player.name, 'moving!')
        end
    end
end)
```
### `OnTrackPacket` / `Track`: function(type, text)
```lua
AddHook('track', 1, function(type, text)
    LogToConsole('Got track packet:', text)
end)
```
### `OnWorldTouch` / `WorldTouch`: function(position, firsttouch)
```lua
AddHook('worldtouch', 1, function(pos, ft)
    if ft then
        LogToConsole('Tile', pos.x // 32, pos.y // 32, 'clicked')
    end
end)
```
### `OnDraw` / `Draw`: function(deltatime)
```lua
local timer = 1
AddHook('draw', 1, function(delta)
    timer = timer - delta
    if timer <= 0 then
        LogToConsole('Hello!')
        timer = 1 -- reset timer
    end
end)
```
### `OnInput` / `Input`: function(key)
```lua
AddHook('input', 1, function(key)
    LogToConsole('Key', string.char(key), 'pressed')
end)
```

---
# More Functions

| Name | ret | p1 | p2 | p3 | p4 | p5 | Description | Note |
|------|-----|----|----|----|----|----|-------------|------|
| GetTick | int | ~ | ~ | ~ | ~ | ~ | Get current tick in milliseconds ||
| Sleep | ~ | int | ~ | ~ | ~ | ~ | Delay the execution | p1: in milliseconds |
| RunThread | ~ | function | [any] | [any] | [any] | [any] | Create new thread (coroutine) | p1: thread routine, p2~n: parameters |
| RunDelayed | ~ | int | function | [any] | [any] | [any] | Run function delayed | p3~n: parameters |
| GetThreadID | int | ~ | ~ | ~ | ~ | ~ | Get current thread unique identifier ||
| AttachConsole | ~ | ~ | ~ | ~ | ~ | ~ | Attach std console | Windows only |
| DetachConsole | ~ | ~ | ~ | ~ | ~ | ~ | Attach std console | Windows only |
| GetAsyncKeyState | int | int | ~ | ~ | ~ | ~ | GetAsyncKeyState as in windows API | Windows only |
| GetHWID | string | ~ | ~ | ~ | ~ | ~ | Get device unique identifier ||
| GetValue | any | string | ~ | ~ | ~ | ~ | Get feature value | p1: feature name as in Shortcut |
| ChangeValue | ~ | string | any | ~ | ~ | ~ | Set feature value | p1: feature name as in Shortcut, p2: value (must match with feature type) | 
| GetDiscordID | int | ~ | ~ | ~ | ~ | ~ | Get discord id | Returns 0 if using key system |
| GetWorkingPath | string | ~ | ~ | ~ | ~ | ~ | Get root directory | In android, returns /sdcard/Android/media/com.rtsoft.growtopia |
| GetAbsolutePath | string | string | ~ | ~ | ~ | ~ | Get absolute working directory | Same like GetWorkingPath() + '/' + ... |
| GetScreenSize | [Vector2](#vector2) | ~ | ~ | ~ | ~ | ~ | Get the display size ||
| EncodeFunction | string | function | ~ | ~ | ~ | ~ | Encode a function ||
| DecodeFunction | function, string | string | ~ | ~ | ~ | ~ | Load an encrypted payload from EncodeFunction | Second return value only exists if first return value (function) is nil. Error message |
| Encrypt | string | string | [int = 0] | ~ | ~ | ~ | Encrypt a string | WARNING: This is legacy API. Very unsafe encryption. Prefer use EncodeFunction. p1: data, p2: key |
| EncryptFile | bool | string | [int = 0] | ~ | ~ | ~ | Encrypt a file, output will be filename + _enc | WARNING: This is legacy API. Very unsafe encryption. p1: file path from `scripts` |
| LoadEncrypt | [pcall result] | string | [int = 0] | ~ | ~ | ~ | Load encrypted buffer, returns pcall(load(...)) of the buffer. Which is inverse from Encrypt(buffer) | WARNING: This is legacy API. Prefer use DecodeFunction. p1: encrypted buffer, p2: key |
| LoadEncryptedFile | [pcall result] | string | [int = 0] | ~ | ~ | ~ | Load encrypted file, returns pcall(loadfile(...)) of the encrypted file | WARNING: This is legacy API
| Hash32 | int | string | [int = 0x811C9DC5] | [int = 0x1000193] | ~ | ~ | FNV1a32-stype hashing with customable base and prime | p2: base value, p3: prime value |
| Hash64 | int | string | [int = 0xCBF29CE484222325] | [int = 0x100000001B3] | ~ | ~ | FNV1a64-stype hashing with customable base and prime | p2: base value, p3: prime value |
| b64encode | string | string | ~ | ~ | ~ | ~ | Base64 encode ||
| b64decode | string | string | ~ | ~ | ~ | ~ | Base64 decode ||
| md5 | string | string | ~ | ~ | ~ | ~ | md5 hash | Result are hex in lowercase |
| sha256 | string | string | ~ | ~ | ~ | ~ | sha256 hash | Result are hex in lowercase |
| sha1 | string | string | ~ | ~ | ~ | ~ | sha1 hash | Result are hex in lowercase |
---

# Additional API

## json (json utility)
```lua
json.stringify
json.parse
json.encode
json.decode
```
```lua
local function assert_eq(actual, expected, msg)
  if actual ~= expected then
    error(string.format("%s\nExpected: %s\nActual:   %s", msg or "Assertion failed", tostring(expected), tostring(actual)), 2)
  end
end

local function check_error(fn, pattern, desc)
  local ok, err = pcall(fn)
  if ok then
    error(string.format("Expected error for '%s', but execution succeeded", desc or "unnamed test"), 2)
  end
  if not string.find(tostring(err), pattern, 1, true) then
    error(string.format("Error mismatch for '%s':\nExpected pattern: %s\nActual error:   %s", desc or "", pattern, tostring(err)), 2)
  end
end

print("[TEST 01] RFC 8259 Compliance & Edge Cases...")

-- 1. Function existence and aliases
assert(type(json.stringify) == "function", "json.stringify must be a function")
assert(type(json.parse) == "function", "json.parse must be a function")
assert(type(json.encode) == "function", "json.encode alias must exist")
assert(type(json.decode) == "function", "json.decode alias must exist")
assert(json.null ~= nil, "json.null sentinel must exist")
assert(type(json.isnull) == "function", "json.isnull must be a function")

-- 2. Primitives: Null & Booleans
assert_eq(json.stringify(nil), "null", "nil -> null")
assert_eq(json.stringify(true), "true", "true -> true")
assert_eq(json.stringify(false), "false", "false -> false")
assert_eq(json.parse("null"), nil, "null -> nil")
assert_eq(json.parse("true"), true, "true -> true")
assert_eq(json.parse("false"), false, "false -> false")

-- 3. Numbers: Integers & Floats
assert_eq(json.stringify(0), "0")
assert_eq(json.stringify(42), "42")
assert_eq(json.stringify(-999), "-999")
assert_eq(json.stringify(9007199254740991), "9007199254740991")
assert_eq(json.stringify(3.14159), "3.14159")
assert_eq(json.stringify(-0.005), "-0.005")

assert_eq(json.parse("0"), 0)
assert_eq(json.parse("42"), 42)
assert_eq(json.parse("-999"), -999)
assert_eq(json.parse("9007199254740991"), 9007199254740991)
assert(math.abs(json.parse("3.14159") - 3.14159) < 1e-12)
assert(math.abs(json.parse("1.25e-3") - 0.00125) < 1e-12)
assert(math.abs(json.parse("-2.5E+2") - (-250.0)) < 1e-12)

-- 4. Strings & Escape Sequences
assert_eq(json.stringify(""), [[""]])
assert_eq(json.stringify("abc"), [["abc"]])
assert_eq(json.stringify("quote: \" backslash: \\ slash: /"), [["quote: \" backslash: \\ slash: /"]])
assert_eq(json.stringify("controls: \b \f \n \r \t"), [["controls: \b \f \n \r \t"]])

assert_eq(json.parse([[""]]), "")
assert_eq(json.parse([["abc"]]), "abc")
assert_eq(json.parse([["quote: \" backslash: \\ slash: \/"]]), "quote: \" backslash: \\ slash: /")
assert_eq(json.parse([["controls: \b \f \n \r \t"]]), "controls: \b \f \n \r \t")

-- 5. Unicode escapes and UTF-16 surrogate pairs
assert_eq(json.parse([["\u0041\u0042\u0043"]]), "ABC")
assert_eq(json.parse([["Caf\u00e9"]]), "Café")
-- Emoji: U+1F600 (Grinning Face) encoded as surrogate pair \uD83D\uDE00
local emoji_parsed = json.parse([["\ud83d\ude00"]])
assert_eq(#emoji_parsed, 4, "UTF-8 emoji should be 4 bytes")
-- Round-trip emoji through stringify and parse
local emoji_encoded = json.stringify(emoji_parsed)
assert_eq(json.parse(emoji_encoded), emoji_parsed)

-- 6. Arrays
assert_eq(json.stringify({}), "[]")
assert_eq(json.stringify({ 1, 2, 3 }), "[1,2,3]")
assert_eq(json.stringify({ "a", true, false, 3.5 }), '["a",true,false,3.5]')
local arr_parsed = json.parse('[1, 2, "three", true, false]')
assert_eq(#arr_parsed, 5)
assert_eq(arr_parsed[1], 1)
assert_eq(arr_parsed[3], "three")
assert_eq(arr_parsed[4], true)

-- 7. Objects and deterministic sorted keys
local test_obj = {
  z = 26,
  a = 1,
  m = "middle",
  b = false
}
local obj_json = json.stringify(test_obj)
assert_eq(obj_json, '{"a":1,"b":false,"m":"middle","z":26}')
local obj_parsed = json.parse(obj_json)
assert_eq(obj_parsed.a, 1)
assert_eq(obj_parsed.b, false)
assert_eq(obj_parsed.m, "middle")
assert_eq(obj_parsed.z, 26)

-- 8. Metatable type hints for empty structures
local empty_arr = setmetatable({}, { __json_type = "array" })
local empty_obj = setmetatable({}, { __json_type = "object" })
assert_eq(json.stringify(empty_arr), "[]")
assert_eq(json.stringify(empty_obj), "{}")

-- 9. Pretty-printing (indentation)
local tree = {
  title = "root",
  items = { 1, 2 }
}
local pretty2 = json.stringify(tree, 2)
assert(string.find(pretty2, '\n  "items": [\n    1,\n    2\n  ],\n', 1, true) ~= nil, "pretty indent 2 format check")

local pretty4 = json.stringify(tree, 4)
assert(string.find(pretty4, '\n    "items": [\n        1,\n        2\n    ],\n', 1, true) ~= nil, "pretty indent 4 format check")

-- 10. json.null sentinel and preserve_null option in parse
local null_arr = json.parse('[10, null, 30]', true)
assert_eq(#null_arr, 3)
assert_eq(null_arr[1], 10)
assert(json.isnull(null_arr[2]), "index 2 should be null")
assert(null_arr[2] == json.null, "index 2 should equal json.null")
assert_eq(null_arr[3], 30)
assert_eq(json.stringify(null_arr), '[10,null,30]')

-- 11. Error handling and syntax validation
check_error(function() json.parse('{') end, "unterminated object", "unclosed {")
check_error(function() json.parse('[') end, "unexpected end", "unclosed [")
check_error(function() json.parse('[1, 2,]') end, "expected", "trailing comma in array")
check_error(function() json.parse('{"a": 1,}') end, "expected string key", "trailing comma in object")
check_error(function() json.parse('{"a"}') end, "expected ':'", "missing colon in object")
check_error(function() json.parse('{123: 1}') end, "expected string key", "numeric unquoted key in object")
check_error(function() json.parse('012') end, "leading zeros", "leading zero in number")
check_error(function() json.parse([["\u123"]]) end, "invalid \\uXXXX", "incomplete hex escape")
check_error(function() json.parse([["\ud800"]]) end, "unpaired UTF-16", "unpaired high surrogate")
check_error(function() json.parse('[1, 2] extra') end, "unexpected trailing", "trailing garbage")

-- 12. Serialization error handling
local cyclic_tbl = { id = 1 }
cyclic_tbl.ref = cyclic_tbl
check_error(function() json.stringify(cyclic_tbl) end, "circular table reference", "cycle detection")
check_error(function() json.stringify(0/0) end, "cannot serialize NaN", "NaN serialization")
check_error(function() json.stringify(1/0) end, "cannot serialize NaN", "Infinity serialization")
check_error(function() json.stringify(function() end) end, "unsupported type 'function'", "function serialization")
check_error(function() json.stringify({ [function() end] = 1 }) end, "unsupported table key type 'function'", "function table key")

print("[PASS] Test 01: All compliance and edge-case assertions passed successfully!")
```
## ImGui (see [IMGUI.lua](IMGUI.lua) for more detailed API)
```lua
local State = {
    enabled   = true,
    speed     = 1.5,
    volume    = 50,
    mode      = 0,              -- Combo index
    name      = "Player",
    color     = ImVec4(1, 0.5, 0.2, 1),
    clickCount = 0,
}

local modes = { "Idle", "Walk", "Run", "Fly" }

local function OnRender(delta)
    ImGui.SetNextWindowPos(ImVec2(40, 40), ImGui.Cond.Once)
    ImGui.SetNextWindowSize(ImVec2(320, 260), ImGui.Cond.Once)

    if ImGui.Begin("ImLua Demo", true) then
        ImGui.Text("Hello, ImGui!")
        ImGui.Separator()

        -- Checkbox ------------------------------------------
        local changed, enabled = ImGui.Checkbox("Enabled", State.enabled)
        if changed then State.enabled = enabled end

        -- Slider --------------------------------------------
        local sChanged, speed = ImGui.SliderFloat(
            "Speed", State.speed, 0.1, 10.0, "%.2f"
        )
        if sChanged then State.speed = speed end

        -- Drag int ------------------------------------------
        local dChanged, volume = ImGui.DragInt(
            "Volume", State.volume, 1, 0, 100
        )
        if dChanged then State.volume = volume end

        -- Combo ---------------------------------------------
        local cChanged, mode = ImGui.Combo(
            "Mode", State.mode, modes, #modes
        )
        if cChanged then State.mode = mode end

        -- Input text ----------------------------------------
        local tChanged, name = ImGui.InputText("Name", State.name, 0)
        if tChanged then State.name = name end

        -- Color picker --------------------------------------
        local colChanged, col = ImGui.ColorEdit4(
            "Color", State.color, ImGui.ColorEditFlags.NoInputs
        )
        if colChanged then State.color = col end

        -- Buttons -------------------------------------------
        if ImGui.Button("Click me", ImVec2(120, 0)) then
            State.clickCount = State.clickCount + 1
        end

        ImGui.SameLine()
        if ImGui.SmallButton("Reset") then
            State.clickCount = 0
        end

        ImGui.Text(string.format("Clicks: %d", State.clickCount))

        -- Disabled section ----------------------------------
        ImGui.BeginDisabled(not State.enabled)
        ImGui.TextColored(State.color, "This block is dimmed when disabled.")
        ImGui.EndDisabled()

        -- Tooltip on hover ----------------------------------
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip("Hover tooltip!")
        end
    end
    ImGui.End()

    -- DrawList overlay (drawn on top of everything) ---------
    local fg = ImGui.GetForegroundDrawList()
    fg:AddText(
        ImVec2(10, 10),
        ImColor(255, 255, 0),
        "FPS: " .. tostring(ImGui.GetFrameCount())
    )
    fg:AddCircle(
        ImVec2(200, 200), 30,
        ImColor(0, 255, 0, 200),
        32, 2.0
    )
end

AddHook('draw', 1, OnRender)
```
## MakeRequest
[HTTPResponse](#httpresponse) MakeRequest(string[, table][, string][, table])

p1: url, p2: headers, p3: content, p4: additional data

```lua
local response = MakeRequest(
    -- url, string
    "https://www.google.com",
    
    -- headers, table, optional
    {
        ["User-Agent"]="Unknown",
        ["Content-Type"]="application/json"
    },
    
    -- data, string, optional
    "Hello",

    -- additional data, table, optional
    {
        -- request method. default value when data is nil: GET. otherwise POST
        method = "PATCH", -- GET POST PATCH etc

        -- dns resolve, table
        resolve = {
            "www.google.com:443:127.0.0.1" -- equivalent to `127.0.0.1 www.google.com` in hosts (for https connection since the port is 443)
        },

        -- another headers
        header = {
            "Token: 123123123",
            "Key: hello, world!"
        },

        -- request timeout in seconds
        timeout = 30,

        -- followlocation
        follow = true -- if the request need redirect, it will automatically follow if this set to true
    }
)
```
### MakeRequest also support legacy parameters
[HTTPResponse](#httpresponse) MakeRequest(string[, string][, table][, string][, table][, table][, int])

p1: url, p2: method, p3: headers, p4: content, p5: dns resolve, p6: deprecated socks5, p7: timeout

```lua
MakeRequest(
    "https://www.google.com",
    "GET",
    {
        ["User-Agent"]="Unknown",
        ["Content-Type"]="application/json"
    },
    "Hello",
    { -- dns resolver. something like custom hosts
        "www.google.com:443:127.0.0.1" -- equivalent to `127.0.0.1 www.google.com` in hosts (for https connection since the port is 443)
    },
    nil, -- socks5, deprecated
    10 -- timeout
)
```

## WebSocket: TODO
