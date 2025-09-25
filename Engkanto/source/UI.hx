package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.FlxG;

class MenuState extends FlxState
{
    override public function create():Void
    {
        super.create();

        // Title Text
        var title = new FlxText(0, 50, FlxG.width, "My HaxeFlixel Game");
        title.setFormat(null, 32, 0xFFFFFFFF, "center");
        add(title);

        // Start Game Button
        var startButton = new FlxButton(FlxG.width / 2 - 40, 150, "Start Game", function() {
            FlxG.switchState(new PlayState());
        });
        add(startButton);

        // Exit Button
        var exitButton = new FlxButton(FlxG.width / 2 - 40, 200, "Exit", function() {
            Sys.exit(0);
        });
        add(exitButton);
    }
}
