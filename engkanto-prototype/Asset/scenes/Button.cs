using Godot;
using System;

public partial class Button : Godot.Button
{
	public override void _Ready()
	{
		var button = new Button();
		button.Text = "Click Me";
		button.Pressed += () => {
			GetTree().ChangeSceneToFile("res://Asset/scenes/Cutscene_One.tscn");
		};
		AddChild(button);
	}

	public override void _Process(double delta)
	{
		
	}

	private new void ButtonPressed()
	{
		GetTree().ChangeSceneToFile("res://Asset/scenes/Cutscene_One.tscn");
	}
	
}
