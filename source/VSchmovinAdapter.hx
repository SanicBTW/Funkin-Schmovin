package;

import flixel.FlxG;
import schmovin.SchmovinUtil;
import schmovin.SchmovinAdapter;

// Vanilla Schmovin Adapter
class VSchmovinAdapter extends SchmovinAdapter
{
    override function forEveryMod(param:Array<Dynamic>)
	{
		trace(param);
	}

	// TODO
	override function getCrotchetAtTime(time:Float):Float
	{
		return 2.0;
	}

	override function grabScrollSpeed():Float
	{
        return PlayState.SONG.speed;
	}

	override function getCrotchetNow():Float
	{
		return Conductor.crochet;
	}

	override function getSongPosition():Float
	{
		return Conductor.songPosition;
	}

	override function getDefaultNoteX(column:Int, player:Int)
	{
		var playerColumn = column % 4;
		return SchmovinUtil.getNoteWidthHalf() + 50 + playerColumn * Note.swagWidth + FlxG.width / 2 * player;
	}

	override function log(string:Dynamic)
	{
		trace('[Schmovin\' Vanilla Adapter] $string');
	}
}