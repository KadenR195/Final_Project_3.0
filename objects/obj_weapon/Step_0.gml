/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4695A850
/// @DnDArgument : "x" "x + (30 * sign(move_x))"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l4695A850_0 = instance_place(x + (30 * sign(move_x)), y + 0, [obj_floor]);
if ((l4695A850_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B1490AE
	/// @DnDComment : prepares movement to turn around
	/// @DnDDisabled : 1
	/// @DnDParent : 4695A850
	/// @DnDArgument : "expr" "move_x * -1"
	/// @DnDArgument : "var" "move_x"
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 40B6F953
/// @DnDArgument : "x" "x + (25 * sign(move_x))"
/// @DnDArgument : "y" "y + 50"
/// @DnDArgument : "object" "obj_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_floor"
var l40B6F953_0 = instance_place(x + (25 * sign(move_x)), y + 50, [obj_floor]);
if (!(l40B6F953_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0270C7FA
	/// @DnDDisabled : 1
	/// @DnDParent : 40B6F953
	/// @DnDArgument : "expr" "move_x * -1"
	/// @DnDArgument : "var" "move_x"
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 27BA4B26
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 141DA956
	/// @DnDParent : 27BA4B26
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22C98B4D
		/// @DnDParent : 141DA956
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5FC6D5F0
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);