---@meta

render = {}

--- Sets the draw color
---@param clr Color # Color type
function render.setColor(clr) end

--- Draws a filled circle
---@param x number # Center x coordinate
---@param y number # Center y coordinate
---@param radius number # Radius
function render.drawFilledCircle(x, y, radius) end

--- Draws textured beam.
---@param startPos Vector # Beam start position.
---@param endPos Vector # Beam end position.
---@param width number # The width of the beam.
---@param textureStart number # The start coordinate of the texture used.
---@param textureEnd number # The end coordinate of the texture used.
function render.draw3DBeam(startPos, endPos, width, textureStart, textureEnd) end

--- Changes the view port position and size.
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@param w number # Width of the viewport.
---@param h number # Height of the viewport.
function render.setViewPort(x, y, w, h) end

--- Sets the height below which fog will be rendered. Only works with fog mode 2, MATERIAL_FOG.LINEAR_BELOW_FOG_Z
---@param height number # The fog height
function render.setFogHeight(height) end

--- Draws a triangle with UV coordinates in 3D space
---@param vert1 table # First vertex. {x = x1, y = y1, z = z1, u = u1, v = v1}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
function render.draw3DTriangleUV(vert1, vert2, vert3) end

--- Sets background color of screen
---@param col Color # Color of background
---@param screen Entity? # (Optional) entity of screen
function render.setBackgroundColor(col, screen) end

--- Draws RGB color channel tables to current render target.
---@param w number # Width of image to be drawn.
---@param h number # Height of image to be drawn.
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
function render.drawPixelsRGB(w, h, dataR, dataG, dataB) end

--- Draws a rounded rectangle using the current color
---@param r number # The corner radius
---@param x number # Top left corner x coordinate
---@param y number # Top left corner y coordinate
---@param w number # Width
---@param h number # Height
---@param tl boolean? # Top left corner. Default false
---@param tr boolean? # Top right corner. Default false
---@param bl boolean? # Bottom left corner. Default false
---@param br boolean? # Bottom right corner. Default false
function render.drawRoundedBoxEx(r, x, y, w, h, tl, tr, bl, br) end

--- Clears the active render target
---@param clr Color? # Color type to clear with
---@param depth boolean? # Boolean if should clear depth. Default false
function render.clear(clr, depth) end

--- Pushes a new clipping plane of the clip plane stack.
---@param normal Vector # The normal of the clipping plane.
---@param distance number # The normal of the clipping plane.
function render.pushCustomClipPlane(normal, distance) end

--- Creates a new render target to draw onto.
--- The dimensions will always be 1024x1024
---@param name string # The name of the render target
function render.createRenderTarget(name) end

--- Sets the current render material to the given material or the rendertarget, applying a subtractive shader when drawn.
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
function render.setMaterialEffectSub(mat) end

--- Resets the depth buffer
function render.clearDepth() end

--- Creates a font. Does not require rendering hook
--- Base font can be one of (keep in mind that these may not exist on all clients if they are not shipped with starfall):
--- \- Akbar
--- \- Coolvetica
--- \- Roboto
--- \- Roboto Mono
--- \- FontAwesome
--- \- Courier New
--- \- Verdana
--- \- Arial
--- \- HalfLife2
--- \- hl2mp
--- \- csd
--- \- Tahoma
--- \- Trebuchet
--- \- Trebuchet MS
--- \- DejaVu Sans Mono
--- \- Lucida Console
--- \- Times New Roman
---@param font string # Base font to use
---@param size number? # Font size. Default 16
---@param weight number? # Font weight. Default 400
---@param antialias boolean? # Antialias font? Default false
---@param additive boolean? # If true, adds brightness to pixels behind it rather than drawing over them. Default false
---@param shadow boolean? # Enable drop shadow? Default false
---@param outline boolean? # Enable outline? Default false
---@param blursize boolean? # The size of the blur Default 0
---@param extended boolean? # Allows the font to display glyphs outside of Latin-1 range. Unicode code points above 0xFFFF are not supported. Required to use FontAwesome
---@param scanlines number? # Scanline interval. Must be greater than 1 to work. Shares uniqueness with blursize so you cannot create more than one scanline type of font with the same blursize. Default 0
---@return string # The font name that can be used with the rest of the font functions.
function render.createFont(font, size, weight, antialias, additive, shadow, outline, blursize, extended, scanlines) end

