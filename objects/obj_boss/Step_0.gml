/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 63A08785
/// @DnDComment : turning around
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l63A08785_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l63A08785_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 366962C7
	/// @DnDComment : when you landed on ground
	/// @DnDParent : 63A08785
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A399219
	/// @DnDParent : 63A08785
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l2A399219_0 = instance_place(x + (30 * sign(move_x)), 0, [obj_floor]);
	if ((l2A399219_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2354818F
		/// @DnDComment : prepares to jump
		/// @DnDParent : 2A399219
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F9B0594
		/// @DnDComment : turn around
		/// @DnDParent : 2A399219
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D4C3AAE
	/// @DnDParent : 63A08785
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l0D4C3AAE_0 = instance_place(x + (25 * sign(move_x)), y + 50, [obj_floor]);
	if (!(l0D4C3AAE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C4FE454
		/// @DnDComment : flips movement
		/// @DnDParent : 0D4C3AAE
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A053CA8
		/// @DnDParent : 0D4C3AAE
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4E0F4890
/// @DnDComment : if not on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CDEA0DD
	/// @DnDComment : if we are falling
	/// @DnDParent : 4E0F4890
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07D2DDB2
		/// @DnDComment : add gravity
		/// @DnDParent : 1CDEA0DD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1440FA38
/// @DnDComment : 1str object is object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);