using Godot;
using System;

public partial class Raya : Sprite2D
{
	public const string player_Name = "Raya";
	public int player_Health = 20;
	public float Speed = 300.0f;
	public Vector2 Velocity = Vector2.Zero;

	public override void _Ready()
	{
		// Initialize code here
	}

	public override void _Process(double delta)
	{
		// Vector 2 Object for movement
		Vector2 direction = Vector2.Zero;
		
		if (Input.IsActionPressed("right"))
		{
			GD.Print("Right Key Pressed");
			direction.X += 1;
		}
		if (Input.IsActionPressed("left"))
		{
			direction.X -= 1;	
		}

		Velocity = direction.Normalized() * Speed;
	}


}