--- Draws a sprite in 3d space.
---@param pos Vector # Position of the sprite.
---@param width number # Width of the sprite.
---@param height number # Height of the sprite.
---@param Color Color? # tint to give the sprite. Default: white
function render.draw3DSprite(pos, width, height, Color) end

--- Reads the color of the specified pixel.
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@return Color # Color object with ( r, g, b, a ) from the specified pixel.
function render.readPixel(x, y) end

--- Sets distance at which the fog will reach it's target density
---@param distance number # End distance
function render.setFogEnd(distance) end

--- Draws a polygon.
---@param poly table # Table of polygon vertices. Texture coordinates are optional. {{x=x1, y=y1, u=u1, v=v1}, ... }
function render.drawPoly(poly) end

--- Call EyePos()
---@return Vector # The origin of the current render context as calculated by calcview.
function render.getEyePos() end

--- Sets the draw color by RGBA values
---@param r number # Number, red value
---@param g number # Number, green value
---@param b number # Number, blue value
---@param a number # Number, alpha value
function render.setRGBA(r, g, b, a) end

--- Clears the active render target
---@param depth boolean? # Boolean if should clear depth. Default false
---@return number # The red channel value.
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.clearRGBA(depth) end

--- Captures a part of the current render target and returns the data as a binary string in the given format.
---@param captureData table # Parameters of the capture. See https://wiki.facepunch.com/gmod/Structures/RenderCaptureData
---@return string # Image binary data
function render.captureImage(captureData) end

--- Gets the drawing tint. Internally, calls render.getColorModulation and render.getBlend, multiplies the values by 255, then returns a color object.
---@return number # The red channel value. Color The current color & blend modulation as a color
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.getTintRGBA() end

--- Constructs a markup object for quick styled text drawing.
---@param str string # The markup string to parse
---@param maxsize number? # The max width of the markup. Default nil
---@return Markup # The markup object. See https://wiki.facepunch.com/gmod/markup.Parse
function render.parseMarkup(str, maxsize) end

--- Set's the depth range of the upcoming render.
---@param min number # The minimum depth of the upcoming render. 0.0 = render normally; 1.0 = render nothing.
---@param max number # The maximum depth of the upcoming render. 0.0 = render everything (through walls); 1.0 = render normally.
function render.depthRange(min, max) end

--- Draws a rotated, textured rectangle.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawTexturedRectRotatedFast(x, y, w, h, rot) end

--- Gets a 2D cursor position where ply is aiming at the current rendered screen or nil if they aren't aiming at it.
---@param ply Player? # player to get cursor position from. Default player()
---@param screen Entity? # An explicit screen to get the cursor pos of (default: The current rendering screen using 'render' hook)
---@return number # X position
---@return number # Y position
function render.cursorPos(ply, screen) end

--- Clears the current rendertarget for obeying the current stencil buffer conditions.
---@param r number # Value of the red channel to clear the current rt with.
---@param g number # Value of the green channel to clear the current rt with.
---@param b number # Value of the blue channel to clear the current rt with.
---@param a number # Value of the alpha channel to clear the current rt with.
---@param Clear boolean # the depth buffer.
function render.clearBuffersObeyStencil(r, g, b, a, Clear) end

--- Releases the rendertarget. Required if you reach the maximum rendertargets.
---@param name string # Rendertarget name
function render.destroyRenderTarget(name) end

--- Calculates the light color of a certain surface
---@param pos Vector # Vector position to sample from
---@param normal Vector # Normal vector of the surface
---@return Vector # Vector representing color of the light
function render.computeLighting(pos, normal) end

--- Pushes a perspective matrix onto the view matrix stack.
---@param tbl table # The view matrix data. See http://wiki.facepunch.com/gmod/Structures/RenderCamData
function render.pushViewMatrix(tbl) end

