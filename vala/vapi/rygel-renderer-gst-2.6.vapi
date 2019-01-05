/* rygel-renderer-gst-2.6.vapi generated by valac 0.43.2.28-b9b6, do not modify. */

namespace Rygel {
	namespace Playbin {
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public class Player : GLib.Object, Rygel.MediaPlayer {
			public static Rygel.Playbin.Player instance () throws GLib.Error;
			public Gst.Element playbin { get; private set; }
			public GLib.List<Rygel.DLNAProfile> supported_profiles { get; }
		}
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public class Renderer : Rygel.MediaRenderer {
			public Renderer (string title);
			public Gst.Element? get_playbin ();
		}
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public errordomain PlayerError {
			NO_ELEMENT
		}
	}
}
