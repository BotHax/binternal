---@meta
---=============================================================================
--- Dear ImGui v1.92.8 - ImLua Complete API Reference & EmmyLua Definitions
--- Fully documented bindings for ImGui, ImDrawList, Enums, and Engine Utilities.
--- Compatible with Lua 5.4 / Lua Language Server (sumneko.lua) / VS Code
---=============================================================================

---@class ImVec2
---@field x number Local or screen horizontal coordinate / width
---@field y number Local or screen vertical coordinate / height

---@class ImVec4
---@field x number R / Left / MinX
---@field y number G / Top / MinY
---@field z number B / Right / MaxX
---@field w number A / Bottom / MaxY

---=============================================================================
--- SECTION: ImDrawList (2D Vector Graphics Canvas)
--- Access via ImGui.GetBackgroundDrawList() or ImGui.GetForegroundDrawList()
---=============================================================================
---@class ImDrawList
local ImDrawList = {}

---Draws a 2D line segment between two points.
---@param p1 ImVec2
---@param p2 ImVec2
---@param col integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddLine(p1, p2, col, thickness) end

---Draws a horizontal line segment from min_x to max_x at vertical position y.
---@param min_x number
---@param max_x number
---@param y number
---@param col integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddLineH(min_x, max_x, y, col, thickness) end

---Draws a vertical line segment from min_y to max_y at horizontal position x.
---@param x number
---@param min_y number
---@param max_y number
---@param col integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddLineV(x, min_y, max_y, col, thickness) end

---Draws an unfilled rectangle outline with optional rounded corners and thickness.
---@param p_min ImVec2
---@param p_max ImVec2
---@param col integer
---@param rounding? number [default: 0.0f]
---@param thickness? number [default: 1.0f]
---@param flags? integer [default: 0]
function ImDrawList:AddRect(p_min, p_max, col, rounding, thickness, flags) end

---Draws a solid filled rectangle with optional rounded corners.
---@param p_min ImVec2
---@param p_max ImVec2
---@param col integer
---@param rounding? number [default: 0.0f]
---@param flags? integer [default: 0]
function ImDrawList:AddRectFilled(p_min, p_max, col, rounding, flags) end

---Draws a filled rectangle with 4-corner color gradients (upper-left, upper-right, bottom-right, bottom-left).
---@param p_min ImVec2
---@param p_max ImVec2
---@param col_upr_left integer
---@param col_upr_right integer
---@param col_bot_right integer
---@param col_bot_left integer
function ImDrawList:AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left) end

---Draws an unfilled quadrilateral with 4 arbitrary vertices.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param p4 ImVec2
---@param col integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddQuad(p1, p2, p3, p4, col, thickness) end

---Draws a solid filled convex quadrilateral with 4 arbitrary vertices.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param p4 ImVec2
---@param col integer
function ImDrawList:AddQuadFilled(p1, p2, p3, p4, col) end

---Draws an unfilled triangle with 3 vertices.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param col integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddTriangle(p1, p2, p3, col, thickness) end

---Draws a solid filled triangle with 3 vertices.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param col integer
function ImDrawList:AddTriangleFilled(p1, p2, p3, col) end

---Draws an unfilled circle outline with center point and radius.
---@param center ImVec2
---@param radius number
---@param col integer
---@param num_segments? integer [default: 0]
---@param thickness? number [default: 1.0f]
function ImDrawList:AddCircle(center, radius, col, num_segments, thickness) end

---Draws a solid filled circle with center point and radius.
---@param center ImVec2
---@param radius number
---@param col integer
---@param num_segments? integer [default: 0]
function ImDrawList:AddCircleFilled(center, radius, col, num_segments) end

---Draws an unfilled regular n-sided polygon.
---@param center ImVec2
---@param radius number
---@param col integer
---@param num_segments integer
---@param thickness? number [default: 1.0f]
function ImDrawList:AddNgon(center, radius, col, num_segments, thickness) end

---Draws a solid filled regular n-sided polygon.
---@param center ImVec2
---@param radius number
---@param col integer
---@param num_segments integer
function ImDrawList:AddNgonFilled(center, radius, col, num_segments) end

---Draws an unfilled ellipse with center, radius, and rotation angle in radians.
---@param center ImVec2
---@param radius ImVec2
---@param col integer
---@param rot? number [default: 0.0f]
---@param num_segments? integer [default: 0]
---@param thickness? number [default: 1.0f]
function ImDrawList:AddEllipse(center, radius, col, rot, num_segments, thickness) end

---Draws a solid filled ellipse with center, radius, and rotation angle in radians.
---@param center ImVec2
---@param radius ImVec2
---@param col integer
---@param rot? number [default: 0.0f]
---@param num_segments? integer [default: 0]
function ImDrawList:AddEllipseFilled(center, radius, col, rot, num_segments) end

---Draws a smooth cubic Bézier spline with 2 endpoints and 2 control points.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param p4 ImVec2
---@param col integer
---@param thickness number
---@param num_segments? integer [default: 0]
function ImDrawList:AddBezierCubic(p1, p2, p3, p4, col, thickness, num_segments) end

---Draws a smooth quadratic Bézier spline with 2 endpoints and 1 control point.
---@param p1 ImVec2
---@param p2 ImVec2
---@param p3 ImVec2
---@param col integer
---@param thickness number
---@param num_segments? integer [default: 0]
function ImDrawList:AddBezierQuadratic(p1, p2, p3, col, thickness, num_segments) end

---Renders a text string at pos using the default font and color.
---@param pos ImVec2
---@param col integer
---@param text_begin string
---@param text_end? string [default: NULL]
function ImDrawList:AddText(pos, col, text_begin, text_end) end

---Clears the active path vertex list.
function ImDrawList:PathClear() end

---Adds a point to the active path.
---@param pos ImVec2
function ImDrawList:PathLineTo(pos) end

---Adds a point to the active path, merging if duplicate of previous vertex.
---@param pos ImVec2
function ImDrawList:PathLineToMergeDuplicate(pos) end

---Appends an arc between two angles (in radians) to the active path.
---@param center ImVec2
---@param radius number
---@param a_min number
---@param a_max number
---@param num_segments? integer [default: 0]
function ImDrawList:PathArcTo(center, radius, a_min, a_max, num_segments) end

---Appends a 12-segment fast arc to the active path.
---@param center ImVec2
---@param radius number
---@param a_min_of_12 integer
---@param a_max_of_12 integer
function ImDrawList:PathArcToFast(center, radius, a_min_of_12, a_max_of_12) end

---Appends an elliptical arc with rotation to the active path.
---@param center ImVec2
---@param radius ImVec2
---@param rot number
---@param a_min number
---@param a_max number
---@param num_segments? integer [default: 0]
function ImDrawList:PathEllipticalArcTo(center, radius, rot, a_min, a_max, num_segments) end

---Appends a cubic Bézier curve segment to the active path.
---@param p2 ImVec2
---@param p3 ImVec2
---@param p4 ImVec2
---@param num_segments? integer [default: 0]
function ImDrawList:PathBezierCubicCurveTo(p2, p3, p4, num_segments) end

---Appends a quadratic Bézier curve segment to the active path.
---@param p2 ImVec2
---@param p3 ImVec2
---@param num_segments? integer [default: 0]
function ImDrawList:PathBezierQuadraticCurveTo(p2, p3, num_segments) end

---Appends a rounded rectangle to the active path.
---@param rect_min ImVec2
---@param rect_max ImVec2
---@param rounding? number [default: 0.0f]
---@param flags? integer [default: 0]
function ImDrawList:PathRect(rect_min, rect_max, rounding, flags) end

---Strokes the current path outline with color and line thickness.
---@param col integer
---@param thickness? number [default: 1.0f]
---@param flags? integer [default: 0]
function ImDrawList:PathStroke(col, thickness, flags) end

---Fills the convex polygon formed by current path vertices.
---@param col integer
function ImDrawList:PathFillConvex(col) end

---Pushes a scissor clipping bounding box.
---@param clip_rect_min ImVec2
---@param clip_rect_max ImVec2
---@param intersect_with_current_clip_rect? boolean [default: false]
function ImDrawList:PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect) end

---Pushes a full-screen clipping rectangle.
function ImDrawList:PushClipRectFullScreen() end

---Restores the previous scissor clipping box.
function ImDrawList:PopClipRect() end

---Gets the minimum boundary point of the current clip rect.
---@return ImVec2
function ImDrawList:GetClipRectMin() end

---Gets the maximum boundary point of the current clip rect.
---@return ImVec2
function ImDrawList:GetClipRectMax() end

---=============================================================================
--- SECTION: Built-in ImLua Global Helpers
--- Injected into global environment by ImLua
---=============================================================================

---Creates a 2D vector object.
---@param x? number Horizontal value [default: 0]
---@param y? number Vertical value [default: 0]
---@return ImVec2
function ImVec2(x, y) end

