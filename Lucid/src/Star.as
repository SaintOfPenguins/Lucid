package  
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	
	/**
	 * ...
	 * @author Me
	 */
	public class Star extends FlxButtonPlus 
	{
		
		[Embed(source = "assets/ball.png")] private var ImgTest:Class;
		private var staricon:FlxSprite;
		public function Star(X:int, Y:int, Callback:Function, Params:Array = null, Label:String = null, Width:int = 100, Height:int = 20) 
		{
			super(X, Y, Callback, Params, Label, Width, Height);
			staricon = new FlxSprite();
			staricon.loadGraphic(ImgTest);
			loadGraphic(staricon, staricon);
			
		}
		
	}

}