--- Draws a quad.
---@param pos Vector # Origin of the quad.
---@param normal Vector # The face direction of the quad.
---@param width number # The width of the quad.
---@param height number # The height of the quad.
---@param rot number? # The rotation of the quad counter-clockwise in degrees around the normal axis. In other words, the quad will always face the same way but this will rotate its corners.
function render.draw3DQuadEasy(pos, normal, width, height, rot) end

--- Sets the internal parameter INT_RENDERPARM_WRITE_DEPTH_TO_DESTALPHA. Allows creation of RTs with alpha masks.
--- Check https://wiki.facepunch.com/gmod/render.SetWriteDepthToDestAlpha for example.
---@param enable boolean # True to write depth to destination alpha.
function render.setWriteDepthToDestAlpha(enable) end

--- Gets the size of the specified text. Don't forget to use setFont before calling this function
---@param text string # Text to get the size of
---@return number # width of the text
---@return number # height of the text
function render.getTextSize(text) end

--- Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer.
---@param mask number # The mask bitflag.
function render.setStencilWriteMask(mask) end

--- Removes the current active clipping plane from the clip plane stack.
function render.popCustomClipPlane() end

--- Gets the drawing tint. Internally, calls render.getColorModulation and render.getBlend, multiplies the values by 255, then returns a color object.
---@return Color # The current color & blend modulation as a color
function render.getTint() end

--- Sets the current render material to the given material or the rendertarget, applying an additive shader when drawn.
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
function render.setMaterialEffectAdd(mat) end

--- Draws a sphere
---@param pos Vector # Position of the sphere
---@param radius number # Radius of the sphere
---@param longitudeSteps number # The amount of longitude steps. The larger this number is, the smoother the sphere is
---@param latitudeSteps number # The amount of latitude steps. The larger this number is, the smoother the sphere is
function render.draw3DSphere(pos, radius, longitudeSteps, latitudeSteps) end

--- Sets the status of the clip renderer, returning previous state.
---@param state boolean # New clipping state.
---@return boolean # Previous clipping state.
function render.enableClipping(state) end

--- Draws a box in 3D space
---@param origin Vector # Origin of the box.
---@param angle Angle # Orientation of the box
---@param mins Vector # Start position of the box, relative to origin.
---@param maxs Vector # End position of the box, relative to origin.
function render.draw3DBox(origin, angle, mins, maxs) end

--- Sets the fog mode. See: https://wiki.facepunch.com/gmod/Enums/MATERIAL_FOG
---@param mode number # Fog mode
function render.setFogMode(mode) end

--- Resets the model lighting to the specified color.
---@param r number # The red part of the color, 0-1
---@param g number # The green part of the color, 0-1
---@param b number # The blue part of the color, 0-1
function render.resetModelLighting(r, g, b) end

--- Resets all values in the stencil buffer to zero.
function render.clearStencil() end

--- Draws 2 connected triangles with custom UVs.
---@param vert1 table # First vertex. {x, y, z, u, v}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
---@param vert4 table # The fourth vertex.
function render.draw3DQuadUV(vert1, vert2, vert3, vert4) end

--- Draws a line.
---@param x1 number # X start float coordinate
---@param y1 number # Y start float coordinate
---@param x2 number # X end float coordinate
---@param y2 number # Y end float coordinate
function render.drawLine(x1, y1, x2, y2) end

--- Sets the active texture to the render target with the specified name.
--- Nil to reset.
---@param name string? # Name of the render target to use
function render.setRenderTargetTexture(name) end

--- Gets the light exposure on the specified position
---@param pos Vector # Vector position to sample from
---@return Vector # Vector representing color of the light
function render.getLightColor(pos) end

--- Returns the visibility of a sphere in the world.
---@param position Vector # 
---@param radius number # 
---@return number # Percentage visible, from 0-1
function render.pixelVisible(position, radius) end

--- Returns the entity currently being rendered to
---@return Entity # Entity of the screen or hud being rendered
function render.getScreenEntity() end

--- Begin drawing a multi-segment beam.
---@param segmentCount number # The number of Beam Segments that this multi-segment Beam will contain
function render.start3DBeam(segmentCount) end