---Creates a 4D vector object (used for Rect, Color RGBA, ClipRects).
---@param x? number R / Left [default: 0]
---@param y? number G / Top [default: 0]
---@param z? number B / Right [default: 0]
---@param w? number A / Bottom [default: 0]
---@return ImVec4
function ImVec4(x, y, z, w) end

---Packs RGBA color channels into a 32-bit integer color code (0xAA_BB_GG_RR).
---Pure Lua implementation: (r or 0) | ((g or 0) * 256) | ((b or 0) * 65536) | ((a or 0) * 16777216)
---@param r integer Red (0-255)
---@param g integer Green (0-255)
---@param b integer Blue (0-255)
---@param a? integer Alpha (0-255) [default: 0]
---@return integer packed_u32 Packed 32-bit color code
function ImColor(r, g, b, a) end

---=============================================================================
--- SECTION: ImGui Library Module
--- All Dear ImGui 1.92.8 functions & DrawList getters
---=============================================================================
---@class ImGui
---@field BG ImDrawList Background DrawList instance (drawn behind all windows)
---@field FG ImDrawList Foreground DrawList instance (drawn on top of all windows)
ImGui = {}

---Returns the background drawlist instance (renders underneath all windows).
---@return ImDrawList
function ImGui.GetBackgroundDrawList() end

---Returns the foreground drawlist instance (renders above all windows).
---@return ImDrawList
function ImGui.GetForegroundDrawList() end

---=============================================================================
--- [SECTION] Context, Demo, Debug, Information Windows
---=============================================================================

---Shows Dear ImGui standard demo showcase window with all interactive widgets.
---@param p_open? boolean [default: NULL]
---@return boolean
function ImGui.ShowDemoWindow(p_open) end

---Shows Dear ImGui internal debugging metrics window (draw calls, vertices, allocs).
---@param p_open? boolean [default: NULL]
---@return boolean
function ImGui.ShowMetricsWindow(p_open) end

---Shows Dear ImGui internal debug log viewer.
---@param p_open? boolean [default: NULL]
---@return boolean
function ImGui.ShowDebugLogWindow(p_open) end

---Shows Dear ImGui interactive ID Stack inspection tool.
---@param p_open? boolean [default: NULL]
---@return boolean
function ImGui.ShowIDStackToolWindow(p_open) end

---Shows standard About Dear ImGui dialog with credits and license.
---@param p_open? boolean [default: NULL]
---@return boolean
function ImGui.ShowAboutWindow(p_open) end

---Shows style editing interface for modifying colors, padding, rounding, and sizing.
function ImGui.ShowStyleEditor() end

---Shows quick theme / style palette selector dropdown.
---@param label string
---@return boolean ret
function ImGui.ShowStyleSelector(label) end

---Shows font selection dropdown tool.
---@param str string
function ImGui.ShowFontSelector(str) end

---Renders user navigation help and keyboard shortcut cheat sheet.
function ImGui.ShowUserGuide() end

---Returns Dear ImGui library version string (e.g. '1.92.8').
---@return string ret
function ImGui.GetVersion() end

---Applies standard dark color palette.
function ImGui.StyleColorsDark() end

---Applies standard light color palette.
function ImGui.StyleColorsLight() end

---Applies classic retro ImGui color scheme.
function ImGui.StyleColorsClassic() end

---=============================================================================
--- [SECTION] Windows
---=============================================================================

---Begins a new window or appends to an existing window.
---@param name string Window title / ID
---@param p_open? boolean Optional close button toggle state [default: nil]
---@param flags? integer Window flags (ImGui.WindowFlags) [default: 0]
---@return boolean is_visible True if the window is currently expanded/visible
---@return boolean? p_open Updated open state if p_open argument was provided
function ImGui.Begin(name, p_open, flags) end

---Ends the current window.
function ImGui.End() end

---=============================================================================
--- [SECTION] Child Windows
---=============================================================================

---Begins a scrolling sub-window or bordered rectangular region.
---@param str_id string Child region ID
---@param size? ImVec2 Child dimensions [default: (0, 0)]
---@param child_flags? integer Child flags (ImGui.ChildFlags) [default: 0]
---@param window_flags? integer Window flags (ImGui.WindowFlags) [default: 0]
---@return boolean is_visible
function ImGui.BeginChild(str_id, size, child_flags, window_flags) end

---Ends the current child window region.
function ImGui.EndChild() end

---=============================================================================
--- [SECTION] Windows Utilities
---=============================================================================

---Returns true if the window is appearing this frame.
---@return boolean
function ImGui.IsWindowAppearing() end

---Returns true if the window is currently collapsed/folded.
---@return boolean
function ImGui.IsWindowCollapsed() end

---Returns true if the current window is focused.
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.IsWindowFocused(flags) end

---Returns true if the current window is hovered by mouse.
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.IsWindowHovered(flags) end

---Returns current window position in screen space.
---@return ImVec2
function ImGui.GetWindowPos() end

---Returns current window dimensions.
---@return ImVec2
function ImGui.GetWindowSize() end

---Returns current window width.
---@return number
function ImGui.GetWindowWidth() end

---Returns current window height.
---@return number
function ImGui.GetWindowHeight() end

---Sets the next window position before Begin().
---@param pos ImVec2
---@param cond? integer [default: 0]
---@param pivot? ImVec2 [default: ImVec2(0, 0)]
function ImGui.SetNextWindowPos(pos, cond, pivot) end

---Sets the next window size before Begin().
---@param size ImVec2
---@param cond? integer [default: 0]
function ImGui.SetNextWindowSize(size, cond) end

---Dear ImGui SetNextWindowSizeConstraints function.
---@param size_min ImVec2
---@param size_max ImVec2
function ImGui.SetNextWindowSizeConstraints(size_min, size_max) end

---Sets the next window content region size before Begin().
---@param val ImVec2
function ImGui.SetNextWindowContentSize(val) end

---Sets the next window collapsed state before Begin().
---@param collapsed boolean
---@param cond? integer [default: 0]
function ImGui.SetNextWindowCollapsed(collapsed, cond) end

---Sets the next window to be focused before Begin().
function ImGui.SetNextWindowFocus() end

---Sets the next window initial scroll offset before Begin().
---@param val ImVec2
function ImGui.SetNextWindowScroll(val) end

---Sets the next window background transparency alpha (0.0 to 1.0).
---@param alpha number
function ImGui.SetNextWindowBgAlpha(alpha) end

---Dear ImGui SetNextWindowViewport function.
---@param viewport_id integer
function ImGui.SetNextWindowViewport(viewport_id) end

---Dear ImGui SetWindowPos function.
---@param name string
---@param pos ImVec2
---@param cond? integer [default: 0]
function ImGui.SetWindowPos(name, pos, cond) end

---Dear ImGui SetWindowSize function.
---@param name string
---@param size ImVec2
---@param cond? integer [default: 0]
function ImGui.SetWindowSize(name, size, cond) end

---Dear ImGui SetWindowCollapsed function.
---@param name string
---@param collapsed boolean
---@param cond? integer [default: 0]
function ImGui.SetWindowCollapsed(name, collapsed, cond) end

---Dear ImGui SetWindowFocus function.
---@param str string
function ImGui.SetWindowFocus(str) end

---Returns the remaining available content space (width, height) in the current window.
---@return ImVec2
function ImGui.GetContentRegionAvail() end

---Returns the maximum content region coordinates in window space.
---@return ImVec2
function ImGui.GetContentRegionMax() end

---Dear ImGui GetWindowContentRegionMin function.
---@return ImVec2
function ImGui.GetWindowContentRegionMin() end

---Dear ImGui GetWindowContentRegionMax function.
---@return ImVec2
function ImGui.GetWindowContentRegionMax() end

---=============================================================================
--- [SECTION] Windows Scrolling
---=============================================================================

---Returns current horizontal scroll position.
---@return number
function ImGui.GetScrollX() end

---Returns current vertical scroll position.
---@return number
function ImGui.GetScrollY() end

---Sets horizontal scroll position.
---@param val number
function ImGui.SetScrollX(val) end

---Sets vertical scroll position.
---@param val number
function ImGui.SetScrollY(val) end

---Returns maximum possible horizontal scroll position.
---@return number
function ImGui.GetScrollMaxX() end

---Returns maximum possible vertical scroll position.
---@return number
function ImGui.GetScrollMaxY() end

---Adjusts horizontal scroll to center or reveal current item.
---@param val? number [default: 0.5f]
function ImGui.SetScrollHereX(val) end

---Adjusts vertical scroll to center or reveal current item.
---@param val? number [default: 0.5f]
function ImGui.SetScrollHereY(val) end

---Dear ImGui SetScrollFromPosX function.
---@param local_pos number
---@param center_ratio? number [default: 0.5f]
function ImGui.SetScrollFromPosX(local_pos, center_ratio) end

---Dear ImGui SetScrollFromPosY function.
---@param local_pos number
---@param center_ratio? number [default: 0.5f]
function ImGui.SetScrollFromPosY(local_pos, center_ratio) end

