/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 542E1E84
/// @DnDArgument : "x" "5377"
/// @DnDArgument : "y" "594"
/// @DnDArgument : "object" "obj_player"
/// @DnDSaveInfo : "object" "obj_player"
var l542E1E84_0 = instance_place(5377, 594, [obj_player]);
if ((l542E1E84_0 > 0))
{

}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 363F1F12
/// @DnDArgument : "spriteind" "spr_buttonpress"
/// @DnDSaveInfo : "spriteind" "spr_buttonpress"
sprite_index = spr_buttonpress;
image_index = 0;

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 7D50F647
/// @DnDApplyTo : {obj_buttonpress}
room_goto_next();