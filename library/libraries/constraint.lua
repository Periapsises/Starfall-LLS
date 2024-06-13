---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Library for creating and manipulating constraints.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L21).
constraint = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Axis two entities. v1 in e1's coordinates and v2 in e2's coordinates (or laxis in e1's coordinates again) define the axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L138).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param v1 Vector # Position to center the axis, local to e1's space coordinates
---@param v2 Vector # The second position defining the axis, local to e2's space coordinates. The laxis may be specified instead which is local to e1's space coordinates
---@param force_lim number? # Amount of force until it breaks, 0 = Unbreakable. Default 0
---@param torque_lim number? # Amount of torque until it breaks, 0 = Unbreakable. Default 0
---@param friction number? # Friction of the constraint. Default 0
---@param nocollide boolean? # Bool whether or not to nocollide the two entities. Default false
---@param laxis Vector? # Optional second position of the constraint, same as v2 but local to e1
---@return Constraint # The constraint entity
function constraint.axis(e1, e2, bone1, bone2, v1, v2, force_lim, torque_lim, friction, nocollide, laxis) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ballsocket two entities together. For more options, see constraint.ballsocketadv.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L184).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param pos Vector # Position of the joint, relative to the second entity
---@param force_lim number? # Amount of force until it breaks, 0 = Unbreakable. Default 0
---@param torque_lim number? # Amount of torque until it breaks, 0 = Unbreakable. Default 0
---@param nocollide boolean? # Bool whether or not to nocollide the two entities. Default false
---@return Constraint # The constraint entity
function constraint.ballsocket(e1, e2, bone1, bone2, pos, force_lim, torque_lim, nocollide) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ballsocket two entities together with more options.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L223).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param v1 Vector # Position on the first entity, in its local space coordinates
---@param v2 Vector # Position on the second entity, in its local space coordinates
---@param force_lim number? # Amount of force until it breaks, 0 = Unbreakable. Default 0
---@param torque_lim number? # Amount of torque until it breaks, 0 = Unbreakable. Default 0
---@param minv Vector? # Vector defining minimum rotation angle based on world axes. Default Vec(0)
---@param maxv Vector? # Vector defining maximum rotation angle based on world axes. Default Vec(0)
---@param frictionv Vector? # Vector defining rotational friction, local to the constraint. Default Vec(0)
---@param rotateonly boolean? # If True, ballsocket will only affect the rotation allowing for free movement, otherwise it will limit both - rotation and movement. Default false
---@param nocollide boolean? # Bool whether or not to nocollide the two entities. Default false
---@return Constraint # The constraint entity
function constraint.ballsocketadv(e1, e2, bone1, bone2, v1, v2, force_lim, torque_lim, minv, maxv, frictionv, rotateonly, nocollide) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Breaks all constraints on an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L545).
---@param e Entity # Entity to remove the constraints from
function constraint.breakAll(e) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Breaks all constraints of a certain type on an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L555).
---@param e Entity # Entity to be affected
---@param typename string # Name of the constraint type, ie. Weld, Elastic, NoCollide, etc.
function constraint.breakType(e, typename) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks how many constraints can be spawned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L583).
---@return number # Number of constraints able to be spawned
function constraint.constraintsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Elastic constraint between two entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L272).
---@param index number # Index of the elastic constraint
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param v1 Vector # Position on the first entity, in its local space coordinates
---@param v2 Vector # Position on the second entity, in its local space coordinates
---@param const number? # Constant of the constraint. Default 1000
---@param damp number? # Damping of the constraint. Default 100
---@param rdamp number? # Rotational damping of the constraint. Default 0
---@param width number? # Width of the created constraint. Default 0
---@param stretch boolean? # True to mark as stretch-only. Default false
---@return Constraint # The constraint entity
function constraint.elastic(index, e1, e2, bone1, bone2, v1, v2, const, damp, rdamp, width, stretch) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the table of constraints on an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L570).
---@param ent Entity # The entity
---@return table # Table of tables containing constraint information
function constraint.getTable(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies a keepupright constraint on an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L451).
---@param e Entity # The entity
---@param ang Angle # The upright angle
---@param bone number # Number bone of the entity. Default 0
---@param lim number # The strength of the constraint. Default 5000
---@return Constraint # The constraint entity
function constraint.keepupright(e, ang, bone, lim) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Nocollides two entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L421).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@return Constraint # The constraint entity
function constraint.nocollide(e1, e2, bone1, bone2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes all constraints created by the calling chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L79).
function constraint.removeAll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a rope between two entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L326).
---@param index number # Index of the rope constraint
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param v1 Vector # Position on the first entity, in its local space coordinates
---@param v2 Vector # Position on the second entity, in its local space coordinates
---@param length number? # Length of the created rope. Default 0
---@param addlength number? # Amount to add to the base length of the rope. Default 0
---@param force_lim number? # Amount of force until it breaks, 0 = Unbreakable. Default 0
---@param width number? # Width of the rope. Default 0
---@param materialName string? # Material of the rope
---@param rigid boolean? # Whether the rope is rigid. Default false
---@param color Color? # The color of the rope. Default white
---@return Constraint # The constraint entity
function constraint.rope(index, e1, e2, bone1, bone2, v1, v2, length, addlength, force_lim, width, materialName, rigid, color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the chip should remove created constraints when the chip is removed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L577).
---@param on boolean # Whether the constraints should be cleaned or not
function constraint.setConstraintClean(on) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the constant of an elastic attached to the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L523).
---@param index number # Index of the elastic constraint
---@param e Entity # Entity that has the elastic
---@param constant number # New constant value of the elastic
---@return Constraint # The constraint entity
function constraint.setElasticConstant(index, e, constant) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the damping of an elastic attached to the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L501).
---@param index number # Index of the elastic constraint
---@param e Entity # Entity that has the elastic
---@param damping number # New Damping value of the elastic
---@return Constraint # The constraint entity
function constraint.setElasticDamping(index, e, damping) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the length of an elastic attached to the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L479).
---@param index number # Index of the elastic constraint
---@param e Entity # Entity that has the constraint
---@param length number # New length of the constraint
---@return Constraint # The constraint entity
function constraint.setElasticLength(index, e, length) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sliders two entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L384).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param v1 Vector # Position on the first entity, in its local space coordinates
---@param v2 Vector # Position on the second entity, in its local space coordinates
---@param width number? # Width of the slider. Default 0
---@return Constraint # The constraint entity
function constraint.slider(e1, e2, bone1, bone2, v1, v2, width) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Welds two entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L104).
---@param e1 Entity # The first entity
---@param e2 Entity # The second entity
---@param bone1 number? # Number bone of the first entity. Default 0
---@param bone2 number? # Number bone of the second entity. Default 0
---@param force_lim number? # Max force the weld can take before breaking. Default 0
---@param nocollide boolean? # Bool whether or not to nocollide the two entities. Default false
---@return Constraint # The constraint entity
function constraint.weld(e1, e2, bone1, bone2, force_lim, nocollide) end
