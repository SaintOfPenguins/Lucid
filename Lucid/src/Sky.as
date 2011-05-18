package  
{
	import org.flixel.*;
	import Flight;
	import org.flixel.plugin.photonstorm.FlxButtonPlus;
	import org.flixel.plugin.photonstorm.FlxStarField;
	
	/**
	 * ...
	 * @author Me
	 */
	public class Sky extends FlxState 
	{
		[Embed(source = "/assets/test1.mp3")] private var TestSnd:Class;
		
		private var star1:FlxButtonPlus;
		private var star2:FlxButtonPlus;
		private var star3:FlxButtonPlus;
		private var star4:FlxButtonPlus;
		private var star5:FlxButtonPlus;
		private var star6:FlxButtonPlus;
		private var star7:FlxButtonPlus;
		private var star8:FlxButtonPlus;
		private var star9:FlxButtonPlus;
		private var star10:FlxButtonPlus;
		private var star11:FlxButtonPlus;
		private var star12:FlxButtonPlus;
		private var star13:FlxButtonPlus;
		private var star14:FlxButtonPlus;
		private var star15:FlxButtonPlus;
		private var star16:FlxButtonPlus;
		private var star17:FlxButtonPlus;
		private var star18:FlxButtonPlus;
		private var star19:FlxButtonPlus;
		private var star20:FlxButtonPlus;
		private var star21:FlxButtonPlus;
		private var star22:FlxButtonPlus;
		private var star23:FlxButtonPlus;
		private var star24:FlxButtonPlus;
		private var star25:FlxButtonPlus;
		
		private var starfield:FlxStarField;
		
		private var starcounter:Number;
		private var done:Boolean;
		
		private var flight:Flight;
		
		public function Sky() 
		{
			starfield = new FlxStarField(0, 0, 640, 480);
			starfield.setStarSpeed(0, 0);
			add(starfield);
			done = false;
			starcounter = 0;
			FlxG.mouse.show();
			star1 = new Star(100, 100, StarClicked, [1]);
			star1.setMouseOverCallback(StarHover, [1]);
			add(star1);
			star2 = new Star(300, 100, StarClicked, [2]);
			star2.setMouseOverCallback(StarHover, [2]);
			add(star2);
			flight = new Flight();
		}
		
		override public function update():void
		{
			if (starcounter >= 12 && !done)
			{
				trace("MAX NUMBER OF STARS HAS BEEN REACHED. ACCEPT OR RESET");
				done = true;
				FlxG.mouse.hide();
				//Registry.song.PlaySong();
				
			}
			if (starcounter >= 12)
			{
				if (FlxG.keys.justPressed("A"))
				{
					trace("CHANGES HAVE BEEN ACCEPTED, SAVING SONG AND MOVING ON WITH LIFE");
					FlxG.switchState(flight);
				}
				if (FlxG.keys.justPressed("D"))
				{
					trace("CHANGES HAVE BEEN DENIED, RESETTING SONG AND STARTING OVER");
					Reset();
				}
	
			}
			
			if (FlxG.keys.justPressed("M"))
			{
				trace(Registry.song.testnumber);
				Registry.song.testnote = new FlxSound();
				Registry.song.testnote.loadEmbedded(Registry.song.Test1);
				Registry.song.testnote.play();
				trace("BLARG, PLAYSONG IS TRUE NOOB");
			}
			
			
			super.update();
		}
		
		public function StarHover(star:Number):void
		{
			trace("Cursor Hovered on Star" + star);
			FlxG.play(Registry.song.Test1);
			
		}
		
		public function StarClicked(starnumber:Number):void
		{
			trace("Cursor clicked on Star" + starnumber);
			starcounter++;
			switch (starcounter)
			{
				case 1:
				switch (starnumber)
				{
					case 1:
					Registry.song.note1.loadEmbedded(Registry.song.Test1);
					Registry.song.note1.play();
					trace("Test number is now " + Registry.song.testnumber);
					trace("The first star is now mapped to C3");
					break;
					/*case 2:
					Registry.song.note1 = Registry.song.CS_3;
					trace("The first star is now mapped to CSharp3");
					break;
					case 3:
					Registry.song.note1 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note1 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note1 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note1 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note1 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note1 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note1 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note1 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note1 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note1 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note1 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note1 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note1 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note1 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note1 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note1 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note1 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note1 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note1 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note1 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note1 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note1 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note1 = Registry.song.C_5;
					break;*/
					default:
					trace("Something went wrong... starnumber is incorrect.");
				}
				break;
				case 2:
				switch (starnumber)
				{
					/*case 1:
					Registry.song.note2 = Registry.song.C_3;
					trace("The second star is now mapped to C3");
					break;*/
					case 2:
					Registry.song.note2.loadEmbedded(Registry.song.Test2);
					Registry.song.note2.play();
					trace("The second star is now mapped to CSharp3");
					break;
					/*case 3:
					Registry.song.note2 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note2 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note2 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note2 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note2 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note2 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note2 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note2 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note2 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note2 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note2 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note2 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note2 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note2 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note2 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note2 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note2 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note2 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note2 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note2 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note2 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note2 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note2 = Registry.song.C_5;
					break;*/
					
				}
				break;
				/*case 3:
				switch (starnumber)
				{
					case 1:
					Registry.song.note3 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note3 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note3 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note3 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note3 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note3 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note3 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note3 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note3 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note3 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note3 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note3 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note3 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note3 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note3 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note3 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note3 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note3 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note3 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note3 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note3 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note3 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note3 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note3 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note3 = Registry.song.C_5;
					break;
				}
				break;
				case 4:
				switch (starnumber)
				{
										case 1:
					Registry.song.note4 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note4 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note4 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note4 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note4 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note4 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note4 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note4 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note4 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note4 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note4 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note4 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note4 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note4 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note4 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note4 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note4 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note4 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note4 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note4 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note4 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note4 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note4 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note4 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note4 = Registry.song.C_5;
					break;
				}
				break;
				case 5:
				switch (starnumber)
				{
										case 1:
					Registry.song.note5 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note5 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note5 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note5 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note5 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note5 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note5 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note5 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note5 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note5 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note5 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note5 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note5 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note5 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note5 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note5 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note5 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note5 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note5 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note5 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note5 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note5 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note5 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note5 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note5 = Registry.song.C_5;
					break;
				}
				break;
				case 6:
				switch (starnumber)
				{
										case 1:
					Registry.song.note6 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note6 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note6 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note6 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note6 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note6 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note6 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note6 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note6 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note6 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note6 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note6 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note6 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note6 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note6 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note6 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note6 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note6 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note6 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note6 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note6 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note6 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note6 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note6 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note6 = Registry.song.C_5;
					break;
				}
				break;
				case 7:
				switch (starnumber)
				{
					case 1:
					Registry.song.note7 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note7 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note7 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note7 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note7 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note7 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note7 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note7 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note7 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note7 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note7 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note7 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note7 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note7 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note7 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note7 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note7 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note7 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note7 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note7 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note7 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note7 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note7 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note7 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note7 = Registry.song.C_5;
					break;
				}
				break;
				case 8:
				switch (starnumber)
				{
										case 1:
					Registry.song.note8 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note8 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note8 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note8 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note8 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note8 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note8 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note8 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note8 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note8 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note8 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note8 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note8 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note8 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note8 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note8 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note8 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note8 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note8 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note8 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note8 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note8 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note8 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note8 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note8 = Registry.song.C_5;
					break;
				}
				break;
				case 9:
				switch (starnumber)
				{
										case 1:
					Registry.song.note9 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note9 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note9 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note9 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note9 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note9 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note9 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note9 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note9 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note9 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note9 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note9 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note9 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note9 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note9 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note9 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note9 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note9 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note9 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note9 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note9 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note9 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note9 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note9 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note9 = Registry.song.C_5;
					break;
				}
				break;
				case 10:
				switch (starnumber)
				{
										case 1:
					Registry.song.note10 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note10 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note10 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note10 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note10 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note10 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note10 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note10 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note10 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note10 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note10 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note10 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note10 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note10 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note10 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note10 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note10 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note10 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note10 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note10 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note10 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note10 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note10 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note10 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note10 = Registry.song.C_5;
					break;
				}
				break;
				case 11:
				switch (starnumber)
				{
										case 1:
					Registry.song.note11 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note11 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note11 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note11 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note11 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note11 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note11 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note11 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note11 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note11 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note11 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note11 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note11 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note11 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note11 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note11 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note11 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note11 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note11 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note11 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note11 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note11 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note11 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note11 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note11 = Registry.song.C_5;
					break;
				}
				break;
				case 12:
				switch (starnumber)
				{
										case 1:
					Registry.song.note12 = Registry.song.C_3;
					break;
					case 2:
					Registry.song.note12 = Registry.song.CS_3;
					break;
					case 3:
					Registry.song.note12 = Registry.song.D_3;
					break;
					case 4:
					Registry.song.note12 = Registry.song.DS_3;
					break;
					case 5:
					Registry.song.note12 = Registry.song.E_3;
					break;
					case 6:
					Registry.song.note12 = Registry.song.F_3;
					break;
					case 7:
					Registry.song.note12 = Registry.song.FS_3;
					break;
					case 8:
					Registry.song.note12 = Registry.song.G_3;
					break;
					case 9:
					Registry.song.note12 = Registry.song.GS_3;
					break;
					case 10:
					Registry.song.note12 = Registry.song.A_3;
					break;
					case 11:
					Registry.song.note12 = Registry.song.AS_3;
					break;
					case 12:
					Registry.song.note12 = Registry.song.B_3;
					break;
					case 13:
					Registry.song.note12 = Registry.song.C_4;
					break;
					case 14:
					Registry.song.note12 = Registry.song.CS_4;
					break;
					case 15:
					Registry.song.note12 = Registry.song.D_4;
					break;
					case 16:
					Registry.song.note12 = Registry.song.DS_4;
					break;
					case 17:
					Registry.song.note12 = Registry.song.E_4;
					break;
					case 18:
					Registry.song.note12 = Registry.song.F_4;
					break;
					case 19:
					Registry.song.note12 = Registry.song.FS_4;
					break;
					case 20:
					Registry.song.note12 = Registry.song.G_4;
					break;
					case 21:
					Registry.song.note12 = Registry.song.GS_4;
					break;
					case 22:
					Registry.song.note12 = Registry.song.A_4;
					break;
					case 23:
					Registry.song.note12 = Registry.song.AS_4;
					break;
					case 24:
					Registry.song.note12 = Registry.song.B_4;
					break;
					case 25:
					Registry.song.note12 = Registry.song.C_5;
					break;
				}
				break;*/
				default:
				trace("Something went wrong... starcounter is incorrect.");
			}
		}
		
		public function Reset():void
		{
			
			FlxG.resetState();
			/*starcounter = 0;
			trace("Changes not accepted, counter has been reset!");
			FlxG.mouse.show();
			done = false;*/
		}
		
		
	}

}