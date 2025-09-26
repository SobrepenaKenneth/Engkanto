package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
    // Player Constructor
    public function new(x:Float, y:Float) 
    {
        super(x, y);
        makeGraphic(100, 100, FlxColor.BLUE);

        // Player Gravity
        acceleration.y = 5000; // How strong the gravity
        drag.x = 600; // friction
        maxVelocity.set(150, 500); 

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        //This reset the movement every frame so we don't keep sliding
        velocity.set(0,0);

        // --- Horizontal Movement ---
        if (FlxG.keys.pressed.LEFT)
            velocity.x = -maxVelocity.x;
        else if (FlxG.keys.pressed.RIGHT)
            velocity.x = maxVelocity.x;
        else 
            velocity.x = 0;

        // --- Jumping ---
        if (FlxG.keys.justPressed.SPACE && isTouching(FLOOR))
        {
            velocity.y = 250; // Jump Strength
        }

    }
}