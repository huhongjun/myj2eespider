package org.j2eespider.base.model.rules;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.j2eespider.lib.util.strutsmenu.IMenu;
import org.j2eespider.base.model.domain.Menu;

public class LayoutManager implements Layout {

	public Collection<IMenu> montarMenu() {
		List<IMenu> listMenu = new ArrayList<IMenu>();
		Menu menu = new Menu("", "", 1, null, "", "", "root", "root");
		listMenu.add(menu);
		
		return listMenu;
	}

}
