/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D35A6C2
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_weapon"
/// @DnDSaveInfo : "objectid" "obj_weapon"
instance_create_layer(x, y, "Instances", obj_weapon);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 592A8979
/// @DnDComment : loop
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);