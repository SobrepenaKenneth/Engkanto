package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class Butterfly extends FlxSprite
{
    public function new(x:Float, y:Float) 
    {
        super(x,y);

        frames = FlxAtlasFrames.fromSparrow(
            "assets/images/sprites.png",
            "assets/images/sprites.xml"
        );

        animation.addByPrefix("butterfly", "butterfly", 30, true);
        animation.play("butterfly");
        
    }
}