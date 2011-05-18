package  
{
	import org.flixel.*
	import org.flixel.plugin.photonstorm.*;
	/**
	 * ...
	 * @author Me
	 */
	public class Flight extends FlxState 
	{
		[Embed(source = "assets/ball.png")] private var ImgTest:Class;
		
		private var owl:Owl;
		private var numberOfstars:Number;
		private var star:FlxSprite;
		private var tempstar:FlxSprite;
		private var stars:FlxGroup;
		private var cam:FlxCamera;
		private var done:Boolean;
		private var played:Boolean;
		private var starfield:FlxStarField;
		
		private var test:uint;
		
		public function Flight() 
		{
			
			starfield = new FlxStarField(0, 0, 640, 480, 60);
			add(starfield);
			starfield.setStarSpeed(-.1, 0);
			owl = new Owl(220, 200);
			add(owl);
			numberOfstars = 40;
			stars = new FlxGroup(numberOfstars);
			SpawnStars(numberOfstars);
			add(stars);
			test = 0;
			done = false;
			played = false;
			
		}
		
		override public function create():void
		{
			cam = new FlxCamera(0, 0, FlxG.width, FlxG.height);
			cam.follow(owl);
			cam.setBounds(0, 0, 1600, 480);
			FlxG.addCamera(cam);
		}
		
		override public function update():void
		{
			for (var i:uint; i < stars.length; i++)
			{
				
				if (!done && FlxCollision.pixelPerfectCheck(owl, stars.members[i]))
				{
					StarHit(stars.members[i]);
				}
			}
			
			if (owl.flapcounter >= 13 && !done)
			{
				EndFlight();
			}
			
			if (owl.flapcounter >= 13 && !played)
			{
				PlaySong();
			}
			
			if (done)
			{
				if (FlxG.keys.justPressed("A"))
				{
					trace("YAY ALL DONE, TIMERS SAVED");
					
				}
				if (FlxG.keys.justPressed("D"))
				{
					trace("D PRESSED, RESTARTING");
					FlxG.resetState();
				}
			}
			
			if (FlxG.keys.justPressed("M"))
			{
				trace("Test number is now " + Registry.song.testnumber);
				Registry.song.note1.play();
			}
			super.update();
			
			
		}
		
		public function SpawnStars(quantity:Number):void
		{
			for (var i:uint = 0; i <= (quantity / 3); i++)
			{
				star = new FlxSprite(FlxMath.rand(0, 275), FlxMath.rand(20, 450));
				star.loadGraphic(ImgTest);
				//star.exists = false;
				add(star);
				
			}
			
			for (var u:uint = 0; u <= (quantity / 3); u++)
			{
				star = new FlxSprite(FlxMath.rand(250, 600), FlxMath.rand(20, 450));
				star.loadGraphic(ImgTest);
				//star.exists = false;
				stars.add(star);
				
			}
			for (var y:uint = 0; y <= (quantity / 3); y++)
			{
				star = new FlxSprite(FlxMath.rand(550, 1100), FlxMath.rand(20, 450));
				star.loadGraphic(ImgTest);
				//star.exists = false;
				stars.add(star);
			}
			for (var t:uint = 0; t <= (quantity / 3); t++)
			{
				star = new FlxSprite(FlxMath.rand(1050, 1600), FlxMath.rand(20, 450));
				star.loadGraphic(ImgTest);
				//star.exists = false;
				stars.add(star);
			}
		}
		
		public function StarHit(star:FlxSprite):void
		{
			//trace("YAY you hit a star");
			
		}
		
		public function EndFlight():void
		{
				trace("Ran out of flaps, all done. A to accept, D to restart.");
				cam.follow(null);
				done = true;
				owl.velocity.y = 0;
				owl.acceleration.y = 0;
		}
		
		public function PlaySong():void
		{
			if (Registry.song.currentNote == 1)
			{
				Registry.song.note1.play();
				Registry.song.timer = new FlxDelay(Registry.song.times[0] * 1000);
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 2 && Registry.song.timer.hasExpired)
			{
				Registry.song.note2.play();
				Registry.song.timer.duration = Registry.song.times[1] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 3 && Registry.song.timer.hasExpired)
			{
				Registry.song.note3.play();
				Registry.song.timer.duration = Registry.song.times[2] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 4 && Registry.song.timer.hasExpired)
			{
				Registry.song.note4.play();
				Registry.song.timer.duration = Registry.song.times[3] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 5 && Registry.song.timer.hasExpired)
			{
				Registry.song.note5.play();
				Registry.song.timer.duration = Registry.song.times[4] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 6 && Registry.song.timer.hasExpired)
			{
				Registry.song.note6.play();
				Registry.song.timer.duration = Registry.song.times[5] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 7 && Registry.song.timer.hasExpired)
			{
				Registry.song.note7.play();
				Registry.song.timer.duration = Registry.song.times[6] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 8 && Registry.song.timer.hasExpired)
			{
				Registry.song.note8.play();
				Registry.song.timer.duration = Registry.song.times[7] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 9 && Registry.song.timer.hasExpired)
			{
				Registry.song.note9.play();
				Registry.song.timer.duration = Registry.song.times[8] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 10 && Registry.song.timer.hasExpired)
			{
				Registry.song.note10.play();
				Registry.song.timer.duration = Registry.song.times[9] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 11 && Registry.song.timer.hasExpired)
			{
				Registry.song.note11.play();
				Registry.song.timer.duration = Registry.song.times[10] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 12 && Registry.song.timer.hasExpired)
			{
				Registry.song.note12.play();
				Registry.song.timer.duration = Registry.song.times[11] * 1000;
				Registry.song.timer.start();
				Registry.song.currentNote++;
			}
			if (Registry.song.currentNote == 13)
			{
				played = true;
			}
		}
		
	}

}