/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BC577C9
/// @DnDArgument : "var" "key"
/// @DnDArgument : "value" "1"
if(key == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A4134AC
	/// @DnDApplyTo : {obj_lock}
	/// @DnDParent : 5BC577C9
	with(obj_lock) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B366402
	/// @DnDApplyTo : {obj_key}
	/// @DnDParent : 5BC577C9
	with(obj_key) instance_destroy();

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 405ADB91
	/// @DnDParent : 5BC577C9
	/// @DnDArgument : "object" "obj_lock"
	/// @DnDArgument : "aslist" "1"
	/// @DnDSaveInfo : "object" "obj_lock"
	var l405ADB91_0 = ds_list_create();
	var l405ADB91_1 = instance_place_list(0, 0, [obj_lock], l405ADB91_0, true);
	ds_list_destroy(l405ADB91_0);
	if ((l405ADB91_1 > 0))
	{
	
	}
}