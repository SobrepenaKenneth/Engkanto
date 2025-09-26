package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
<<<<<<< Updated upstream
import haxe.iterators.StringIteratorUnicode;
=======
import flixel.util.FlxColor;
>>>>>>> Stashed changes

class PlayState extends FlxState
{
	var player:Player;
	var ground:FlxSprite;

	override public function create()
	{
		super.create();
<<<<<<< Updated upstream
		// intro = new Intro();
		// add(intro.butterfly);

		var butterfly = new Butterfly(500, 100);
		add(butterfly);

=======
		// --- PLAYER ---
		player = new Player(50, 50);
		add(player);

		// --- GROUND ---
		ground = new FlxSprite(0, FlxG.height - 20);
		ground.makeGraphic(FlxG.width, 20, FlxColor.GREEN);
		ground.immovable = true;
		ground.moves = false;
		add(ground);
>>>>>>> Stashed changes
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(player, ground);
	}
}
