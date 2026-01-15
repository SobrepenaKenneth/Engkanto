using Godot;
using System;

public partial class Main : Node2D
{
	private int player_Health = 50;
	private string player_name = "Raya";

	public override void _Ready()
	{

		// Initialization code here
		GD.Print("Dangal Greetings!");
		GD.Print("Player Name: " + player_name);
		GD.Print("Player Health: " + player_Health);
	}

	public override void _Process(double delta)
	{
		// Frame update code here
	}

	public override void _UnhandledInput(InputEvent @event)
	{
		if (@event is InputEventKey eventKey)
		{
			if (eventKey.Pressed && eventKey.Keycode == Key.Escape)
			{
				GetTree().Quit();
			}
		}
	}
}
