package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Boyfriend extends Character
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		var tex = FlxAtlasFrames.fromSparrow(AssetPaths.BOYFRIEND__png, AssetPaths.BOYFRIEND__xml);
		frames = tex;
		animation.addByPrefix('idle', 'BF idle dance', 24, true);
		animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
		animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
		animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
		animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
		animation.addByPrefix('hey', 'BF HEY', 24, false);
		playAnim('idle');

		antialiasing = true;

		addOffset('idle', -5);
		addOffset("singUP", -29, 27);
		addOffset("singRIGHT", -38, -7);
		addOffset("singLEFT", 12, -6);
		addOffset("singDOWN", -10, -50);
		addOffset("hey", 7, 4);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		var waitTime:Float = 0;
		var maxWaitTime:Float = 1;
		if (FlxG.keys.pressed.LEFT)
			playAnim('singLEFT');
		if (FlxG.keys.pressed.RIGHT)
			playAnim('singRIGHT');
		if (FlxG.keys.pressed.UP)
			playAnim('singUP');
		if (FlxG.keys.pressed.DOWN)
			playAnim('singDOWN');
		if (FlxG.keys.pressed.SPACE)
			playAnim('hey');
	}
}
