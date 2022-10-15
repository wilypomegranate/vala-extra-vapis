[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename="nanovg.h,nanovg_gl.h")]
namespace NVG {
	[CCode (cname = "enum NVGcreateFlags", cprefix = "NVG_", has_type_id = false)]
	[Flags]
	public enum CreateFlags {
		ANTIALIAS,
		STENCIL_STROKES,
		DEBUG
	}

	[SimpleType]
	[CCode (cname = "NVGcolor", has_type_id = false)]
	public struct Color {
	}

	public Color nvgRGBA(uint8 r, uint8 g, uint8 b, uint8 a);


	[CCode (cname = "NVGcontext", free_function = "nvgDeleteGLES2", has_type_id = false)]
	[Compact]
	public class GLES2Context {
		[CCode (cname = "nvgCreateGLES2")]
		public static GLES2Context? create_gles2(CreateFlags flags);

		[CCode (cname = "nvgBeginFrame")]
		public void begin_frame(float windowWidth, float windowHeight, float devicePixelRatio);

		[CCode (cname = "nvgEndFrame")]
		public void end_frame();

		[CCode (cname = "nvgBeginPath")]
		public void begin_path();

		[CCode (cname = "nvgRect")]
		public void rect(float x, float y, float w, float h);

		[CCode (cname = "nvgFillColor")]
		public void fill_color(Color color);

		[CCode (cname = "nvgFill")]
		public void fill();
	}

	// public void nvgFillColor(GLES2Context* ctx, NVGcolor color);
}
