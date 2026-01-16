using Godot;
using System;

public partial class Raya : CharacterBody2D
{
	// Using [Export] allows you to edit these values in the Inspector 
	// without having to recompile the code.
	[Export] public float Speed = 300.0f;
	[Export] public float Gravity = 2000.0f;
	[Export] public float JumpForce = -600.0f;

	public override void _PhysicsProcess(double delta)
	{
		Vector2 velocity = Velocity;

		// 1. Apply Gravity
		if (!IsOnFloor())
		{
			velocity.Y += Gravity * (float)delta;
		}
		else
		{
			// Reset vertical velocity when on floor to prevent physics bugs
			velocity.Y = 0; 
		}

		// 2. Handle Jumping
		// Make sure "jump" is defined in Project Settings -> Input Map
		if (Input.IsActionJustPressed("jump") && IsOnFloor())
		{
			velocity.Y = JumpForce;
		}

		// 3. Handle Horizontal Movement
		// GetAxis returns -1 for left, 1 for right, and 0 for nothing
		float direction = Input.GetAxis("ui_left", "ui_right");
		velocity.X = direction * Speed;

		// 4. Apply the velocity and move
		Velocity = velocity;
		MoveAndSlide();
	}
}