--- Resets stencil operations to their default behavior
function render.resetStencil() end

--- Sets the compare function of the stencil. More: https://wiki.facepunch.com/gmod/render.SetStencilCompareFunction
---@param compareFunction number # 
function render.setStencilCompareFunction(compareFunction) end

--- Draws a textured triangle with UV coordinates
---@param vert1 table # First vertex. {x = x1, y = y1, u = u1, v = v1}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
function render.drawTexturedTriangleUV(vert1, vert2, vert3) end

--- Makes the screen shake, client must be connected to a HUD.
---@param amplitude number # The strength of the effect
---@param frequency number # The frequency of the effect in hertz
---@param duration number # The duration of the effect in seconds, max 10.
function render.screenShake(amplitude, frequency, duration) end

--- Returns the render context's width and height. If a rendertarget is selected, will return 1024, 1024
---@return number # the X size of the current render context
---@return number # the Y size of the current render context
function render.getResolution() end

--- Returns width and height of the game window
---@return number # the X size of the game window
---@return number # the Y size of the game window
function render.getGameResolution() end

--- Returns the ambient color of the map
---@return Vector # Vector representing color of the light
function render.getAmbientLightColor() end

--- Does a trace and returns the color of the textel the trace hits.
---@param startpos Vector # The starting vector
---@param endpos Vector # The ending vector
---@return Color # The color
function render.traceSurfaceColor(startpos, endpos) end

--- Sets distance at which the fog will start appearing
---@param distance number # Start distance
function render.setFogStart(distance) end

--- Sets the font
--- Use a font created by render.createFont or use one of these already defined fonts:
--- \- DebugFixed
--- \- DebugFixedSmall
--- \- Default
--- \- Marlett
--- \- Trebuchet18
--- \- Trebuchet24
--- \- HudHintTextLarge
--- \- HudHintTextSmall
--- \- CenterPrintText
--- \- HudSelectionText
--- \- CloseCaption_Normal
--- \- CloseCaption_Bold
--- \- CloseCaption_BoldItalic
--- \- ChatFont
--- \- TargetID
--- \- TargetIDSmall
--- \- HL2MPTypeDeath
--- \- BudgetLabel
--- \- HudNumbers
--- \- DermaDefault
--- \- DermaDefaultBold
--- \- DermaLarge
---@param font string # The font to use
function render.setFont(font) end

--- Changes density of the fog
---@param density number # Density between 0 and 1
function render.setFogDensity(density) end

--- Sets the operation to be performed on the stencil buffer values if the compare function was successful. More: http://wiki.facepunch.com/gmod/render.SetStencilPassOperation
---@param operation number # 
function render.setStencilPassOperation(operation) end

--- Returns a copy of the model matrix that is at the top of the stack.
---@return VMatrix # The currently active matrix.
function render.getMatrix() end

--- Call EyeAngles()
---@return Angle # The angles of the current render context as calculated by calcview.
function render.getAngles() end

--- Draws a rotated, textured rectangle.
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawTexturedRectRotated(x, y, w, h, rot) end

--- Gets the draw color modulation.
---@return number # Red channel
---@return number # Green channel
---@return number # Blue channel
function render.getColorModulation() end

--- Sets the current render material to the given material or the rendertarget, applying a color modification shader to the texture. Alias: render.setMaterialEffectColourModify
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param cmStructure table # A table where each key must be of "addr", "addg", "addb", "brightness", "color" or "colour", "contrast", "mulr", "mulg", and "mulb". All keys are optional.
function render.setMaterialEffectColorModify(mat, cmStructure) end

--- Sets the texture of a screen entity
---@param ent Entity # Screen entity
function render.setTextureFromScreen(ent) end

--- Draws a rotated, rectangle using the current color
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawRectRotatedFast(x, y, w, h, rot) end

--- Sets the reference value which will be used for all stencil operations. This is an unsigned integer.
---@param referenceValue number # Reference value.
function render.setStencilReferenceValue(referenceValue) end

