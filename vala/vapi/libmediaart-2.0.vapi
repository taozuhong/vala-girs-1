/* libmediaart-2.0.vapi generated by vapigen-0.36, do not modify. */

[CCode (cprefix = "MediaArt", gir_namespace = "MediaArt", gir_version = "2.0", lower_case_cprefix = "media_art_")]
namespace MediaArt {
	[CCode (cheader_filename = "libmediaart/mediaart.h", type_id = "media_art_process_get_type ()")]
	public class Process : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.5.0")]
		public Process () throws GLib.Error;
		[Version (since = "0.5.0")]
		public bool buffer (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File related_file, [CCode (array_length_cname = "len", array_length_pos = 4.5, array_length_type = "gsize")] uint8[]? buffer, string? mime, string? artist, string? title, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "0.7.0")]
		public async bool buffer_async (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File related_file, [CCode (array_length_cname = "len", array_length_pos = 4.5, array_length_type = "gsize")] uint8[]? buffer, string mime, string? artist, string? title, int io_priority, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "0.3.0")]
		public bool file (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File file, string? artist, string? title, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "0.7.0")]
		public async bool file_async (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File file, string? artist, string? title, int io_priority, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "0.5.0")]
		public bool uri (MediaArt.Type type, MediaArt.ProcessFlags flags, string uri, string? artist, string? title, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "0.7.0")]
		public async bool uri_async (MediaArt.Type type, MediaArt.ProcessFlags flags, string uri, string? artist, string? title, int io_priority, GLib.Cancellable? cancellable) throws GLib.Error;
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_PROCESS_FLAGS_", has_type_id = false)]
	[Flags]
	[Version (since = "0.3.0")]
	public enum ProcessFlags {
		NONE,
		FORCE
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_", has_type_id = false)]
	public enum Type {
		NONE,
		ALBUM,
		VIDEO
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_ERROR_")]
	[Version (since = "0.2.0")]
	public errordomain Error {
		NO_STORAGE,
		NO_TITLE,
		SYMLINK_FAILED,
		RENAME_FAILED,
		NO_CACHE_DIR;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.1.0")]
	public static bool buffer_to_jpeg ([CCode (array_length_cname = "len", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] buffer, string buffer_mime, string target) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.1.0")]
	public static bool file_to_jpeg (string filename, string target) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.2.0")]
	public static bool get_file (string? artist, string? title, string? prefix, out GLib.File cache_file);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.2.0")]
	public static bool get_path (string? artist, string? title, string? prefix, out string cache_path);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.1.0")]
	public static void plugin_init (int max_width);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.1.0")]
	public static void plugin_shutdown ();
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.2.0")]
	public static bool remove (string artist, string? album, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.7.0")]
	public static async bool remove_async (string artist, string? album, int io_priority, GLib.Object? source_object, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	[Version (since = "0.2.0")]
	public static string strip_invalid_entities (string original);
}
