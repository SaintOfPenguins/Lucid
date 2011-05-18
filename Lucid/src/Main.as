package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import org.flixel.*;

	/**
	 * ...
	 * @author SaintOfPenguins
	 */
	[SWF(width="640", height="480", backgroundColor="#000000")]	
	
	public class Main extends FlxGame
	{
		
		
		public function Main():void 
		{
			Registry.completed = false;
			Registry.song = new Song;
			
			super(640, 480, Sky, 1);
			
		}

	}

}