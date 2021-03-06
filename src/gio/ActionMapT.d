/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GActionMap.html
 * outPack = gio
 * outFile = ActionMapT
 * strct   = GActionMap
 * realStrct=
 * ctorStrct=
 * clss    = ActionMapT
 * interf  = ActionMapIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_action_map_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Action
 * 	- gio.ActionIF
 * structWrap:
 * 	- GAction* -> ActionIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ActionMapT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import gio.Action;
public import gio.ActionIF;




/**
 * The GActionMap interface is implemented by GActionGroup
 * implementations that operate by containing a number of
 * named GAction instances, such as GSimpleActionGroup.
 *
 * One useful application of this interface is to map the
 * names of actions from various action groups to unique,
 * prefixed names (e.g. by prepending "app." or "win.").
 * This is the motivation for the 'Map' part of the interface
 * name.
 */
public template ActionMapT(TStruct)
{
	
	/** the main Gtk struct */
	protected GActionMap* gActionMap;
	
	
	public GActionMap* getActionMapTStruct()
	{
		return cast(GActionMap*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Looks up the action with the name action_name in action_map.
	 * If no such action exists, returns NULL.
	 * Since 2.32
	 * Params:
	 * actionName = the name of an action
	 * Returns: a GAction, or NULL. [transfer none]
	 */
	public ActionIF lookupAction(string actionName)
	{
		// GAction * g_action_map_lookup_action (GActionMap *action_map,  const gchar *action_name);
		auto p = g_action_map_lookup_action(getActionMapTStruct(), Str.toStringz(actionName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Action)(cast(GAction*) p);
	}
	
	/**
	 * A convenience function for creating multiple GSimpleAction instances
	 * and adding them to a GActionMap.
	 * Each action is constructed as per one GActionEntry.
	 * $(DDOC_COMMENT example)
	 * Since 2.32
	 * Params:
	 * entries = a pointer to
	 * the first item in an array of GActionEntry structs. [array length=n_entries][element-type GActionEntry]
	 * nEntries = the length of entries, or -1 if entries is NULL-terminated
	 * userData = the user data for signal connections
	 */
	public void addActionEntries(GActionEntry[] entries, void* userData)
	{
		// void g_action_map_add_action_entries (GActionMap *action_map,  const GActionEntry *entries,  gint n_entries,  gpointer user_data);
		g_action_map_add_action_entries(getActionMapTStruct(), entries.ptr, cast(int) entries.length, userData);
	}
	
	/**
	 * Adds an action to the action_map.
	 * If the action map already contains an action with the same name
	 * as action then the old action is dropped from the action map.
	 * The action map takes its own reference on action.
	 * Since 2.32
	 * Params:
	 * action = a GAction
	 */
	public void addAction(ActionIF action)
	{
		// void g_action_map_add_action (GActionMap *action_map,  GAction *action);
		g_action_map_add_action(getActionMapTStruct(), (action is null) ? null : action.getActionTStruct());
	}
	
	/**
	 * Removes the named action from the action map.
	 * If no action of this name is in the map then nothing happens.
	 * Since 2.32
	 * Params:
	 * actionName = the name of the action
	 */
	public void removeAction(string actionName)
	{
		// void g_action_map_remove_action (GActionMap *action_map,  const gchar *action_name);
		g_action_map_remove_action(getActionMapTStruct(), Str.toStringz(actionName));
	}
}
