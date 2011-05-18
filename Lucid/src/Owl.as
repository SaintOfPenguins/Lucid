package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Me
	 */
	public class Owl extends FlxSprite 
	{
		[Embed(source = "assets/SmileyPlain.png")] private var ImgTest:Class;
		
		public var flapcounter:Number;
		public var timecounter:Number;
		private var timer:Number;
		private var firstjump:Boolean;
		
		public function Owl(X:Number = 0, Y:Number = 0) 
		{
			super(X, Y);
			loadGraphic(ImgTest, false, true);
			acceleration.y = 250;
			velocity.x = 40;
			flapcounter = 0;
			timecounter = 0;
			timer = 0;
			firstjump = true;
			
			
			angle = 90;
			facing = LEFT;
		
			
			
		}
		
		override public function update():void
		{
			timer += FlxG.elapsed;
			
			if (FlxG.keys.justPressed("SPACE") && flapcounter <= 12)
			{
				velocity.y = -200;
				flapcounter++;
				if (!firstjump)
				{
				Registry.song.times[timecounter] = timer;
				trace(Registry.song.times[timecounter]);
				timecounter++;
				}
				firstjump = false;
				timer = 0;

			}
			
			if (velocity.y >= 25)
			{
				angle = 120;
			}
			else if (velocity.y <= -30)
			{
				angle = 60;
			}
			else 
			{
				angle = 90;
			}
		}
	}

}