--- Adds a beam segment to the beam started by render.start3DBeam.
---@param startPos Vector # Beam start position.
---@param width number # The width of the beam.
---@param textureEnd number # The end coordinate of the texture used.
---@param color Color # The color to be used.
function render.add3DBeam(startPos, width, textureEnd, color) end

--- Returns information about the screen, such as world offsets, dimensions, and rotation.
--- Note: this does a table copy so move it out of your draw hook
---@param e Entity # The screen to get info from.
---@return table # A table describing the screen.
function render.getScreenInfo(e) end

--- Draws a 3D Line
---@param startPos Vector # Starting position
---@param endPos Vector # Ending position
---@param writeZ boolean? # Optional should the line be drawn with depth considered (default: true)
function render.draw3DLine(startPos, endPos, writeZ) end

--- Returns how many render.renderView calls can be done in the current frame.
---@return number # How many render.renderView calls are left
function render.renderViewsLeft() end

--- Draws text with newlines and tabs
---@param x number # X coordinate
---@param y number # Y coordinate
---@param text string # Text to draw
---@param alignment number # Horizontal text alignment. Default TEXT_ALIGN.LEFT
function render.drawText(x, y, text, alignment) end

--- Call EyeVector()
---@return Vector # The normal vector of the current render context as calculated by calcview, similar to render.getAngles.
function render.getEyeVector() end

--- Draws a rectangle outline using the current color.
---@param x number # Top left corner x integer coordinate
---@param y number # Top left corner y integer coordinate
---@param w number # Width
---@param h number # Height
---@param thickness number? # Optional inset border width
function render.drawRectOutline(x, y, w, h, thickness) end

--- Suppresses or enables any engine lighting for any upcoming render operation.
---@param suppress boolean # True to suppress false to enable.
function render.suppressEngineLighting(suppress) end

--- Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails. More: http://wiki.facepunch.com/gmod/render.SetStencilZFailOperation
---@param operation number # 
function render.setStencilZFailOperation(operation) end

--- Sets the lighting mode
---@param mode number # The lighting mode. 0 - Default, 1 - Fullbright, 2 - Increased Fullbright
function render.setLightingMode(mode) end

--- Returns whether render.renderView is being executed.
---@return boolean # Whether render.renderView is being executed
function render.isInRenderView() end

--- Dumps the current render target and allows the pixels to be accessed by render.readPixel.
function render.capturePixels() end

--- Pops a matrix from the model matrix stack.
function render.popMatrix() end

--- Checks if the client is connected to a HUD component that's linked to this chip
---@return boolean # True if a HUD component is connected and active, nil otherwise
function render.isHUDActive() end

--- Draws a textured rectangle
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawTexturedRectFast(x, y, w, h) end

--- Calculates the lighting caused by dynamic lights for the specified surface
---@param pos Vector # Vector position to sample from
---@param normal Vector # Normal vector of the surface
---@return Vector # Vector representing color of the light
function render.computeDynamicLighting(pos, normal) end

--- Draws a circle outline
---@param x number # Center x coordinate
---@param y number # Center y coordinate
---@param radius number # Radius
function render.drawCircle(x, y, radius) end

--- Selects the render target to draw on.
--- Nil for the visible RT.
---@param name string? # Name of the render target to use
function render.selectRenderTarget(name) end

--- Ends the beam mesh of a beam started with render.start3DBeam.
function render.end3DBeam() end

--- Draws a rounded rectangle using the current color
---@param r number # The corner radius
---@param x number # Top left corner x coordinate
---@param y number # Top left corner y coordinate
---@param w number # Width
---@param h number # Height
function render.drawRoundedBox(r, x, y, w, h) end

--- Sets the draw color modulation.
---@param r number # Red channel
---@param g number # Green channel
---@param b number # Blue channel
function render.setColorModulation(r, g, b) end

--- Draws 2 connected triangles.
---@param vert1 Vector # First vertex.
---@param vert2 Vector # The second vertex.
---@param vert3 Vector # The third vertex.
---@param vert4 Vector # The fourth vertex.
function render.draw3DQuad(vert1, vert2, vert3, vert4) end