---=============================================================================
--- [SECTION] Parameters Stacks (Shared & Styles)
---=============================================================================

---Pushes a style color override onto the stack.
---@param idx integer
---@param col integer|ImVec4
function ImGui.PushStyleColor(idx, col) end

---Pops one or more style color overrides from the stack.
---@param val? integer [default: 1]
function ImGui.PopStyleColor(val) end

---Pushes a style variable override (float or ImVec2) onto the stack.
---@param idx integer
---@param val number|ImVec2
function ImGui.PushStyleVar(idx, val) end

---Pushes a style variable X float override onto the stack.
---@param idx integer
---@param val_x number
function ImGui.PushStyleVarX(idx, val_x) end

---Pushes a style variable Y float override onto the stack.
---@param idx integer
---@param val_y number
function ImGui.PushStyleVarY(idx, val_y) end

---Pops one or more style variable overrides from the stack.
---@param val? integer [default: 1]
function ImGui.PopStyleVar(val) end

---Dear ImGui PushItemFlag function.
---@param option integer
---@param enabled boolean
function ImGui.PushItemFlag(option, enabled) end

---Dear ImGui PopItemFlag function.
function ImGui.PopItemFlag() end

---Sets width of subsequent items (inputs, sliders, combos).
---@param val number
function ImGui.PushItemWidth(val) end

---Restores previous item width.
function ImGui.PopItemWidth() end

---Sets width of the very next item only.
---@param val number
function ImGui.SetNextItemWidth(val) end

---Calculates the effective item width that would be used.
---@return number
function ImGui.CalcItemWidth() end

---Dear ImGui PushTextWrapPos function.
---@param val? number [default: 0.0f]
function ImGui.PushTextWrapPos(val) end

---Dear ImGui PopTextWrapPos function.
function ImGui.PopTextWrapPos() end

---=============================================================================
--- [SECTION] Cursor / Layout
---=============================================================================

---Draws a horizontal line separator.
function ImGui.Separator() end

---Places subsequent item on the same line as previous item.
---@param offset_from_start_x? number [default: 0.0f]
---@param spacing? number [default: -1.0f]
function ImGui.SameLine(offset_from_start_x, spacing) end

---Advances cursor down to start a new line.
function ImGui.NewLine() end

---Inserts vertical space between items.
function ImGui.Spacing() end

---Reserves an invisible empty rectangular layout space.
---@param val ImVec2
function ImGui.Dummy(val) end

---Indents subsequent items to the right.
---@param val? number [default: 0.0f]
function ImGui.Indent(val) end

---Unindents subsequent items back to the left.
---@param val? number [default: 0.0f]
function ImGui.Unindent(val) end

---Locks horizontal cursor position to group multiple items together as one unit.
function ImGui.BeginGroup() end

---Closes the group and treats all encapsulated items as a single bounding box.
function ImGui.EndGroup() end

---Returns current layout cursor position relative to window top-left.
---@return ImVec2
function ImGui.GetCursorPos() end

---Dear ImGui GetCursorPosX function.
---@return number
function ImGui.GetCursorPosX() end

---Dear ImGui GetCursorPosY function.
---@return number
function ImGui.GetCursorPosY() end

---Sets layout cursor position relative to window top-left.
---@param val ImVec2
function ImGui.SetCursorPos(val) end

---Dear ImGui SetCursorPosX function.
---@param val number
function ImGui.SetCursorPosX(val) end

---Dear ImGui SetCursorPosY function.
---@param val number
function ImGui.SetCursorPosY(val) end

---Dear ImGui GetCursorStartPos function.
---@return ImVec2
function ImGui.GetCursorStartPos() end

---Returns layout cursor position in absolute screen coordinates.
---@return ImVec2
function ImGui.GetCursorScreenPos() end

---Sets layout cursor position in absolute screen coordinates.
---@param val ImVec2
function ImGui.SetCursorScreenPos(val) end

---Dear ImGui AlignTextToFramePadding function.
function ImGui.AlignTextToFramePadding() end

---Returns default line height of current font.
---@return number
function ImGui.GetTextLineHeight() end

---Returns font line height plus vertical item spacing.
---@return number
function ImGui.GetTextLineHeightWithSpacing() end

---Returns standard widget frame height (button, input, slider).
---@return number
function ImGui.GetFrameHeight() end

---Returns widget frame height plus vertical item spacing.
---@return number
function ImGui.GetFrameHeightWithSpacing() end

---=============================================================================
--- [SECTION] ID Stack
---=============================================================================

---Pushes an identifier (string or integer) to avoid ID collisions.
---@param str_id_or_int_id string|integer
function ImGui.PushID(str_id_or_int_id) end

---Pops an identifier from the ID stack.
function ImGui.PopID() end

---Generates a 32-bit hash ID for a string or integer seed.
---@param str_id_or_int_id string|integer
---@return integer im_id
function ImGui.GetID(str_id_or_int_id) end

---=============================================================================
--- [SECTION] Widgets: Text
---=============================================================================

---Dear ImGui TextUnformatted function.
---@param text string
---@param text_end? string [default: NULL]
function ImGui.TextUnformatted(text, text_end) end

---Renders formatted text.
---@param fmt string
function ImGui.Text(fmt) end

---Renders text with a custom RGBA color override.
---@param col ImVec4
---@param fmt string
function ImGui.TextColored(col, fmt) end

---Renders dimmed text using disabled styling color.
---@param fmt string
function ImGui.TextDisabled(fmt) end

---Renders text wrapped automatically to window width.
---@param fmt string
function ImGui.TextWrapped(fmt) end

---Renders formatted text prefixed by a label on the right.
---@param label string
---@param fmt string
function ImGui.LabelText(label, fmt) end

---Renders text preceded by a bullet circle dot.
---@param text string
function ImGui.BulletText(text) end

---Renders text centered inside a horizontal separator line.
---@param str string
function ImGui.SeparatorText(str) end

---Dear ImGui TextLink function.
---@param label string
---@return boolean ret
function ImGui.TextLink(label) end

---Dear ImGui TextLinkOpenURL function.
---@param label string
---@param url? string [default: NULL]
---@return boolean ret
function ImGui.TextLinkOpenURL(label, url) end

---=============================================================================
--- [SECTION] Widgets: Main
---=============================================================================

---Renders a clickable button widget.
---@param label string
---@param size? ImVec2 [default: ImVec2(0, 0)]
---@return boolean ret
function ImGui.Button(label, size) end

---Renders a compact button with zero frame padding.
---@param label string
---@return boolean ret
function ImGui.SmallButton(label) end

---Renders an invisible clickable region (ideal for custom interactions).
---@param str_id string
---@param size ImVec2
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.InvisibleButton(str_id, size, flags) end

---Renders an arrow directional button.
---@param str_id string
---@param dir integer
---@return boolean ret
function ImGui.ArrowButton(str_id, dir) end

---Renders a toggleable checkbox with boolean state.
---@param label string
---@param v boolean
---@return boolean ret
---@return boolean p_bool_val
function ImGui.Checkbox(label, v) end

---Renders a checkbox modifying a bitwise integer flag mask.
---@param label string
---@param flags integer
---@param flags_value integer
---@return boolean ret
---@return integer p_int_val
function ImGui.CheckboxFlags(label, flags, flags_value) end

---Renders a radio button.
---@param label string
---@param active_or_v boolean|integer
---@param v_button? integer [default: nil]
---@return boolean pressed
---@return integer? new_v [if passing integer state]
function ImGui.RadioButton(label, active_or_v, v_button) end

---Renders a progress bar (0.0 to 1.0) with optional overlay text.
---@param fraction number
---@param size_arg? ImVec2 [default: ImVec2(-FLT_MIN, 0)]
---@param overlay? string [default: NULL]
function ImGui.ProgressBar(fraction, size_arg, overlay) end

---Draws a small bullet dot.
function ImGui.Bullet() end

---=============================================================================
--- [SECTION] Widgets: Combo Box (Dropdown)
---=============================================================================

---Opens a custom dropdown combo popup.
---@param label string
---@param preview_value string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.BeginCombo(label, preview_value, flags) end

---Closes a custom combo popup.
function ImGui.EndCombo() end

---Standard dropdown selection combo widget.
---Supports both a Lua array of strings { "Opt1", "Opt2" } or a \0 null-delimited string.
---@param label string Widget label
---@param current_item integer Zero-based active item index
---@param items string[]|string Array of strings or null-delimited string
---@param popup_max_height_in_items? integer [default: -1]
---@return boolean changed True if user changed the selected index
---@return integer new_item The updated selected index (0-based)
function ImGui.Combo(label, current_item, items, popup_max_height_in_items) end

---=============================================================================
--- [SECTION] Widgets: Drag Sliders
---=============================================================================

