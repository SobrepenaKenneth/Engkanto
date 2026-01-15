using Godot;
using System;

public partial class Raya : CharacterBody2D
{
	public string name = "Raya";
	public float speed = 300;
	public float gravity = 1200;
	public float jump_Force = -800;

	public override void _Ready()
	{
		
	}

	public override void _Process(double delta)
	{
		if (!IsOnFloor())
		{
			Velocity += new Vector2(0, gravity * (float)delta);
		}

		float direction = 0;
		if (Input.IsActionPressed("ui_right")) direction += 1;
		if (Input.IsActionPressed("ui_left")) direction -= 1;
		
		Velocity = new Vector2(direction * speed, Velocity.Y);

		if (IsOnFloor() && Input.IsActionJustPressed("jump"))
		{
			Velocity = new Vector2(Velocity.X, jump_Force);
		}
		MoveAndSlide();
	}
}
