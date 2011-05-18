package  
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.FlxDelay;
	/**
	 * ...
	 * @author Me
	 */
	public class Song
	{
		[Embed(source = "assets/test1.mp3")] public var Test1:Class;
		[Embed(source = "assets/test2.mp3")] public var Test2:Class;
		
		public var note1:FlxSound;
		public var note2:FlxSound;
		public var note3:FlxSound;
		public var note4:FlxSound;
		public var note5:FlxSound;
		public var note6:FlxSound;
		public var note7:FlxSound;
		public var note8:FlxSound;
		public var note9:FlxSound;
		public var note10:FlxSound;
		public var note11:FlxSound;
		public var note12:FlxSound;
		public var testnote:FlxSound;
		
		public var time:Number;
		
		public var times:Array;
		public var timer:FlxDelay;
		
		public var testnumber:Number;
		
		
		public var currentNote:uint;
		public var playsong:Boolean;
		


		
		public function Song() 
		{
			note1 = new FlxSound();
			note2 = new FlxSound();
			note3 = new FlxSound();
			note4 = new FlxSound();
			note5 = new FlxSound();
			note6 = new FlxSound();
			note7 = new FlxSound();
			note8 = new FlxSound();
			note9 = new FlxSound();
			note10 = new FlxSound();
			note11 = new FlxSound();
			note12 = new FlxSound();
			
			times = new Array;
			for (var i:uint = 0; i < 12; i++)
			{
				time = 0;
				times[i] = time;
			}
			
			currentNote = 1;
			playsong = false;
		}
		
		/*override public function update():void
		{
			if (currentNote == 1 && playsong)
			{
				trace("Playing Note 1");
				PlayNote1();
				currentNote++;
			}
			if (currentNote == 2 && timer.hasExpired)
			{
				trace("Playing Note2");
				PlayNote2();
				currentNote++;
			}
			
			
			super.update();
		}*/
		
		public function PlayNote1():void
		{
			note1.play();
			timer = new FlxDelay(times[0] * 1000);
			timer.start();
			while (!timer.hasExpired)
			{
				
			}
			note2.play();
		}
		public function PlayNote2():void
		{
			note2.play();
			timer.duration = times[1] * 1000;
			timer.start();
		}
	}

}