---Renders a click-and-drag number adjustment field for floats.
---@param label string
---@param v number
---@param v_speed? number [default: 1.0f]
---@param v_min? number [default: 0.0f]
---@param v_max? number [default: 0.0f]
---@param format? string [default: "%.3f"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
function ImGui.DragFloat(label, v, v_speed, v_min, v_max, format, flags) end

---Dear ImGui DragFloatRange2 function.
---@param label string
---@param v_current_min number
---@param v_current_max number
---@param v_speed? number [default: 1.0f]
---@param v_min? number [default: 0.0f]
---@param v_max? number [default: 0.0f]
---@param format? string [default: "%.3f"]
---@param format_max? string [default: NULL]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
---@return number p_float_val
function ImGui.DragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags) end

---Renders a click-and-drag number adjustment field for integers.
---@param label string
---@param v integer
---@param v_speed? number [default: 1.0f]
---@param v_min? integer [default: 0]
---@param v_max? integer [default: 0]
---@param format? string [default: "%d"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return integer p_int_val
function ImGui.DragInt(label, v, v_speed, v_min, v_max, format, flags) end

---Dear ImGui DragIntRange2 function.
---@param label string
---@param v_current_min integer
---@param v_current_max integer
---@param v_speed? number [default: 1.0f]
---@param v_min? integer [default: 0]
---@param v_max? integer [default: 0]
---@param format? string [default: "%d"]
---@param format_max? string [default: NULL]
---@param flags? integer [default: 0]
---@return boolean ret
---@return integer p_int_val
---@return integer p_int_val
function ImGui.DragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags) end

---=============================================================================
--- [SECTION] Widgets: Regular Sliders
---=============================================================================

