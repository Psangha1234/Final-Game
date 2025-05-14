/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 38E6C0EB
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35908DAC
	/// @DnDParent : 38E6C0EB
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "vel_y"
	vel_y = -jump_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 044EF8C3
	/// @DnDParent : 38E6C0EB
	sprite_index = noone;
	image_index = 0;
}