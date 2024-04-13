package;

import schmovin.SchmovinAdapter;

// Vanilla Schmovin Adapter
class VSchmovinAdapter extends SchmovinAdapter
{
    override function ForEveryMod(param:Array<Dynamic>)
	{
		trace(param);
	}

	// TODO
	override function GetCrotchetAtTime(time:Float):Float
	{
		return 2.0;
	}

	override function GrabScrollSpeed():Float
	{
        return PlayState.SONG.speed;
	}

	// TODO
	override function GrabReverse():Bool
	{
		return false;
	}

	override function GetCrotchetNow():Float
	{
		return Conductor.crochet;
	}

	override function GetSongPosition():Float
	{
		return Conductor.songPosition;
	}

	override function GrabGlobalVisualOffset():Float
	{
		return 0.0;
	}

	override function GetHoldNoteSubdivisions():Int
	{
		return 4;
	}


	override function Log(string:Dynamic)
	{
		trace('[Schmovin\' Vanilla Adapter] $string');
	}
}