---Renders a draggable slider for float numbers.
---@param label string
---@param v number
---@param v_min number
---@param v_max number
---@param format? string [default: "%.3f"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
function ImGui.SliderFloat(label, v, v_min, v_max, format, flags) end

---Renders a slider that displays and converts degrees to radians.
---@param label string
---@param v_rad number
---@param v_degrees_min? number [default: -360.0f]
---@param v_degrees_max? number [default: +360.0f]
---@param format? string [default: "%.0f deg"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
function ImGui.SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags) end

---Renders a draggable slider for integers.
---@param label string
---@param v integer
---@param v_min integer
---@param v_max integer
---@param format? string [default: "%d"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return integer p_int_val
function ImGui.SliderInt(label, v, v_min, v_max, format, flags) end

---Renders a vertical slider for float numbers.
---@param label string
---@param size ImVec2
---@param v number
---@param v_min number
---@param v_max number
---@param format? string [default: "%.3f"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
function ImGui.VSliderFloat(label, size, v, v_min, v_max, format, flags) end

---Renders a vertical slider for integers.
---@param label string
---@param size ImVec2
---@param v integer
---@param v_min integer
---@param v_max integer
---@param format? string [default: "%d"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return integer p_int_val
function ImGui.VSliderInt(label, size, v, v_min, v_max, format, flags) end

---=============================================================================
--- [SECTION] Widgets: Input with Keyboard
---=============================================================================

---Single-line keyboard string input box.
---@param label string Widget label
---@param text string Current string value
---@param flags? integer InputText flags (ImGui.InputTextFlags) [default: 0]
---@return boolean changed True if string text was edited by user
---@return string new_text The updated string content
function ImGui.InputText(label, text, flags) end

---Multi-line keyboard string input box.
---@param label string Widget label
---@param text string Current string value
---@param size? ImVec2 Dimensions [default: (0, 0)]
---@param flags? integer InputText flags (ImGui.InputTextFlags) [default: 0]
---@return boolean changed True if string text was edited by user
---@return string new_text The updated string content
function ImGui.InputTextMultiline(label, text, size, flags) end

---Single-line keyboard string input with placeholder hint text.
---@param label string Widget label
---@param hint string Placeholder ghost text shown when empty
---@param text string Current string value
---@param flags? integer InputText flags (ImGui.InputTextFlags) [default: 0]
---@return boolean changed True if string text was edited by user
---@return string new_text The updated string content
function ImGui.InputTextWithHint(label, hint, text, flags) end

---Direct keyboard input box for float numbers.
---@param label string
---@param v number
---@param step? number [default: 0.0f]
---@param step_fast? number [default: 0.0f]
---@param format? string [default: "%.3f"]
---@param flags? integer [default: 0]
---@return boolean ret
---@return number p_float_val
function ImGui.InputFloat(label, v, step, step_fast, format, flags) end

---Direct keyboard input box for integers with step buttons.
---@param label string
---@param v integer
---@param step? integer [default: 1]
---@param step_fast? integer [default: 100]
---@param flags? integer [default: 0]
---@return boolean ret
---@return integer p_int_val
function ImGui.InputInt(label, v, step, step_fast, flags) end

---Direct keyboard input box for high-precision double numbers.
---@param label string
---@param step? number [default: 0.0f]
---@param step_fast? number [default: 0.0f]
---@param format? string [default: "%.6f"]
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.InputDouble(label, step, step_fast, format, flags) end

---=============================================================================
--- [SECTION] Widgets: Color Editor / Picker
---=============================================================================

---RGB color edit widget with color square and pickers.
---@param label string
---@param col ImVec4
---@param flags? integer [default: 0]
---@return boolean ret
---@return ImVec4 ret_vec4
function ImGui.ColorEdit3(label, col, flags) end

---RGBA color edit widget with alpha channel slider.
---@param label string
---@param col ImVec4
---@param flags? integer [default: 0]
---@return boolean ret
---@return ImVec4 ret_vec4
function ImGui.ColorEdit4(label, col, flags) end

---Expanded RGB circular/square color picker.
---@param label string
---@param col ImVec4
---@param flags? integer [default: 0]
---@return boolean ret
---@return ImVec4 ret_vec4
function ImGui.ColorPicker3(label, col, flags) end

---Expanded RGBA circular/square color picker with alpha.
---@param label string
---@param col ImVec4
---@param flags? integer [default: 0]
---@return boolean ret
---@return ImVec4 ret_vec4
function ImGui.ColorPicker4(label, col, flags) end

---Renders a clickable colored swatch square.
---@param desc_id string
---@param col ImVec4
---@param flags? integer [default: 0]
---@param size? ImVec2 [default: ImVec2(0, 0)]
---@return boolean ret
function ImGui.ColorButton(desc_id, col, flags, size) end

---Configures color editor display format options.
---@param val integer
function ImGui.SetColorEditOptions(val) end

---=============================================================================
--- [SECTION] Widgets: Trees
---=============================================================================

---Renders a collapsible tree node hierarchy item.
---@param label string
---@return boolean ret
function ImGui.TreeNode(label) end

---Renders a collapsible tree node with extended flags.
---@param label string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.TreeNodeEx(label, flags) end

---Manually pushes indent and ID for tree children.
---@param str string
function ImGui.TreePush(str) end

---Pops tree node indent and ID.
function ImGui.TreePop() end

---Dear ImGui GetTreeNodeToLabelSpacing function.
---@return number
function ImGui.GetTreeNodeToLabelSpacing() end

---Renders a full-width collapsible section banner header.
---@param label string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.CollapsingHeader(label, flags) end

---Pre-sets whether the next tree node or collapsing header is open.
---@param is_open boolean
---@param cond? integer [default: 0]
function ImGui.SetNextItemOpen(is_open, cond) end

---Dear ImGui TreeNodeGetOpen function.
---@param storage_id integer
---@return boolean ret
function ImGui.TreeNodeGetOpen(storage_id) end

---=============================================================================
--- [SECTION] Widgets: Selectables
---=============================================================================

---Renders a selectable row item (like a list item or table selection).
---@param label string
---@param p_selected? boolean [default: NULL]
---@param flags? integer [default: 0]
---@param size? ImVec2 [default: ImVec2(0, 0)]
---@return boolean selected
---@return boolean new_p_selected [if pointer provided]
function ImGui.Selectable(label, p_selected, flags, size) end

---=============================================================================
--- [SECTION] Widgets: List Boxes
---=============================================================================

---Begins a scrolling list box container.
---@param label string
---@param size? ImVec2 [default: ImVec2(0, 0)]
---@return boolean ret
function ImGui.BeginListBox(label, size) end

---Ends a scrolling list box container.
function ImGui.EndListBox() end

---=============================================================================
--- [SECTION] Widgets: Value() Helpers
---=============================================================================

---Helper to render label and value in standard format.
---@param prefix string
---@param val boolean|integer|number
---@param float_format? string [default: nil]
function ImGui.Value(prefix, val, float_format) end

---=============================================================================
--- [SECTION] Widgets: Menus
---=============================================================================

---Begins a window-level menu bar.
---@return boolean ret
function ImGui.BeginMenuBar() end

---Ends a window-level menu bar.
function ImGui.EndMenuBar() end

---Begins the top application-level main menu bar.
---@return boolean ret
function ImGui.BeginMainMenuBar() end

---Ends the top application-level main menu bar.
function ImGui.EndMainMenuBar() end

---Opens a menu category dropdown (e.g. 'File', 'Edit').
---@param label string
---@param enable? boolean [default: true]
---@return boolean ret
function ImGui.BeginMenu(label, enable) end

---Closes an opened menu category dropdown.
function ImGui.EndMenu() end

---Renders a clickable menu action entry with optional keyboard shortcut.
---@param label string
---@param shortcut? string [default: NULL]
---@param p_selected? boolean [default: NULL]
---@param enabled? boolean [default: true]
---@return boolean activated
---@return boolean new_p_selected [if pointer provided]
function ImGui.MenuItem(label, shortcut, p_selected, enabled) end

---=============================================================================
--- [SECTION] Tooltips
---=============================================================================

---Begins a custom hovering tooltip window.
---@return boolean ret
function ImGui.BeginTooltip() end

---Begins a tooltip window shown only when the previous item is hovered.
---@return boolean ret
function ImGui.BeginItemTooltip() end

---Ends the active tooltip window.
function ImGui.EndTooltip() end

---Sets a simple text tooltip on the hovered item.
---@param text string
function ImGui.SetTooltip(text) end

---Sets a simple text tooltip attached to the previous item.
---@param text string
function ImGui.SetItemTooltip(text) end

---=============================================================================
--- [SECTION] Popups, Modals
---=============================================================================

---Begins a modal or dropdown popup.
---@param str_id string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.BeginPopup(str_id, flags) end

---Begins a blocking modal dialog with title and background tint.
---@param name string
---@param p_open? boolean [default: NULL]
---@param flags? integer [default: 0]
---@return boolean ret
---@return boolean p_bool_val
function ImGui.BeginPopupModal(name, p_open, flags) end

---Ends the active popup dialog.
function ImGui.EndPopup() end

---Triggers a popup to open by its str_id.
---@param str_id string
---@param popup_flags? integer [default: 0]
function ImGui.OpenPopup(str_id, popup_flags) end

---Dear ImGui OpenPopupOnItemClick function.
---@param str_id? string [default: NULL]
---@param popup_flags? integer [default: 1]
function ImGui.OpenPopupOnItemClick(str_id, popup_flags) end

---Closes the popup currently active.
function ImGui.CloseCurrentPopup() end

---Opens a context menu popup when right-clicking the previous item.
---@param str_id? string [default: NULL]
---@param popup_flags? integer [default: 1]
---@return boolean ret
function ImGui.BeginPopupContextItem(str_id, popup_flags) end

---Opens a context menu popup when right-clicking the window background.
---@param str_id? string [default: NULL]
---@param popup_flags? integer [default: 1]
---@return boolean ret
function ImGui.BeginPopupContextWindow(str_id, popup_flags) end

---Opens a context menu popup when right-clicking empty void space.
---@param str_id? string [default: NULL]
---@param popup_flags? integer [default: 1]
---@return boolean ret
function ImGui.BeginPopupContextVoid(str_id, popup_flags) end

---Checks whether a popup with given ID is currently open.
---@param str_id string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.IsPopupOpen(str_id, flags) end

---=============================================================================
--- [SECTION] Tables
---=============================================================================

---Begins an advanced multi-column table with borders and sorting.
---@param str_id string
---@param column integer
---@param flags? integer [default: 0]
---@param outer_size? ImVec2 [default: ImVec2(0, 0)]
---@param inner_width? number [default: 0.0f]
---@return boolean ret
function ImGui.BeginTable(str_id, column, flags, outer_size, inner_width) end

---Ends the active table.
function ImGui.EndTable() end

---Advances to the next row in the table.
---@param row_flags? integer [default: 0]
---@param min_row_height? number [default: 0.0f]
function ImGui.TableNextRow(row_flags, min_row_height) end

---Advances to the next column cell in the current row.
---@return boolean
function ImGui.TableNextColumn() end

---Jumps directly to a specific column index.
---@param val integer
---@return boolean
function ImGui.TableSetColumnIndex(val) end

---Configures table column title, flags, and sizing weight.
---@param label string
---@param flags? integer [default: 0]
---@param init_width_or_weight? number [default: 0.0f]
---@param user_id? integer [default: 0]
function ImGui.TableSetupColumn(label, flags, init_width_or_weight, user_id) end

---Freezes leading rows and columns so they remain pinned during scrolling.
---@param cols integer
---@param rows integer
function ImGui.TableSetupScrollFreeze(cols, rows) end

---Renders header cell content for a column.
---@param str string
function ImGui.TableHeader(str) end

---Submits a full row of column headers using names set in TableSetupColumn.
function ImGui.TableHeadersRow() end

---Submits angled column headers (ideal for compact tables).
function ImGui.TableAngledHeadersRow() end

---Returns the number of columns in the current table.
---@return integer
function ImGui.TableGetColumnCount() end

---Returns the current column index.
---@return integer
function ImGui.TableGetColumnIndex() end

---Returns the current row index.
---@return integer
function ImGui.TableGetRowIndex() end

---Dear ImGui TableGetHoveredColumn function.
---@return integer
function ImGui.TableGetHoveredColumn() end

---Dear ImGui TableGetColumnName function.
---@param column_n? integer [default: -1]
---@return string ret
function ImGui.TableGetColumnName(column_n) end

---Dear ImGui TableGetColumnFlags function.
---@param column_n? integer [default: -1]
---@return ImGuiTableColumnFlags ret
function ImGui.TableGetColumnFlags(column_n) end

---Dear ImGui TableSetColumnEnabled function.
---@param column_n integer
---@param v boolean
function ImGui.TableSetColumnEnabled(column_n, v) end

---Sets the background color of a cell, row, or table.
---@param target integer
---@param color integer
---@param column_n? integer [default: -1]
function ImGui.TableSetBgColor(target, color, column_n) end

---=============================================================================
--- [SECTION] Legacy Columns
---=============================================================================

---Dear ImGui Columns function.
---@param count? integer [default: 1]
---@param id? string [default: NULL]
---@param border? boolean [default: true]
function ImGui.Columns(count, id, border) end

---Dear ImGui NextColumn function.
function ImGui.NextColumn() end

---Dear ImGui GetColumnIndex function.
---@return integer
function ImGui.GetColumnIndex() end

---Dear ImGui GetColumnWidth function.
---@param column_index? integer [default: -1]
---@return number
function ImGui.GetColumnWidth(column_index) end

---Dear ImGui SetColumnWidth function.
---@param column_index integer
---@param width number
function ImGui.SetColumnWidth(column_index, width) end

---Dear ImGui GetColumnOffset function.
---@param column_index? integer [default: -1]
---@return number
function ImGui.GetColumnOffset(column_index) end

---Dear ImGui SetColumnOffset function.
---@param column_index integer
---@param width number
function ImGui.SetColumnOffset(column_index, width) end

---Dear ImGui GetColumnsCount function.
---@return integer
function ImGui.GetColumnsCount() end

---=============================================================================
--- [SECTION] Tab Bars, Tabs
---=============================================================================

---Begins a tab bar container.
---@param str_id string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.BeginTabBar(str_id, flags) end

---Ends the active tab bar.
function ImGui.EndTabBar() end

---Begins an individual tab page.
---@param label string
---@param p_open? boolean [default: NULL]
---@param flags? integer [default: 0]
---@return boolean ret
---@return boolean p_bool_val
function ImGui.BeginTabItem(label, p_open, flags) end

---Ends an individual tab page.
function ImGui.EndTabItem() end

---Submits a button placed directly into the tab bar.
---@param label string
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.TabItemButton(label, flags) end

---Notifies a tab that it has been closed by its label.
---@param str string
function ImGui.SetTabItemClosed(str) end

---=============================================================================
--- [SECTION] Docking
---=============================================================================

---Creates an interactive docking space occupying the given rectangle.
---@param dockspace_id integer
---@param size? ImVec2 [default: ImVec2(0, 0)]
---@param flags? integer [default: 0]
---@return integer ret
function ImGui.DockSpace(dockspace_id, size, flags) end

---Creates a docking space over the entire viewport.
---@param dockspace_id? integer [default: 0]
---@param flags? integer [default: 0]
---@return integer ret
function ImGui.DockSpaceOverViewport(dockspace_id, flags) end

---=============================================================================
--- [SECTION] Logging / Capture
---=============================================================================

---Dear ImGui LogToTTY function.
---@param val? integer [default: -1]
function ImGui.LogToTTY(val) end

---Dear ImGui LogToFile function.
---@param auto_open_depth? integer [default: -1]
---@param filename? string [default: NULL]
function ImGui.LogToFile(auto_open_depth, filename) end

---Dear ImGui LogToClipboard function.
---@param val? integer [default: -1]
function ImGui.LogToClipboard(val) end

---Dear ImGui LogFinish function.
function ImGui.LogFinish() end

---Dear ImGui LogButtons function.
function ImGui.LogButtons() end

---Dear ImGui LogText function.
---@param str string
function ImGui.LogText(str) end

---=============================================================================
--- [SECTION] Drag and Drop
---=============================================================================

---Dear ImGui BeginDragDropSource function.
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.BeginDragDropSource(flags) end

---Dear ImGui EndDragDropSource function.
function ImGui.EndDragDropSource() end

---Dear ImGui BeginDragDropTarget function.
---@return boolean ret
function ImGui.BeginDragDropTarget() end

---Dear ImGui EndDragDropTarget function.
function ImGui.EndDragDropTarget() end

---=============================================================================
--- [SECTION] Disabling
---=============================================================================

---Disables interaction and dims appearance for all encapsulated items.
---@param disabled? boolean [default: true]
function ImGui.BeginDisabled(disabled) end

---Restores interaction and normal appearance after BeginDisabled().
function ImGui.EndDisabled() end

---=============================================================================
--- [SECTION] Clipping
---=============================================================================

---Dear ImGui PushClipRect function.
---@param clip_rect_min ImVec2
---@param clip_rect_max ImVec2
---@param intersect_with_current_clip_rect boolean
function ImGui.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect) end

---Dear ImGui PopClipRect function.
function ImGui.PopClipRect() end

---=============================================================================
--- [SECTION] Focus & Activation
---=============================================================================

---Dear ImGui SetItemDefaultFocus function.
function ImGui.SetItemDefaultFocus() end

---Dear ImGui SetKeyboardFocusHere function.
---@param val? integer [default: 0]
function ImGui.SetKeyboardFocusHere(val) end

---=============================================================================
--- [SECTION] Item / Widget Utilities (Status Querying)
---=============================================================================

---Checks if the previous item was hovered by the mouse.
---@param flags? integer [default: 0]
---@return boolean ret
function ImGui.IsItemHovered(flags) end

---Checks if the previous item is currently held down or active.
---@return boolean
function ImGui.IsItemActive() end

---Checks if the previous item has keyboard/nav focus.
---@return boolean
function ImGui.IsItemFocused() end

---Checks if the previous item was clicked with mouse button.
---@param mouse_button? integer [default: 0]
---@return boolean ret
function ImGui.IsItemClicked(mouse_button) end

---Checks if the previous item is visible inside the current window clip bounds.
---@return boolean
function ImGui.IsItemVisible() end

---Checks if the previous item was just edited by user input this frame.
---@return boolean
function ImGui.IsItemEdited() end

---Checks if the previous item just became active this frame.
---@return boolean
function ImGui.IsItemActivated() end

---Checks if the previous item just released activity this frame.
---@return boolean
function ImGui.IsItemDeactivated() end

---Checks if the previous item was edited and then released.
---@return boolean
function ImGui.IsItemDeactivatedAfterEdit() end

---Dear ImGui IsItemToggledOpen function.
---@return boolean
function ImGui.IsItemToggledOpen() end

---Checks if any item is currently hovered.
---@return boolean
function ImGui.IsAnyItemHovered() end

---Checks if any item is currently active.
---@return boolean
function ImGui.IsAnyItemActive() end

---Checks if any item is currently focused.
---@return boolean
function ImGui.IsAnyItemFocused() end

---Returns the unique 32-bit ID of the previous item.
---@return integer
function ImGui.GetItemID() end

---Returns the top-left coordinate of the previous item bounding box.
---@return ImVec2
function ImGui.GetItemRectMin() end

---Returns the bottom-right coordinate of the previous item bounding box.
---@return ImVec2
function ImGui.GetItemRectMax() end

---Returns the dimensions (width, height) of the previous item bounding box.
---@return ImVec2
function ImGui.GetItemRectSize() end

---Allows the next item to overlap with previous items.
function ImGui.SetNextItemAllowOverlap() end

---=============================================================================
--- [SECTION] Miscellaneous Utilities
---=============================================================================

---Tests if a bounding box or size is visible in current clipping viewport.
---@param p1_or_size ImVec2
---@param p2? ImVec2 [default: nil]
---@return boolean is_visible
function ImGui.IsRectVisible(p1_or_size, p2) end

---Returns total elapsed time in seconds.
---@return number
function ImGui.GetTime() end

---Returns total rendered frame count.
---@return integer
function ImGui.GetFrameCount() end

---Returns the RGBA ImVec4 color vector of a style color index.
---@param idx integer
---@return ImVec4 ret
function ImGui.GetStyleColorVec4(idx) end

---Returns current font size in pixels.
---@return number
function ImGui.GetFontSize() end

---Dear ImGui GetFontTexUvWhitePixel function.
---@return ImVec2
function ImGui.GetFontTexUvWhitePixel() end

---=============================================================================
--- [SECTION] Color Utilities
---=============================================================================

---Converts 32-bit packed color integer to an ImVec4 RGBA (0..1).
---@param in integer
---@return ImVec4 ret
function ImGui.ColorConvertU32ToFloat4(in) end

---Converts ImVec4 RGBA (0..1) to a 32-bit packed color integer.
---@param in ImVec4
---@return integer ret
function ImGui.ColorConvertFloat4ToU32(in) end

---Converts RGB (0..1) channels into HSV (0..1) values.
---@param r number
---@param g number
---@param b number
---@return number out_h
---@return number out_s
---@return number out_v
function ImGui.ColorConvertRGBtoHSV(r, g, b) end

---Converts HSV (0..1) channels into RGB (0..1) values.
---@param h number
---@param s number
---@param v number
---@return number out_r
---@return number out_g
---@return number out_b
function ImGui.ColorConvertHSVtoRGB(h, s, v) end

---=============================================================================
--- [SECTION] Inputs Utilities: Keyboard, Mouse, Shortcuts
---=============================================================================

---Checks if a key (ImGui.Key) is currently held down.
---@param key integer
---@return boolean ret
function ImGui.IsKeyDown(key) end

---Checks if a key (ImGui.Key) was newly pressed this frame.
---@param key integer
---@param repeat? boolean [default: true]
---@return boolean ret
function ImGui.IsKeyPressed(key, repeat) end

---Checks if a key (ImGui.Key) was released this frame.
---@param key integer
---@return boolean ret
function ImGui.IsKeyReleased(key) end

---Checks if a key chord (key OR-ed with modifiers) was pressed.
---@param key_chord integer
---@return boolean ret
function ImGui.IsKeyChordPressed(key_chord) end

---Returns how many repeat press events were generated by a key.
---@param key integer
---@param repeat_delay number
---@param rate number
---@return integer ret
function ImGui.GetKeyPressedAmount(key, repeat_delay, rate) end

---Returns human-readable name of an ImGui key.
---@param key integer
---@return string ret
function ImGui.GetKeyName(key) end

---Checks if a mouse button (0=Left, 1=Right, 2=Middle) is held down.
---@param button integer
---@return boolean ret
function ImGui.IsMouseDown(button) end

---Checks if a mouse button was clicked this frame.
---@param button integer
---@param repeat? boolean [default: false]
---@return boolean ret
function ImGui.IsMouseClicked(button, repeat) end

---Checks if a mouse button was released this frame.
---@param button integer
---@return boolean ret
function ImGui.IsMouseReleased(button) end

---Checks if a mouse button was double clicked this frame.
---@param button integer
---@return boolean ret
function ImGui.IsMouseDoubleClicked(button) end

---Returns mouse click repeat count.
---@param button integer
---@return integer ret
function ImGui.GetMouseClickedCount(button) end

---Checks if mouse cursor is inside a 2D bounding rectangle.
---@param r_min ImVec2
---@param r_max ImVec2
---@param clip? boolean [default: true]
---@return boolean ret
function ImGui.IsMouseHoveringRect(r_min, r_max, clip) end

---Checks if mouse is currently being dragged while button is down.
---@param button integer
---@param lock_threshold? number [default: -1.0f]
---@return boolean ret
function ImGui.IsMouseDragging(button, lock_threshold) end

---Returns current mouse cursor position in screen space.
---@return ImVec2
function ImGui.GetMousePos() end

---Dear ImGui GetMousePosOnOpeningCurrentPopup function.
---@return ImVec2
function ImGui.GetMousePosOnOpeningCurrentPopup() end

---Returns mouse drag displacement vector since drag started.
---@param button? integer [default: 0]
---@param lock_threshold? number [default: -1.0f]
---@return ImVec2 ret
function ImGui.GetMouseDragDelta(button, lock_threshold) end

---Resets mouse drag delta counter to (0, 0).
---@param val? integer [default: 0]
function ImGui.ResetMouseDragDelta(val) end

---Returns the current active mouse cursor shape enum.
---@return integer
function ImGui.GetMouseCursor() end

---Overrides the active mouse cursor shape enum.
---@param val integer
function ImGui.SetMouseCursor(val) end

---Dear ImGui SetNextItemShortcut function.
---@param key_chord integer
---@param flags? integer [default: 0]
function ImGui.SetNextItemShortcut(key_chord, flags) end

---Dear ImGui SetItemKeyOwner function.
---@param key integer
function ImGui.SetItemKeyOwner(key) end

---Dear ImGui SetNextFrameWantCaptureKeyboard function.
---@param val boolean
function ImGui.SetNextFrameWantCaptureKeyboard(val) end

---Dear ImGui SetNextFrameWantCaptureMouse function.
---@param val boolean
function ImGui.SetNextFrameWantCaptureMouse(val) end

---=============================================================================
--- [SECTION] Clipboard Utilities
---=============================================================================

---Dear ImGui GetClipboardText function.
---@return string ret
function ImGui.GetClipboardText() end

---Dear ImGui SetClipboardText function.
---@param str string
function ImGui.SetClipboardText(str) end

---=============================================================================
--- [SECTION] Debug Utilities
---=============================================================================

---Dear ImGui DebugTextEncoding function.
---@param str string
function ImGui.DebugTextEncoding(str) end

---Dear ImGui DebugFlashStyleColor function.
---@param val integer
function ImGui.DebugFlashStyleColor(val) end

---Dear ImGui DebugStartItemPicker function.
function ImGui.DebugStartItemPicker() end

---=============================================================================
--- SECTION: Enums & Flags Tables
--- All Dear ImGui 1.92.8 enumeration constants
---=============================================================================

---@class ImGui_Col
---@field Text integer
---@field TextDisabled integer
---@field WindowBg integer
---@field ChildBg integer
---@field PopupBg integer
---@field Border integer
---@field BorderShadow integer
---@field FrameBg integer
---@field FrameBgHovered integer
---@field FrameBgActive integer
---@field TitleBg integer
---@field TitleBgActive integer
---@field TitleBgCollapsed integer
---@field MenuBarBg integer
---@field ScrollbarBg integer
---@field ScrollbarGrab integer
---@field ScrollbarGrabHovered integer
---@field ScrollbarGrabActive integer
---@field CheckMark integer
---@field SliderGrab integer
---@field SliderGrabActive integer
---@field Button integer
---@field ButtonHovered integer
---@field ButtonActive integer
---@field Header integer
---@field HeaderHovered integer
---@field HeaderActive integer
---@field Separator integer
---@field SeparatorHovered integer
---@field SeparatorActive integer
---@field ResizeGrip integer
---@field ResizeGripHovered integer
---@field ResizeGripActive integer
---@field Tab integer
---@field TabHovered integer
---@field TabActive integer
---@field TabUnfocused integer
---@field TabUnfocusedActive integer
---@field PlotLines integer
---@field PlotLinesHovered integer
---@field PlotHistogram integer
---@field PlotHistogramHovered integer
---@field TableHeaderBg integer
---@field TableBorderStrong integer
---@field TableBorderLight integer
---@field TableRowBg integer
---@field TableRowBgAlt integer
---@field TextSelectedBg integer
---@field DragDropTarget integer
---@field NavHighlight integer
---@field NavWindowingHighlight integer
---@field NavWindowingDimBg integer
---@field ModalWindowDimBg integer
---@field COUNT integer
ImGui.Col = {}

---@class ImGui_Cond
---@field None integer
---@field Always integer
---@field Once integer
---@field FirstUseEver integer
---@field Appearing integer
ImGui.Cond = {}

---@class ImGui_DataType
---@field S8 integer
---@field U8 integer
---@field S16 integer
---@field U16 integer
---@field S32 integer
---@field U32 integer
---@field S64 integer
---@field U64 integer
---@field Float integer
---@field Double integer
---@field COUNT integer
ImGui.DataType = {}

---@class ImGui_Dir
---@field None integer
---@field Left integer
---@field Right integer
---@field Up integer
---@field Down integer
---@field COUNT integer
ImGui.Dir = {}

---@class ImGui_MouseButton
---@field Left integer
---@field Right integer
---@field Middle integer
---@field COUNT integer
ImGui.MouseButton = {}

---@class ImGui_MouseCursor
---@field None integer
---@field Arrow integer
---@field TextInput integer
---@field ResizeAll integer
---@field ResizeNS integer
---@field ResizeEW integer
---@field ResizeNESW integer
---@field ResizeNWSE integer
---@field Hand integer
---@field NotAllowed integer
---@field COUNT integer
ImGui.MouseCursor = {}

---@class ImGui_SortDirection
---@field None integer
---@field Ascending integer
---@field Descending integer
ImGui.SortDirection = {}

---@class ImGui_StyleVar
---@field Alpha integer
---@field DisabledAlpha integer
---@field WindowPadding integer
---@field WindowRounding integer
---@field WindowBorderSize integer
---@field WindowMinSize integer
---@field WindowTitleAlign integer
---@field ChildRounding integer
---@field ChildBorderSize integer
---@field PopupRounding integer
---@field PopupBorderSize integer
---@field FramePadding integer
---@field FrameRounding integer
---@field FrameBorderSize integer
---@field ItemSpacing integer
---@field ItemInnerSpacing integer
---@field IndentSpacing integer
---@field CellPadding integer
---@field ScrollbarSize integer
---@field ScrollbarRounding integer
---@field GrabMinSize integer
---@field GrabRounding integer
---@field TabRounding integer
---@field ButtonTextAlign integer
---@field SelectableTextAlign integer
---@field SeparatorTextBorderSize integer
---@field SeparatorTextAlign integer
---@field SeparatorTextPadding integer
---@field COUNT integer
ImGui.StyleVar = {}

---@class ImGui_TableBgTarget
---@field None integer
---@field RowBg0 integer
---@field RowBg1 integer
---@field CellBg integer
ImGui.TableBgTarget = {}

---@class ImGui_DrawFlags
---@field None integer
---@field Closed integer
---@field RoundCornersTopLeft integer
---@field RoundCornersTopRight integer
---@field RoundCornersBottomLeft integer
---@field RoundCornersBottomRight integer
---@field RoundCornersNone integer
---@field RoundCornersTop integer
---@field RoundCornersBottom integer
---@field RoundCornersLeft integer
---@field RoundCornersRight integer
---@field RoundCornersAll integer
---@field RoundCornersDefault_ integer
---@field RoundCornersMask_ integer
ImGui.DrawFlags = {}

---@class ImGui_DrawListFlags
---@field None integer
---@field AntiAliasedLines integer
---@field AntiAliasedLinesUseTex integer
---@field AntiAliasedFill integer
---@field AllowVtxOffset integer
ImGui.DrawListFlags = {}

---@class ImGui_InputTextFlags
---@field None integer
---@field CharsDecimal integer
---@field CharsHexadecimal integer
---@field CharsUppercase integer
---@field CharsNoBlank integer
---@field AutoSelectAll integer
---@field EnterReturnsTrue integer
---@field CallbackCompletion integer
---@field CallbackHistory integer
---@field CallbackAlways integer
---@field CallbackCharFilter integer
---@field AllowTabInput integer
---@field CtrlEnterForNewLine integer
---@field NoHorizontalScroll integer
---@field AlwaysOverwrite integer
---@field ReadOnly integer
---@field Password integer
---@field NoUndoRedo integer
---@field CharsScientific integer
---@field CallbackResize integer
---@field CallbackEdit integer
---@field EscapeClearsAll integer
ImGui.InputTextFlags = {}

---@class ImGui_WindowFlags
---@field None integer
---@field NoTitleBar integer
---@field NoResize integer
---@field NoMove integer
---@field NoScrollbar integer
---@field NoScrollWithMouse integer
---@field NoCollapse integer
---@field AlwaysAutoResize integer
---@field NoBackground integer
---@field NoSavedSettings integer
---@field NoMouseInputs integer
---@field MenuBar integer
---@field HorizontalScrollbar integer
---@field NoFocusOnAppearing integer
---@field NoBringToFrontOnFocus integer
---@field AlwaysVerticalScrollbar integer
---@field AlwaysHorizontalScrollbar integer
---@field NoNavInputs integer
---@field NoNavFocus integer
---@field UnsavedDocument integer
---@field NoNav integer
---@field NoDecoration integer
---@field NoInputs integer
---@field ChildWindow integer
---@field Tooltip integer
---@field Popup integer
---@field Modal integer
---@field ChildMenu integer
ImGui.WindowFlags = {}

---@class ImGui_ChildFlags
---@field None integer
---@field Borders integer
---@field AlwaysUseWindowPadding integer
---@field ResizeX integer
---@field ResizeY integer
---@field AutoResizeX integer
---@field AutoResizeY integer
---@field AlwaysAutoResize integer
---@field FrameStyle integer
ImGui.ChildFlags = {}

---@class ImGui_ColorEditFlags
---@field None integer
---@field NoAlpha integer
---@field NoPicker integer
---@field NoOptions integer
---@field NoSmallPreview integer
---@field NoInputs integer
---@field NoTooltip integer
---@field NoLabel integer
---@field NoSidePreview integer
---@field NoDragDrop integer
---@field NoBorder integer
---@field AlphaBar integer
---@field AlphaPreview integer
---@field AlphaPreviewHalf integer
---@field HDR integer
---@field DisplayRGB integer
---@field DisplayHSV integer
---@field DisplayHex integer
---@field Uint8 integer
---@field Float integer
---@field PickerHueBar integer
---@field PickerHueWheel integer
---@field InputRGB integer
---@field InputHSV integer
---@field DefaultOptions_ integer
ImGui.ColorEditFlags = {}

---@class ImGui_ComboFlags
---@field None integer
---@field PopupAlignLeft integer
---@field HeightSmall integer
---@field HeightRegular integer
---@field HeightLarge integer
---@field HeightLargest integer
---@field NoArrowButton integer
---@field NoPreview integer
---@field WidthFitPreview integer
ImGui.ComboFlags = {}

---@class ImGui_SelectableFlags
---@field None integer
---@field DontClosePopups integer
---@field SpanAllColumns integer
---@field AllowDoubleClick integer
---@field Disabled integer
---@field AllowOverlap integer
---@field Highlight integer
ImGui.SelectableFlags = {}

---@class ImGui_SliderFlags
---@field None integer
---@field AlwaysClamp integer
---@field Logarithmic integer
---@field NoRoundToFormat integer
---@field NoInput integer
ImGui.SliderFlags = {}

---@class ImGui_TableFlags
---@field None integer
---@field Resizable integer
---@field Reorderable integer
---@field Hideable integer
---@field Sortable integer
---@field NoSavedSettings integer
---@field ContextMenuInBody integer
---@field RowBg integer
---@field BordersInnerH integer
---@field BordersOuterH integer
---@field BordersInnerV integer
---@field BordersOuterV integer
---@field BordersH integer
---@field BordersV integer
---@field Borders integer
---@field NoBordersInBody integer
---@field NoBordersInBodyUntilResize integer
---@field SizingFixedFit integer
---@field SizingFixedSame integer
---@field SizingStretchProp integer
---@field SizingStretchSame integer
---@field NoHostExtendX integer
---@field NoHostExtendY integer
---@field NoKeepColumnsVisible integer
---@field PreciseWidths integer
---@field NoClip integer
---@field PadOuterX integer
---@field NoPadOuterX integer
---@field NoPadInnerX integer
---@field ScrollX integer
---@field ScrollY integer
---@field SortMulti integer
---@field SortTristate integer
ImGui.TableFlags = {}

---@class ImGui_TableColumnFlags
---@field None integer
---@field Disabled integer
---@field DefaultHide integer
---@field DefaultSort integer
---@field WidthStretch integer
---@field WidthFixed integer
---@field NoResize integer
---@field NoReorder integer
---@field NoHide integer
---@field NoClip integer
---@field NoSort integer
---@field NoSortAscending integer
---@field NoSortDescending integer
---@field NoHeaderLabel integer
---@field NoHeaderWidth integer
---@field PreferSortAscending integer
---@field PreferSortDescending integer
---@field IndentEnable integer
---@field IndentDisable integer
---@field IsEnabled integer
---@field IsVisible integer
---@field IsSorted integer
---@field IsHovered integer
ImGui.TableColumnFlags = {}

---@class ImGui_TableRowFlags
---@field None integer
---@field Headers integer
ImGui.TableRowFlags = {}

---@class ImGui_TreeNodeFlags
---@field None integer
---@field Selected integer
---@field Framed integer
---@field AllowOverlap integer
---@field NoTreePushOnOpen integer
---@field NoAutoOpenOnLog integer
---@field DefaultOpen integer
---@field OpenOnDoubleClick integer
---@field OpenOnArrow integer
---@field Leaf integer
---@field Bullet integer
---@field FramePadding integer
---@field SpanAvailWidth integer
---@field SpanFullWidth integer
---@field SpanAllColumns integer
---@field NavLeftJumpsBackHere integer
---@field CollapsingHeader integer
ImGui.TreeNodeFlags = {}

---@class ImGui_TabBarFlags
---@field None integer
---@field Reorderable integer
---@field AutoSelectNewTabs integer
---@field TabListPopupButton integer
---@field NoCloseWithMiddleMouseButton integer
---@field NoTabListScrollingButtons integer
---@field NoTooltip integer
---@field FittingPolicyResizeDown integer
---@field FittingPolicyScroll integer
ImGui.TabBarFlags = {}

---@class ImGui_TabItemFlags
---@field None integer
---@field UnsavedDocument integer
---@field SetSelected integer
---@field NoCloseWithMiddleMouseButton integer
---@field NoPushId integer
---@field NoTooltip integer
---@field NoReorder integer
---@field Leading integer
---@field Trailing integer
ImGui.TabItemFlags = {}

---@class ImGui_FocusedFlags
---@field None integer
---@field ChildWindows integer
---@field RootWindow integer
---@field AnyWindow integer
---@field NoPopupHierarchy integer
---@field RootAndChildWindows integer
ImGui.FocusedFlags = {}

---@class ImGui_HoveredFlags
---@field None integer
---@field ChildWindows integer
---@field RootWindow integer
---@field AnyWindow integer
---@field NoPopupHierarchy integer
---@field AllowWhenBlockedByPopup integer
---@field AllowWhenBlockedByActiveItem integer
---@field AllowWhenOverlappedByItem integer
---@field AllowWhenOverlappedByWindow integer
---@field AllowWhenDisabled integer
---@field NoNavOverride integer
---@field AllowWhenOverlapped integer
---@field RectOnly integer
---@field RootAndChildWindows integer
ImGui.HoveredFlags = {}

---@class ImGui_PopupFlags
---@field None integer
---@field MouseButtonLeft integer
---@field MouseButtonRight integer
---@field MouseButtonMiddle integer
---@field NoReopen integer
---@field NoOpenOverExistingPopup integer
---@field NoOpenOverItems integer
---@field AnyPopupId integer
---@field AnyPopupLevel integer
---@field AnyPopup integer
ImGui.PopupFlags = {}

---@class ImGui_Key
---@field None integer
---@field Tab integer
---@field LeftArrow integer
---@field RightArrow integer
---@field UpArrow integer
---@field DownArrow integer
---@field PageUp integer
---@field PageDown integer
---@field Home integer
---@field End integer
---@field Insert integer
---@field Delete integer
---@field Backspace integer
---@field Space integer
---@field Enter integer
---@field Escape integer
---@field LeftCtrl integer
---@field LeftShift integer
---@field LeftAlt integer
---@field LeftSuper integer
---@field RightCtrl integer
---@field RightShift integer
---@field RightAlt integer
---@field RightSuper integer
---@field Menu integer
---@field 0 integer
---@field 1 integer
---@field 2 integer
---@field 3 integer
---@field 4 integer
---@field 5 integer
---@field 6 integer
---@field 7 integer
---@field 8 integer
---@field 9 integer
---@field A integer
---@field B integer
---@field C integer
---@field D integer
---@field E integer
---@field F integer
---@field G integer
---@field H integer
---@field I integer
---@field J integer
---@field K integer
---@field L integer
---@field M integer
---@field N integer
---@field O integer
---@field P integer
---@field Q integer
---@field R integer
---@field S integer
---@field T integer
---@field U integer
---@field V integer
---@field W integer
---@field X integer
---@field Y integer
---@field Z integer
---@field F1 integer
---@field F2 integer
---@field F3 integer
---@field F4 integer
---@field F5 integer
---@field F6 integer
---@field F7 integer
---@field F8 integer
---@field F9 integer
---@field F10 integer
---@field F11 integer
---@field F12 integer
---@field Apostrophe integer
---@field Comma integer
---@field Minus integer
---@field Period integer
---@field Slash integer
---@field Semicolon integer
---@field Equal integer
---@field LeftBracket integer
---@field Backslash integer
---@field RightBracket integer
---@field GraveAccent integer
---@field CapsLock integer
---@field ScrollLock integer
---@field NumLock integer
---@field PrintScreen integer
---@field Pause integer
---@field Keypad0 integer
---@field Keypad1 integer
---@field Keypad2 integer
---@field Keypad3 integer
---@field Keypad4 integer
---@field Keypad5 integer
---@field Keypad6 integer
---@field Keypad7 integer
---@field Keypad8 integer
---@field Keypad9 integer
---@field KeypadDecimal integer
---@field KeypadDivide integer
---@field KeypadMultiply integer
---@field KeypadSubtract integer
---@field KeypadAdd integer
---@field KeypadEnter integer
---@field KeypadEqual integer
---@field MouseLeft integer
---@field MouseRight integer
---@field MouseMiddle integer
---@field MouseX1 integer
---@field MouseX2 integer
---@field MouseWheelX integer
---@field MouseWheelY integer
ImGui.Key = {}

---@class ImGui_Mod
---@field None integer
---@field Ctrl integer
---@field Shift integer
---@field Alt integer
---@field Super integer
ImGui.Mod = {}

return ImGui
