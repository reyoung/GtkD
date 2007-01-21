/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = /usr/share/doc/libgtkglext1-doc/html/gtkglext/gtkglext-gdkglquery.html
 * outPack = glgdk
 * outFile = GLQuery
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLQuery
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_query_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * structWrap:
 * 	- GdkDisplay* -> Display
 * local aliases:
 */

module glgdk.GLQuery;

private import glgdk.glgdktypes;

private import lib.glgdk;

private import glib.Str;
private import gdk.Display;

/**
 * Description
 */
public class GLQuery
{
	
	/**
	 */
	
	
	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 * Returns : TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static int extension()
	{
		// gboolean gdk_gl_query_extension (void);
		return gdk_gl_query_extension();
	}
	
	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 * display : the GdkDisplay where the query is sent to.
	 * Returns : TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static int extensionForDisplay(Display display)
	{
		// gboolean gdk_gl_query_extension_for_display  (GdkDisplay *display);
		return gdk_gl_query_extension_for_display((display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 * In the X Window System, it returns the GLX version.
	 * In the Microsoft Windows, it returns the Windows version.
	 * major : returns the major version number of the OpenGL extension.
	 * minor : returns the minor version number of the OpenGL extension.
	 * Returns : FALSE if it fails, TRUE otherwise.
	 */
	public static int versio(int* major, int* minor)
	{
		// gboolean gdk_gl_query_version (int *major,  int *minor);
		return gdk_gl_query_version(major, minor);
	}
	
	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 * In the X Window System, it returns the GLX version.
	 * In the Microsoft Windows, it returns the Windows version.
	 * display : the GdkDisplay where the query is sent to.
	 * major : returns the major version number of the OpenGL extension.
	 * minor : returns the minor version number of the OpenGL extension.
	 * Returns : FALSE if it fails, TRUE otherwise.
	 */
	public static int versionForDisplay(Display display, int* major, int* minor)
	{
		// gboolean gdk_gl_query_version_for_display  (GdkDisplay *display,  int *major,  int *minor);
		return gdk_gl_query_version_for_display((display is null) ? null : display.getDisplayStruct(), major, minor);
	}
	
	/**
	 * Determines whether a given OpenGL extension is supported.
	 * There must be a valid current rendering context to call
	 * gdk_gl_query_gl_extension().
	 * gdk_gl_query_gl_extension() returns information about OpenGL extensions
	 * only. This means that window system dependent extensions (for example,
	 * GLX extensions) are not reported by gdk_gl_query_gl_extension().
	 * extension : name of OpenGL extension.
	 * Returns : TRUE if the OpenGL extension is supported, FALSE if not
	 *  supported.
	 */
	public static int glExtension(char[] extension)
	{
		// gboolean gdk_gl_query_gl_extension (const char *extension);
		return gdk_gl_query_gl_extension(Str.toStringz(extension));
	}
	
	/**
	 * Returns the address of the OpenGL, GLU, or GLX function.
	 * proc_name : function name.
	 * Returns : the address of the function named by proc_name.
	 * << InitializationFrame Buffer Configuration >>
	 */
	public static GdkGLProc gdkGLGetProcAddress(char[] procName)
	{
		// GdkGLProc gdk_gl_get_proc_address (const char *proc_name);
		return gdk_gl_get_proc_address(Str.toStringz(procName));
	}
}