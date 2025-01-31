/* template-glib-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Tmpl", gir_namespace = "Template", gir_version = "1.0", lower_case_cprefix = "tmpl_")]
namespace Template {
	[CCode (cheader_filename = "tmpl-glib.h", ref_function = "tmpl_expr_ref", type_id = "tmpl_expr_get_type ()", unref_function = "tmpl_expr_unref")]
	[Compact]
	public class Expr {
		[CCode (has_construct_function = false)]
		public Expr.boolean (bool value);
		public bool eval (global::Template.Scope scope, GLib.Value return_value) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Expr.flow (global::Template.ExprType type, global::Template.Expr condition, global::Template.Expr primary, global::Template.Expr secondary);
		[CCode (has_construct_function = false)]
		public Expr.fn_call (global::Template.ExprBuiltin builtin, global::Template.Expr param);
		public static global::Template.Expr from_string (global::string str) throws GLib.Error;
		public global::Template.Expr new_getattr (global::string attr);
		public global::Template.Expr new_gi_call (global::string name, global::Template.Expr @params);
		public global::Template.Expr new_invert_boolean ();
		public global::Template.Expr new_setattr (global::string attr, global::Template.Expr right);
		[CCode (has_construct_function = false)]
		public Expr.number (double value);
		public global::Template.Expr @ref ();
		[CCode (has_construct_function = false)]
		public Expr.require (global::string typelib, global::string version);
		[CCode (has_construct_function = false)]
		public Expr.simple (global::Template.ExprType type, global::Template.Expr left, global::Template.Expr right);
		[CCode (has_construct_function = false)]
		public Expr.string (global::string value, ssize_t length);
		[CCode (has_construct_function = false)]
		public Expr.symbol_assign (global::string symbol, global::Template.Expr right);
		[CCode (has_construct_function = false)]
		public Expr.symbol_ref (global::string symbol);
		public void unref ();
		[CCode (has_construct_function = false)]
		public Expr.user_fn_call (global::string name, global::Template.Expr param);
	}
	[CCode (cheader_filename = "tmpl-glib.h", ref_function = "tmpl_scope_ref", type_id = "tmpl_scope_get_type ()", unref_function = "tmpl_scope_unref")]
	[Compact]
	public class Scope {
		[CCode (has_construct_function = false)]
		public Scope ();
		public unowned global::Template.Symbol @get (string name);
		public global::Template.Scope new_with_parent ();
		public unowned global::Template.Symbol? peek (string name);
		public global::Template.Scope @ref ();
		public void @set (string name, global::Template.Symbol? symbol);
		public void set_boolean (string name, bool value);
		public void set_double (string name, double value);
		public void set_object (string name, GLib.Object? value);
		public void set_resolver (owned global::Template.ScopeResolver resolver);
		public void set_string (string name, string? value);
		public void set_strv (string name, [CCode (array_length = false, array_null_terminated = true)] string[]? value);
		public void set_value (string name, GLib.Value? value);
		public void set_variant (string name, GLib.Variant? value);
		public void take (string name, owned global::Template.Symbol? symbol);
		public void unref ();
	}
	[CCode (cheader_filename = "tmpl-glib.h", ref_function = "tmpl_symbol_ref", type_id = "tmpl_symbol_get_type ()", unref_function = "tmpl_symbol_unref")]
	[Compact]
	public class Symbol {
		[CCode (has_construct_function = false)]
		public Symbol ();
		public void assign_boolean (bool v_bool);
		public void assign_double (double v_double);
		public void assign_object (GLib.Object? v_object);
		public void assign_string (string v_string);
		public void assign_strv ([CCode (array_length = false, array_null_terminated = true)] string[]? strv);
		public void assign_value (GLib.Value value);
		public void assign_variant (GLib.Variant? v_variant);
		public unowned global::Template.Expr get_expr (out unowned GLib.GenericArray<string>? @params);
		public global::Template.SymbolType get_symbol_type ();
		public void get_value (GLib.Value value);
		public global::Template.Symbol @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "tmpl-glib.h", type_id = "tmpl_template_get_type ()")]
	public class Template : GLib.Object {
		[CCode (has_construct_function = false)]
		public Template (global::Template.TemplateLocator? locator);
		public bool expand (GLib.OutputStream stream, global::Template.Scope? scope, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public string expand_string (global::Template.Scope? scope) throws GLib.Error;
		public unowned global::Template.TemplateLocator get_locator ();
		public bool parse (GLib.InputStream stream, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool parse_file (GLib.File file, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool parse_path (string path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool parse_resource (string path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool parse_string (string input) throws GLib.Error;
		public void set_locator (global::Template.TemplateLocator locator);
		public global::Template.TemplateLocator locator { get; set construct; }
	}
	[CCode (cheader_filename = "tmpl-glib.h", type_id = "tmpl_template_locator_get_type ()")]
	public class TemplateLocator : GLib.Object {
		[CCode (has_construct_function = false)]
		public TemplateLocator ();
		public void append_search_path (string path);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_search_path ();
		public virtual GLib.InputStream locate (string path) throws GLib.Error;
		public void prepend_search_path (string path);
	}
	[CCode (cheader_filename = "tmpl-glib.h", cprefix = "TMPL_EXPR_BUILTIN_", type_id = "tmpl_expr_builtin_get_type ()")]
	public enum ExprBuiltin {
		ABS,
		CEIL,
		FLOOR,
		HEX,
		LOG,
		PRINT,
		REPR,
		SQRT,
		TYPEOF
	}
	[CCode (cheader_filename = "tmpl-glib.h", cprefix = "TMPL_EXPR_", type_id = "tmpl_expr_type_get_type ()")]
	public enum ExprType {
		ADD,
		SUB,
		MUL,
		DIV,
		BOOLEAN,
		NUMBER,
		STRING,
		GT,
		LT,
		NE,
		EQ,
		GTE,
		LTE,
		UNARY_MINUS,
		STMT_LIST,
		IF,
		WHILE,
		SYMBOL_REF,
		SYMBOL_ASSIGN,
		FN_CALL,
		USER_FN_CALL,
		GETATTR,
		SETATTR,
		GI_CALL,
		REQUIRE,
		AND,
		OR,
		INVERT_BOOLEAN
	}
	[CCode (cheader_filename = "tmpl-glib.h", cprefix = "TMPL_SYMBOL_", type_id = "tmpl_symbol_type_get_type ()")]
	public enum SymbolType {
		EXPR,
		VALUE
	}
	[CCode (cheader_filename = "tmpl-glib.h", cprefix = "TMPL_ERROR_")]
	public errordomain Error {
		INVALID_STATE,
		TEMPLATE_NOT_FOUND,
		CIRCULAR_INCLUDE,
		SYNTAX_ERROR,
		LEXER_FAILURE,
		TYPE_MISMATCH,
		INVALID_OP_CODE,
		DIVIDE_BY_ZERO,
		MISSING_SYMBOL,
		SYMBOL_REDEFINED,
		NOT_AN_OBJECT,
		NULL_POINTER,
		NO_SUCH_PROPERTY,
		GI_FAILURE,
		RUNTIME_ERROR,
		NOT_IMPLEMENTED,
		NOT_A_VALUE,
		NOT_A_FUNCTION;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "tmpl-glib.h", instance_pos = 3.9)]
	public delegate bool ScopeResolver (global::Template.Scope scope, string name, global::Template.Symbol symbol);
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_ENABLE_TRACE")]
	public const int ENABLE_TRACE;
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_LOG_LEVEL_TRACE")]
	public const int LOG_LEVEL_TRACE;
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "tmpl-glib.h", cname = "TMPL_VERSION_S")]
	public const string VERSION_S;
	[CCode (cheader_filename = "tmpl-glib.h")]
	[Version (replacement = "Error.quark")]
	public static GLib.Quark error_quark ();
	[CCode (cheader_filename = "tmpl-glib.h")]
	[Version (replacement = "Expr.from_string")]
	public static global::Template.Expr expr_from_string (string str) throws GLib.Error;
}