--- Draws a textured rectangle with UV coordinates
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
---@param startU number # Texture mapping at rectangle's origin U
---@param startV number # Texture mapping at rectangle's origin V
---@param endU number # Texture mapping at rectangle's end U
---@param endV number # Texture mapping at rectangle's end V
---@param UVHack boolean? # If enabled, will scale the UVs to compensate for internal bug. Should be true for user created materials.
function render.drawTexturedRectUVFast(x, y, w, h, startU, startV, endU, endV, UVHack) end

--- Draws a wireframe box in 3D space
---@param origin Vector # Origin of the box.
---@param angle Angle # Orientation of the box
---@param mins Vector # Start position of the box, relative to origin.
---@param maxs Vector # End position of the box, relative to origin.
---@param writeZ boolean? # Optional should the box be drawn with depth considered (default: true)
function render.draw3DWireframeBox(origin, angle, mins, maxs, writeZ) end

--- Pops a view matrix from the matrix stack.
function render.popViewMatrix() end

--- Returns the current alpha blending
---@return number # Blending in the range 0 to 1
function render.getBlend() end

--- Sets the stencil value in a specified rect.
---@param originX number # X origin of the rectangle.
---@param originY number # Y origin of the rectangle.
---@param endX number # The end X coordinate of the rectangle.
---@param endY number # The end Y coordinate of the rectangle.
---@param stencilValue number # Value to set cleared stencil buffer to.
function render.clearStencilBufferRectangle(originX, originY, endX, endY, stencilValue) end

--- Enables a scissoring rect which limits the drawing area. Only works 2D contexts such as HUD or render targets.
---@param startX number # X start coordinate of the scissor rect.
---@param startY number # Y start coordinate of the scissor rect.
---@param endX number # X end coordinate of the scissor rect.
---@param endY number # Y end coordinate of the scissor rect.
function render.enableScissorRect(startX, startY, endX, endY) end

--- Draws a wireframe sphere
---@param pos Vector # Position of the sphere
---@param radius number # Radius of the sphere
---@param longitudeSteps number # The amount of longitude steps. The larger this number is, the smoother the sphere is
---@param latitudeSteps number # The amount of latitude steps. The larger this number is, the smoother the sphere is
---@param writeZ boolean? # Optional should the sphere be drawn with depth considered (default: true)
function render.draw3DWireframeSphere(pos, radius, longitudeSteps, latitudeSteps, writeZ) end

--- Enables or disables Depth Buffer
---@param enable boolean # True to enable
function render.enableDepth(enable) end

--- Gets the default font
---@return string # Default font
function render.getDefaultFont() end

--- Sets the current render material to the given material or the rendertarget, applying a bloom shader to the texture.
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param levelr number # Multiplier for all red pixels. 1 = unchanged
---@param levelg number # Multiplier for all green pixels. 1 = unchanged
---@param levelb number # Multiplier for all blue pixels. 1 = unchanged
---@param colormul number # Multiplier for all three colors. 1 = unchanged
function render.setMaterialEffectBloom(mat, levelr, levelg, levelb, colormul) end

--- Looks up a texture by file name and creates an UnlitGeneric material with it.
--- Also supports image URLs or image data (These will create a rendertarget for the $basetexture): https://en.wikipedia.org/wiki/Data_URI_scheme
--- Make sure to store the material to use it rather than calling this slow function repeatedly.
--- NOTE: This no longer supports material names. Use texture names instead (Textures are .vtf, material are .vmt)
---@param tx string # Texture file path, a http url, or image data: https://en.wikipedia.org/wiki/Data_URI_scheme
---@param cb function? # An optional callback called when loading is done. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h to reposition the image in the texture.
---@param done function? # An optional callback called when the image is done loading. Passes the material, url
---@return Material # The material. Use with render.setMaterial to draw with it.
function render.createMaterial(tx, cb, done) end

--- Pushes a matrix onto the model matrix stack.
---@param m VMatrix # The matrix
---@param world boolean? # Should the transformation be relative to the screen or world?
function render.pushMatrix(m, world) end

