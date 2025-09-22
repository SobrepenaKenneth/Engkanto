package;

import Intro;
import flixel.FlxState;
import haxe.iterators.StringIteratorUnicode;

class PlayState extends FlxState
{
	var intro:Intro;

	override public function create()
	{
		super.create();
		intro = new Intro();

		add(intro.butterfly);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
