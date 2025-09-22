package;

import flixel.FlxSprite;

class Intro
{
    public var butterfly:FlxSprite;

    public function new()
    {
        butterfly = new FlxSprite(0, 0);
        butterfly.loadGraphic(AssetPaths.butterfly__png, true, 73, 55);

        // Generate frames 0-30 using a loop
        var frames:Array<Int> = [];
        for(i in 0...30) frames.push(i);

        butterfly.animation.add("fly", frames, 24, true);
        butterfly.animation.play("fly");
    }
}
