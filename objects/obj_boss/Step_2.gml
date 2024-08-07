/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F217A13
/// @DnDComment : if walk left
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7808779A
	/// @DnDParent : 5F217A13
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_boss_move"
	/// @DnDSaveInfo : "spriteind" "spr_boss_move"
	sprite_index = spr_boss_move;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 04F740E4
	/// @DnDParent : 5F217A13
	/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1 * abs(image_xscale);
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52BBE096
/// @DnDComment : if walk right
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 778B0902
	/// @DnDParent : 52BBE096
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_boss_move"
	/// @DnDSaveInfo : "spriteind" "spr_boss_move"
	sprite_index = spr_boss_move;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5F1FEF67
	/// @DnDParent : 52BBE096
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	image_xscale = abs(image_xscale);
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BDCB67E
/// @DnDArgument : "var" "move_x"
if(move_x == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 332435EB
	/// @DnDParent : 6BDCB67E
	/// @DnDArgument : "spriteind" "spr_boss_idle"
	/// @DnDSaveInfo : "spriteind" "spr_boss_idle"
	sprite_index = spr_boss_idle;
	image_index = 0;
}