--- Draws a triangle in 3D space
---@param vert1 Vector # Position of the first vertex.
---@param vert2 Vector # Position of the the second vertex.
---@param vert3 Vector # Position of the the third vertex.
function render.draw3DTriangle(vert1, vert2, vert3) end

--- Sets the texture filtering function when viewing a far texture
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function render.setFilterMin(val) end

--- Sets the operation to be performed on the stencil buffer values if the compare function was not successful. More: http://wiki.facepunch.com/gmod/render.SetStencilFailOperation
---@param operation number # 
function render.setStencilFailOperation(operation) end

--- Reads the color of the specified pixel.
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@return number # The red channel value.
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.readPixelRGBA(x, y) end

--- Check if the specified render target exists.
---@param name string # The name of the render target
function render.renderTargetExists(name) end

--- Draws a textured rectangle
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawTexturedRect(x, y, w, h) end

--- Changes alpha blending for the upcoming model drawing operations
---@param alpha number # Blending in the range 0 to 1
function render.setBlend(alpha) end

--- Draws RGBA color channel tables to current render target.
---@param w number # Width of image to be drawn.
---@param h number # Height of image to be drawn.
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
---@param dataA table # Alpha channel data.
function render.drawPixelsRGBA(w, h, dataR, dataG, dataB, dataA) end

--- Draws a rotated, rectangle using the current color
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawRectRotated(x, y, w, h, rot) end

--- Draws a rectangle using the current color
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawRectFast(x, y, w, h) end

--- Sets the texture filtering function when viewing a close texture
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function render.setFilterMag(val) end

--- Renders the scene with the specified viewData to the current active render target.
---@param tbl table # view The view data to be used in the rendering. See http://wiki.facepunch.com/gmod/Structures/ViewData. There's an additional key drawviewer used to tell the engine whether the local player model should be rendered.
function render.renderView(tbl) end

--- Draws a rectangle using the current color
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawRect(x, y, w, h) end

--- Sets the current render material to the given material or the rendertarget, darkening the texture, and scaling up color values.
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param darken number # The amount to darken the texture by. -1 to 1 inclusive.
---@param multiply number # The amount to multiply the pixel colors by. (0-1024)
function render.setMaterialEffectDownsample(mat, darken, multiply) end

--- Draws a triangle using the current color
---@param x1 number # X of the first vertex
---@param y1 number # Y of the first vertex
---@param x2 number # X of the second vertex
---@param y2 number # Y of the second vertex
---@param x3 number # X of the third vertex
---@param y3 number # Y of the third vertex
function render.drawTriangle(x1, y1, x2, y2, x3, y3) end

--- Draws region of RGB color channel tables to current render target.
---@param dstX number # Destination x coordinate
---@param dstY number # Destination y coordinate
---@param srcX number # Source x coordinate
---@param srcY number # Source y coordinate
---@param srcW number # Source original width
---@param srcH number # Source original height
---@param subrectW number # Width of subrect
---@param subrectH number # Height of subrect
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
function render.drawPixelsSubrectRGB(dstX, dstY, srcX, srcY, srcW, srcH, subrectW, subrectH, dataR, dataG, dataB) end

--- Changes color of the fog
---@param col Color # Color (alpha won't have any effect)
function render.setFogColor(col) end

--- Disables a scissoring rect which limits the drawing area.
function render.disableScissorRect() end

--- Using the custom screen model, sets the screen offset and size as long as its within bounds of -1024 to 1024 units
---@param screen Entity # The custom screen to be resized
---@param x number # The x offset of the screen
---@param y number # The y offset of the screen
---@param w number # The width of the screen
---@param h number # The height of the screen
function render.setScreenDimensions(screen, x, y, w, h) end

--- Enables blend mode control. Read OpenGL or DirectX docs for more info
---@param on boolean # Whether to control the blend mode of upcoming rendering
---@param srcBlend number # http://wiki.facepunch.com/gmod/Enums/BLEND
---@param destBlend number # 
---@param blendFunc number # http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
---@param srcBlendAlpha number? # http://wiki.facepunch.com/gmod/Enums/BLEND
---@param destBlendAlpha number? # 
---@param blendFuncAlpha number? # http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
function render.overrideBlend(on, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha) end

--- Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing.
---@param mask number # The mask bitflag.
function render.setStencilTestMask(mask) end

--- Draws text more easily and quickly but no new lines or tabs.
---@param x number # X coordinate
---@param y number # Y coordinate
---@param text string # Text to draw
---@param xalign number? # Horizontal text alignment. Default TEXT_ALIGN.LEFT
---@param yalign number? # Vertical text alignment. Default TEXT_ALIGN.TOP
---@return number # Width of the drawn text. Same as calling render.getTextSize
---@return number # Height of the drawn text. Same as calling render.getTextSize
function render.drawSimpleText(x, y, text, xalign, yalign) end

--- Draws a textured rectangle with UV coordinates
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
---@param startU number # Texture mapping at rectangle origin
---@param startV number # Texture mapping at rectangle origin
---@param endU number # Texture mapping at rectangle end
---@param endV number # Texture mapping at rectangle end
function render.drawTexturedRectUV(x, y, w, h, startU, startV, endU, endV) end

--- Sets up the ambient lighting for any upcoming render operation. Ambient lighting can be seen as a cube enclosing the object to be drawn, each of its faces representing a directional light source that shines towards the object.
---@param lightDirection number # The light source to edit, builtins.BOX enumeration.
---@param r number # The red component of the light color.
---@param g number # The green component of the light color.
---@param b number # The blue component of the light color.
function render.setModelLighting(lightDirection, r, g, b) end

--- Releases the texture. Required if you reach the maximum url textures.
---@param mat Material # The material object
function render.destroyTexture(mat) end

--- Sets the drawing tint. Internally, calls render.setColorModulation and render.setBlend with the color parameters divided by 255.
---@param c Color # A color
function render.setTint(c) end

--- Applies a blur effect to the active rendertarget. This must be used with a rendertarget created beforehand.
---@param blurx number # The amount of horizontal blur to apply.
---@param blury number # The amount of vertical blur to apply.
---@param passes number # The number of times the blur effect is applied.
function render.drawBlurEffect(blurx, blury, passes) end

--- Sets whether stencil tests are carried out for each rendered pixel. Only pixels passing the stencil test are written to the render target.
---@param enable boolean # True to enable, false to disable
function render.setStencilEnable(enable) end

--- Sets the overlay of the chip to a user's rendertarget
---@param name string? # The name of the RT to use or nil to set it back to normal
function render.setChipOverlay(name) end

--- Sets the current render material
---@param mat Material # The material object
function render.setMaterial(mat) end

--- Draws region of RGBA color channel tables to current render target.
---@param dstX number # Destination x coordinate
---@param dstY number # Destination y coordinate
---@param srcX number # Source x coordinate
---@param srcY number # Source y coordinate
---@param srcW number # Source original width
---@param srcH number # Source original height
---@param subrectW number # Width of subrect
---@param subrectH number # Height of subrect
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
---@param dataA table # Alpha channel data.
function render.drawPixelsSubrectRGBA(dstX, dstY, srcX, srcY, srcW, srcH, subrectW, subrectH, dataR, dataG, dataB, dataA) end

--- Changes the cull mode
---@param mode number # Cull mode. 0 for counter clock wise, 1 for clock wise
function render.setCullMode(mode) end

render.Vertex = {}
---@type number
render.Vertex["x"] = nil
---@type number
render.Vertex["y"] = nil
---@type number
render.Vertex["u"] = nil
---@type number
render.Vertex["v"] = nil

render.Screen = {}
---@type number
render.Screen["Name"] = nil
---@type number
render.Screen["offset"] = nil
---@type number
render.Screen["RS"] = nil
---@type number
render.Screen["RatioX"] = nil
---@type number
render.Screen["x1"] = nil
---@type number
render.Screen["x2"] = nil
---@type number
render.Screen["y1"] = nil
---@type number
render.Screen["y2"] = nil
---@type number
render.Screen["z"] = nil
---@type number
render.Screen["rot"] = nil

