package;

import schmovin.SchmovinAdapter;
import schmovin.SchmovinStandalone;
import flixel.FlxGame;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static var schmovin:SchmovinStandalone;
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, TitleState));

		#if !mobile
		addChild(new FPS(10, 3, 0xFFFFFF));
		#end

		SchmovinAdapter.setInstance(new VSchmovinAdapter());
		schmovin = new SchmovinStandalone();
	}
}
