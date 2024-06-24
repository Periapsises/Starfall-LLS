---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Render library. Screens are 512x512 units. Most functions require.
--- that you be in the rendering hook to call, otherwise an error is.
--- thrown. +x is right, +y is down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L413).
render = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Adds a beam segment to the beam started by render.start3DBeam.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2065).
---@param startPos Vector # Beam start position.
---@param width number # The width of the beam.
---@param textureEnd number # The end coordinate of the texture used.
---@param color Color # The color to be used.
function render.add3DBeam(startPos, width, textureEnd, color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Captures a part of the current render target and returns the data as a binary string in the given format.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2284).
---@param captureData table # Parameters of the capture. See https://wiki.facepunch.com/gmod/Structures/RenderCaptureData
---@return string # Image binary data
function render.captureImage(captureData) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Dumps the current render target and allows the pixels to be accessed by render.readPixel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2277).
function render.capturePixels() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Clears the active render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1285).
---@param clr Color? # Color type to clear with
---@param depth boolean? # Boolean if should clear depth. Default false
function render.clear(clr, depth) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Clears the current rendertarget for obeying the current stencil buffer conditions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L620).
---@param r number # Value of the red channel to clear the current rt with.
---@param g number # Value of the green channel to clear the current rt with.
---@param b number # Value of the blue channel to clear the current rt with.
---@param a number # Value of the alpha channel to clear the current rt with.
---@param Clear boolean # the depth buffer.
function render.clearBuffersObeyStencil(r, g, b, a, Clear) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets the depth buffer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1953).
function render.clearDepth() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Clears the active render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1299).
---@param depth boolean? # Boolean if should clear depth. Default false
---@return number # The red channel value.
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.clearRGBA(depth) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets all values in the stencil buffer to zero.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L580).
function render.clearStencil() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the stencil value in a specified rect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L632).
---@param originX number # X origin of the rectangle.
---@param originY number # Y origin of the rectangle.
---@param endX number # The end X coordinate of the rectangle.
---@param endY number # The end Y coordinate of the rectangle.
---@param stencilValue number # Value to set cleared stencil buffer to.
function render.clearStencilBufferRectangle(originX, originY, endX, endY, stencilValue) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Calculates the lighting caused by dynamic lights for the specified surface.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2566).
---@param pos Vector # Vector position to sample from
---@param normal Vector # Normal vector of the surface
---@return Vector # Vector representing color of the light
function render.computeDynamicLighting(pos, normal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Calculates the light color of a certain surface.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2556).
---@param pos Vector # Vector position to sample from
---@param normal Vector # Normal vector of the surface
---@return Vector # Vector representing color of the light
function render.computeLighting(pos, normal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a font. Does not require rendering hook.
--- Base font can be one of (keep in mind that these may not exist on all clients if they are not shipped with starfall):.
--- \- Akbar.
--- \- Coolvetica.
--- \- Roboto.
--- \- Roboto Mono.
--- \- FontAwesome.
--- \- Courier New.
--- \- Verdana.
--- \- Arial.
--- \- HalfLife2.
--- \- hl2mp.
--- \- csd.
--- \- Tahoma.
--- \- Trebuchet.
--- \- Trebuchet MS.
--- \- DejaVu Sans Mono.
--- \- Lucida Console.
--- \- Times New Roman.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1729).
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Looks up a texture by file name and creates an UnlitGeneric material with it.
--- Also supports image URLs or image data (These will create a rendertarget for the $basetexture): https://en.wikipedia.org/wiki/Data_URI_scheme.
--- Make sure to store the material to use it rather than calling this slow function repeatedly.
--- NOTE: This no longer supports material names. Use texture names instead (Textures are .vtf, material are .vmt).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L933).
---@param tx string # Texture file path, a http url, or image data: https://en.wikipedia.org/wiki/Data_URI_scheme
---@param cb function? # An optional callback called when loading is done. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h to reposition the image in the texture.
---@param done function? # An optional callback called when the image is done loading. Passes the material, url
---@return Material # The material. Use with render.setMaterial to draw with it.
function render.createMaterial(tx, cb, done) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a new render target to draw onto.
--- The dimensions will always be 1024x1024.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1139).
---@param name string # The name of the render target
function render.createRenderTarget(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets a 2D cursor position where ply is aiming at the current rendered screen or nil if they aren't aiming at it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2213).
---@param ply Player? # player to get cursor position from. Default player()
---@param screen Entity? # An explicit screen to get the cursor pos of (default: The current rendering screen using 'render' hook)
---@return number # X position
---@return number # Y position
function render.cursorPos(ply, screen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Set's the depth range of the upcoming render.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2702).
---@param min number # The minimum depth of the upcoming render. 0.0 = render normally; 1.0 = render nothing.
---@param max number # The maximum depth of the upcoming render. 0.0 = render everything (through walls); 1.0 = render normally.
function render.depthRange(min, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Releases the rendertarget. Required if you reach the maximum rendertargets.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1154).
---@param name string # Rendertarget name
function render.destroyRenderTarget(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Releases the texture. Required if you reach the maximum url textures.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L954).
---@param mat Material # The material object
function render.destroyTexture(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Disables a scissoring rect which limits the drawing area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L743).
function render.disableScissorRect() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws textured beam.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2044).
---@param startPos Vector # Beam start position.
---@param endPos Vector # Beam end position.
---@param width number # The width of the beam.
---@param textureStart number # The start coordinate of the texture used.
---@param textureEnd number # The end coordinate of the texture used.
function render.draw3DBeam(startPos, endPos, width, textureStart, textureEnd) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a box in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2012).
---@param origin Vector # Origin of the box.
---@param angle Angle # Orientation of the box
---@param mins Vector # Start position of the box, relative to origin.
---@param maxs Vector # End position of the box, relative to origin.
function render.draw3DBox(origin, angle, mins, maxs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a 3D Line.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1999).
---@param startPos Vector # Starting position
---@param endPos Vector # Ending position
---@param writeZ boolean? # Optional should the line be drawn with depth considered (default: true)
function render.draw3DLine(startPos, endPos, writeZ) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws 2 connected triangles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2084).
---@param vert1 Vector # First vertex.
---@param vert2 Vector # The second vertex.
---@param vert3 Vector # The third vertex.
---@param vert4 Vector # The fourth vertex.
function render.draw3DQuad(vert1, vert2, vert3, vert4) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a quad.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2101).
---@param pos Vector # Origin of the quad.
---@param normal Vector # The face direction of the quad.
---@param width number # The width of the quad.
---@param height number # The height of the quad.
---@param rot number? # The rotation of the quad counter-clockwise in degrees around the normal axis. In other words, the quad will always face the same way but this will rotate its corners.
function render.draw3DQuadEasy(pos, normal, width, height, rot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws 2 connected triangles with custom UVs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2134).
---@param vert1 table # First vertex. {x, y, z, u, v}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
---@param vert4 table # The fourth vertex.
function render.draw3DQuadUV(vert1, vert2, vert3, vert4) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a sphere.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1971).
---@param pos Vector # Position of the sphere
---@param radius number # Radius of the sphere
---@param longitudeSteps number # The amount of longitude steps. The larger this number is, the smoother the sphere is
---@param latitudeSteps number # The amount of latitude steps. The larger this number is, the smoother the sphere is
function render.draw3DSphere(pos, radius, longitudeSteps, latitudeSteps) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a sprite in 3d space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1961).
---@param pos Vector # Position of the sprite.
---@param width number # Width of the sprite.
---@param height number # Height of the sprite.
---@param Color Color? # tint to give the sprite. Default: white
function render.draw3DSprite(pos, width, height, Color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a triangle in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2165).
---@param vert1 Vector # Position of the first vertex.
---@param vert2 Vector # Position of the the second vertex.
---@param vert3 Vector # Position of the the third vertex.
function render.draw3DTriangle(vert1, vert2, vert3) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a triangle with UV coordinates in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2198).
---@param vert1 table # First vertex. {x = x1, y = y1, z = z1, u = u1, v = v1}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
function render.draw3DTriangleUV(vert1, vert2, vert3) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a wireframe box in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2027).
---@param origin Vector # Origin of the box.
---@param angle Angle # Orientation of the box
---@param mins Vector # Start position of the box, relative to origin.
---@param maxs Vector # End position of the box, relative to origin.
---@param writeZ boolean? # Optional should the box be drawn with depth considered (default: true)
function render.draw3DWireframeBox(origin, angle, mins, maxs, writeZ) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a wireframe sphere.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1984).
---@param pos Vector # Position of the sphere
---@param radius number # Radius of the sphere
---@param longitudeSteps number # The amount of longitude steps. The larger this number is, the smoother the sphere is
---@param latitudeSteps number # The amount of latitude steps. The larger this number is, the smoother the sphere is
---@param writeZ boolean? # Optional should the sphere be drawn with depth considered (default: true)
function render.draw3DWireframeSphere(pos, radius, longitudeSteps, latitudeSteps, writeZ) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Applies a blur effect to the active rendertarget. This must be used with a rendertarget created beforehand.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1110).
---@param blurx number # The amount of horizontal blur to apply.
---@param blury number # The amount of vertical blur to apply.
---@param passes number # The number of times the blur effect is applied.
function render.drawBlurEffect(blurx, blury, passes) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a circle outline.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1414).
---@param x number # Center x coordinate
---@param y number # Center y coordinate
---@param radius number # Radius
function render.drawCircle(x, y, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a filled circle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1424).
---@param x number # Center x coordinate
---@param y number # Center y coordinate
---@param radius number # Radius
function render.drawFilledCircle(x, y, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a line.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1719).
---@param x1 number # X start float coordinate
---@param y1 number # Y start float coordinate
---@param x2 number # X end float coordinate
---@param y2 number # Y end float coordinate
function render.drawLine(x1, y1, x2, y2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws RGB color channel tables to current render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1639).
---@param w number # Width of image to be drawn.
---@param h number # Height of image to be drawn.
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
function render.drawPixelsRGB(w, h, dataR, dataG, dataB) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws RGBA color channel tables to current render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1655).
---@param w number # Width of image to be drawn.
---@param h number # Height of image to be drawn.
---@param dataR table # Red channel data.
---@param dataG table # Green channel data.
---@param dataB table # Blue channel data.
---@param dataA table # Alpha channel data.
function render.drawPixelsRGBA(w, h, dataR, dataG, dataB, dataA) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws region of RGB color channel tables to current render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1671).
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws region of RGBA color channel tables to current render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1694).
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a polygon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1908).
---@param poly table # Table of polygon vertices. Texture coordinates are optional. {{x=x1, y=y1, u=u1, v=v1}, ... }
function render.drawPoly(poly) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rectangle using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1364).
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawRect(x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rectangle using the current color.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1353).
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawRectFast(x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rectangle outline using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1403).
---@param x number # Top left corner x integer coordinate
---@param y number # Top left corner y integer coordinate
---@param w number # Width
---@param h number # Height
---@param thickness number? # Optional inset border width
function render.drawRectOutline(x, y, w, h, thickness) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rotated, rectangle using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1389).
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawRectRotated(x, y, w, h, rot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rotated, rectangle using the current color.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1376).
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawRectRotatedFast(x, y, w, h, rot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rounded rectangle using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1313).
---@param r number # The corner radius
---@param x number # Top left corner x coordinate
---@param y number # Top left corner y coordinate
---@param w number # Width
---@param h number # Height
function render.drawRoundedBox(r, x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rounded rectangle using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1324).
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws text more easily and quickly but no new lines or tabs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1853).
---@param x number # X coordinate
---@param y number # Y coordinate
---@param text string # Text to draw
---@param xalign number? # Horizontal text alignment. Default TEXT_ALIGN.LEFT
---@param yalign number? # Vertical text alignment. Default TEXT_ALIGN.TOP
---@return number # Width of the drawn text. Same as calling render.getTextSize
---@return number # Height of the drawn text. Same as calling render.getTextSize
function render.drawSimpleText(x, y, text, xalign, yalign) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws text with newlines and tabs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1840).
---@param x number # X coordinate
---@param y number # Y coordinate
---@param text string # Text to draw
---@param alignment number # Horizontal text alignment. Default TEXT_ALIGN.LEFT
function render.drawText(x, y, text, alignment) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a textured rectangle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1504).
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawTexturedRect(x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a textured rectangle.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1493).
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
function render.drawTexturedRectFast(x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rotated, textured rectangle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1595).
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawTexturedRectRotated(x, y, w, h, rot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a rotated, textured rectangle.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1582).
---@param x number # X coordinate of center of rect
---@param y number # Y coordinate of center of rect
---@param w number # Width
---@param h number # Height
---@param rot number # Rotation in degrees
function render.drawTexturedRectRotatedFast(x, y, w, h, rot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a textured rectangle with UV coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1553).
---@param x number # Top left corner x
---@param y number # Top left corner y
---@param w number # Width
---@param h number # Height
---@param startU number # Texture mapping at rectangle origin
---@param startV number # Texture mapping at rectangle origin
---@param endU number # Texture mapping at rectangle end
---@param endV number # Texture mapping at rectangle end
function render.drawTexturedRectUV(x, y, w, h, startU, startV, endU, endV) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a textured rectangle with UV coordinates.
--- Faster, but uses integer coordinates and will get clipped by user's screen resolution.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1515).
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a textured triangle with UV coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1625).
---@param vert1 table # First vertex. {x = x1, y = y1, u = u1, v = v1}
---@param vert2 table # The second vertex.
---@param vert3 table # The third vertex.
function render.drawTexturedTriangleUV(vert1, vert2, vert3) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws a triangle using the current color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1475).
---@param x1 number # X of the first vertex
---@param y1 number # Y of the first vertex
---@param x2 number # X of the second vertex
---@param y2 number # Y of the second vertex
---@param x3 number # X of the third vertex
---@param y3 number # Y of the third vertex
function render.drawTriangle(x1, y1, x2, y2, x3, y3) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the status of the clip renderer, returning previous state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2515).
---@param state boolean # New clipping state.
---@return boolean # Previous clipping state.
function render.enableClipping(state) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Enables or disables Depth Buffer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1913).
---@param enable boolean # True to enable
function render.enableDepth(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Enables a scissoring rect which limits the drawing area. Only works 2D contexts such as HUD or render targets.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L733).
---@param startX number # X start coordinate of the scissor rect.
---@param startY number # Y start coordinate of the scissor rect.
---@param endX number # X end coordinate of the scissor rect.
---@param endY number # Y end coordinate of the scissor rect.
function render.enableScissorRect(startX, startY, endX, endY) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Ends the beam mesh of a beam started with render.start3DBeam.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2078).
function render.end3DBeam() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the ambient color of the map.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2584).
---@return Vector # Vector representing color of the light
function render.getAmbientLightColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Call EyeAngles().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L558).
---@return Angle # The angles of the current render context as calculated by calcview.
function render.getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current alpha blending.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1939).
---@return number # Blending in the range 0 to 1
function render.getBlend() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the draw color modulation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L869).
---@return number # Red channel
---@return number # Green channel
---@return number # Blue channel
function render.getColorModulation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the default font.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1834).
---@return string # Default font
function render.getDefaultFont() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Call EyePos().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L550).
---@return Vector # The origin of the current render context as calculated by calcview.
function render.getEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Call EyeVector().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L564).
---@return Vector # The normal vector of the current render context as calculated by calcview, similar to render.getAngles.
function render.getEyeVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns width and height of the game window.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2340).
---@return number # the X size of the game window
---@return number # the Y size of the game window
function render.getGameResolution() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the light exposure on the specified position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2576).
---@param pos Vector # Vector position to sample from
---@return Vector # Vector representing color of the light
function render.getLightColor(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a copy of the model matrix that is at the top of the stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L757).
---@return VMatrix # The currently active matrix.
function render.getMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the render context's width and height. If a rendertarget is selected, will return 1024, 1024.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2329).
---@return number # the X size of the current render context
---@return number # the Y size of the current render context
function render.getResolution() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the entity currently being rendered to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2271).
---@return Entity # Entity of the screen or hud being rendered
function render.getScreenEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns information about the screen, such as world offsets, dimensions, and rotation.
--- Note: this does a table copy so move it out of your draw hook.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2261).
---@param e Entity # The screen to get info from.
---@return table # A table describing the screen.
function render.getScreenInfo(e) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the size of the specified text. Don't forget to use setFont before calling this function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1794).
---@param text string # Text to get the size of
---@return number # width of the text
---@return number # height of the text
function render.getTextSize(text) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the drawing tint. Internally, calls render.getColorModulation and render.getBlend, multiplies the values by 255, then returns a color object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L905).
---@return Color # The current color & blend modulation as a color
function render.getTint() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the drawing tint. Internally, calls render.getColorModulation and render.getBlend, multiplies the values by 255, then returns a color object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L914).
---@return number # The red channel value. Color The current color & blend modulation as a color
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.getTintRGBA() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Checks if the client is connected to a HUD component that's linked to this chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2361).
---@return boolean # True if a HUD component is connected and active, nil otherwise
function render.isHUDActive() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether render.renderView is being executed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2503).
---@return boolean # Whether render.renderView is being executed
function render.isInRenderView() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Enables blend mode control. Read OpenGL or DirectX docs for more info.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1920).
---@param on boolean # Whether to control the blend mode of upcoming rendering
---@param srcBlend number # http://wiki.facepunch.com/gmod/Enums/BLEND
---@param destBlend number # 
---@param blendFunc number # http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
---@param srcBlendAlpha number? # http://wiki.facepunch.com/gmod/Enums/BLEND
---@param destBlendAlpha number? # 
---@param blendFuncAlpha number? # http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
function render.overrideBlend(on, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Constructs a markup object for quick styled text drawing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1869).
---@param str string # The markup string to parse
---@param maxsize number? # The max width of the markup. Default nil
---@return Markup # The markup object. See https://wiki.facepunch.com/gmod/markup.Parse
function render.parseMarkup(str, maxsize) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the visibility of a sphere in the world.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2710).
---@param position Vector # 
---@param radius number # 
---@return number # Percentage visible, from 0-1
function render.pixelVisible(position, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Removes the current active clipping plane from the clip plane stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2546).
function render.popCustomClipPlane() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pops a matrix from the model matrix stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L749).
function render.popMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pops a view matrix from the matrix stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L818).
function render.popViewMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pushes a new clipping plane of the clip plane stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2530).
---@param normal Vector # The normal of the clipping plane.
---@param distance number # The normal of the clipping plane.
function render.pushCustomClipPlane(normal, distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pushes a matrix onto the model matrix stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L716).
---@param transform VMatrix # The matrix
---@param absolute boolean? # (default false) Should the transformation be absolute with respect to world or multipled with existing stack?
function render.pushMatrix(transform, absolute) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pushes a perspective matrix onto the view matrix stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L772).
---@param tbl table # The view matrix data. See http://wiki.facepunch.com/gmod/Structures/RenderCamData
function render.pushViewMatrix(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads the color of the specified pixel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2308).
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@return Color # Color object with ( r, g, b, a ) from the specified pixel.
function render.readPixel(x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads the color of the specified pixel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2317).
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@return number # The red channel value.
---@return number # The green channel value.
---@return number # The blue channel value.
---@return number # The alpha channel value.
function render.readPixelRGBA(x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Check if the specified render target exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1132).
---@param name string # The name of the render target
function render.renderTargetExists(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Renders the scene with the specified viewData to the current active render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2367).
---@param tbl table # view The view data to be used in the rendering. See http://wiki.facepunch.com/gmod/Structures/ViewData. There's an additional key drawviewer used to tell the engine whether the local player model should be rendered.
function render.renderView(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns how many render.renderView calls can be done in the current frame.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2509).
---@return number # How many render.renderView calls are left
function render.renderViewsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets the model lighting to the specified color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L611).
---@param r number # The red part of the color, 0-1
---@param g number # The green part of the color, 0-1
---@param b number # The blue part of the color, 0-1
function render.resetModelLighting(r, g, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets stencil operations to their default behavior.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L700).
function render.resetStencil() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Makes the screen shake, client must be connected to a HUD.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2693).
---@param amplitude number # The strength of the effect
---@param frequency number # The frequency of the effect in hertz
---@param duration number # The duration of the effect in seconds, max 10.
function render.screenShake(amplitude, frequency, duration) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Selects the render target to draw on.
--- Nil for the visible RT.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1167).
---@param name string? # Name of the render target to use
function render.selectRenderTarget(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets background color of screen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L831).
---@param col Color # Color of background
---@param screen Entity? # (Optional) entity of screen
function render.setBackgroundColor(col, screen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Changes alpha blending for the upcoming model drawing operations.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1946).
---@param alpha number # Blending in the range 0 to 1
function render.setBlend(alpha) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the overlay of the chip to a user's rendertarget.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2653).
---@param name string? # The name of the RT to use or nil to set it back to normal
function render.setChipOverlay(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the draw color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L863).
---@param clr Color # Color type
function render.setColor(clr) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the draw color modulation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L878).
---@param r number # Red channel
---@param g number # Green channel
---@param b number # Blue channel
function render.setColorModulation(r, g, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Changes the cull mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1277).
---@param mode number # Cull mode. 0 for counter clock wise, 1 for clock wise
function render.setCullMode(mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a close texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1255).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function render.setFilterMag(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a far texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1266).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function render.setFilterMin(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Changes color of the fog.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2599).
---@param col Color # Color (alpha won't have any effect)
function render.setFogColor(col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Changes density of the fog.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2608).
---@param density number # Density between 0 and 1
function render.setFogDensity(density) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets distance at which the fog will reach it's target density.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2626).
---@param distance number # End distance
function render.setFogEnd(distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the height below which fog will be rendered. Only works with fog mode 2, MATERIAL_FOG.LINEAR_BELOW_FOG_Z.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2635).
---@param height number # The fog height
function render.setFogHeight(height) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the fog mode. See: https://wiki.facepunch.com/gmod/Enums/MATERIAL_FOG.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2590).
---@param mode number # Fog mode
function render.setFogMode(mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets distance at which the fog will start appearing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2617).
---@param distance number # Start distance
function render.setFogStart(distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the font.
--- Use a font created by render.createFont or use one of these already defined fonts:.
--- \- DebugFixed.
--- \- DebugFixedSmall.
--- \- Default.
--- \- Marlett.
--- \- Trebuchet18.
--- \- Trebuchet24.
--- \- HudHintTextLarge.
--- \- HudHintTextSmall.
--- \- CenterPrintText.
--- \- HudSelectionText.
--- \- CloseCaption_Normal.
--- \- CloseCaption_Bold.
--- \- CloseCaption_BoldItalic.
--- \- ChatFont.
--- \- TargetID.
--- \- TargetIDSmall.
--- \- HL2MPTypeDeath.
--- \- BudgetLabel.
--- \- HudNumbers.
--- \- DermaDefault.
--- \- DermaDefaultBold.
--- \- DermaLarge.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1803).
---@param font string # The font to use
function render.setFont(font) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the lighting mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L855).
---@param mode number # The lighting mode. 0 - Default, 1 - Fullbright, 2 - Increased Fullbright
function render.setLightingMode(mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L965).
---@param mat Material # The material object
function render.setMaterial(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material to the given material or the rendertarget, applying an additive shader when drawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L990).
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
function render.setMaterialEffectAdd(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material to the given material or the rendertarget, applying a bloom shader to the texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1018).
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param levelr number # Multiplier for all red pixels. 1 = unchanged
---@param levelg number # Multiplier for all green pixels. 1 = unchanged
---@param levelb number # Multiplier for all blue pixels. 1 = unchanged
---@param colormul number # Multiplier for all three colors. 1 = unchanged
function render.setMaterialEffectBloom(mat, levelr, levelg, levelb, colormul) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material to the given material or the rendertarget, applying a color modification shader to the texture. Alias: render.setMaterialEffectColourModify.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1077).
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param cmStructure table # A table where each key must be of "addr", "addg", "addb", "brightness", "color" or "colour", "contrast", "mulr", "mulg", and "mulb". All keys are optional.
function render.setMaterialEffectColorModify(mat, cmStructure) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material to the given material or the rendertarget, darkening the texture, and scaling up color values.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1044).
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
---@param darken number # The amount to darken the texture by. -1 to 1 inclusive.
---@param multiply number # The amount to multiply the pixel colors by. (0-1024)
function render.setMaterialEffectDownsample(mat, darken, multiply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current render material to the given material or the rendertarget, applying a subtractive shader when drawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1004).
---@param mat Material # The material object to use the texture of, or the name of a rendertarget to use instead.
function render.setMaterialEffectSub(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets up the ambient lighting for any upcoming render operation. Ambient lighting can be seen as a cube enclosing the object to be drawn, each of its faces representing a directional light source that shines towards the object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L601).
---@param lightDirection number # The light source to edit, builtins.BOX enumeration.
---@param r number # The red component of the light color.
---@param g number # The green component of the light color.
---@param b number # The blue component of the light color.
function render.setModelLighting(lightDirection, r, g, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the draw color by RGBA values.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L890).
---@param r number # Number, red value
---@param g number # Number, green value
---@param b number # Number, blue value
---@param a number # Number, alpha value
function render.setRGBA(r, g, b, a) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the active texture to the render target with the specified name.
--- Nil to reset.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1215).
---@param name string? # Name of the render target to use
function render.setRenderTargetTexture(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Using the custom screen model, sets the screen offset and size as long as its within bounds of -1024 to 1024 units.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2665).
---@param screen Entity # The custom screen to be resized
---@param x number # The x offset of the screen
---@param y number # The y offset of the screen
---@param w number # The width of the screen
---@param h number # The height of the screen
function render.setScreenDimensions(screen, x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the compare function of the stencil. More: https://wiki.facepunch.com/gmod/render.SetStencilCompareFunction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L644).
---@param compareFunction number # 
function render.setStencilCompareFunction(compareFunction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets whether stencil tests are carried out for each rendered pixel. Only pixels passing the stencil test are written to the render target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L572).
---@param enable boolean # True to enable, false to disable
function render.setStencilEnable(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the operation to be performed on the stencil buffer values if the compare function was not successful. More: http://wiki.facepunch.com/gmod/render.SetStencilFailOperation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L652).
---@param operation number # 
function render.setStencilFailOperation(operation) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the operation to be performed on the stencil buffer values if the compare function was successful. More: http://wiki.facepunch.com/gmod/render.SetStencilPassOperation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L660).
---@param operation number # 
function render.setStencilPassOperation(operation) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the reference value which will be used for all stencil operations. This is an unsigned integer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L676).
---@param referenceValue number # Reference value.
function render.setStencilReferenceValue(referenceValue) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L684).
---@param mask number # The mask bitflag.
function render.setStencilTestMask(mask) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L692).
---@param mask number # The mask bitflag.
function render.setStencilWriteMask(mask) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails. More: http://wiki.facepunch.com/gmod/render.SetStencilZFailOperation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L668).
---@param operation number # 
function render.setStencilZFailOperation(operation) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture of a screen entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1238).
---@param ent Entity # Screen entity
function render.setTextureFromScreen(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the drawing tint. Internally, calls render.setColorModulation and render.setBlend with the color parameters divided by 255.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L926).
---@param c Color # A color
function render.setTint(c) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Changes the view port position and size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2297).
---@param x number # Pixel x-coordinate.
---@param y number # Pixel y-coordinate.
---@param w number # Width of the viewport.
---@param h number # Height of the viewport.
function render.setViewPort(x, y, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the internal parameter INT_RENDERPARM_WRITE_DEPTH_TO_DESTALPHA. Allows creation of RTs with alpha masks.
--- Check https://wiki.facepunch.com/gmod/render.SetWriteDepthToDestAlpha for example.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L593).
---@param enable boolean # True to write depth to destination alpha.
function render.setWriteDepthToDestAlpha(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Begin drawing a multi-segment beam.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2058).
---@param segmentCount number # The number of Beam Segments that this multi-segment Beam will contain
function render.start3DBeam(segmentCount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Suppresses or enables any engine lighting for any upcoming render operation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L586).
---@param suppress boolean # True to suppress false to enable.
function render.suppressEngineLighting(suppress) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Does a trace and returns the color of the textel the trace hits.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L2350).
---@param startpos Vector # The starting vector
---@param endpos Vector # The ending vector
---@return Color # The color
function render.traceSurfaceColor(startpos, endpos) end

