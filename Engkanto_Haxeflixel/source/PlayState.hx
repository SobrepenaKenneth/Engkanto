package;

import flixel.FlxState;
import haxe.iterators.StringIteratorUnicode;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		// intro = new Intro();
		// add(intro.butterfly);

		var butterfly = new Butterfly(500, 100);
		add(butterfly);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
