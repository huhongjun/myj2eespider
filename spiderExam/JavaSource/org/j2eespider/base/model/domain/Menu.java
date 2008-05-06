package org.j2eespider.base.model.domain;

import org.j2eespider.lib.util.strutsmenu.IMenu;
import java.util.List;

public class Menu implements IMenu {
	private String icone;
	private String iconeAlt;
	private Integer idMenu;
	private Integer idMenuSuperior;
	private String url;
	private String target;
	private String title;
	private String tooltip;
	
	public Menu(String icone, String iconeAlt, Integer idMenu, Integer idMenuSuperior, String url, String target, String title, String tooltip) {
		super();
		this.icone = icone;
		this.iconeAlt = iconeAlt;
		this.idMenu = idMenu;
		this.idMenuSuperior = idMenuSuperior;
		this.url = url;
		this.target = target;
		this.title = title;
		this.tooltip = tooltip;
	}
	
	public Menu(List<IMenu> listMenu, String parentName, String icone, String iconeAlt, String url, String target, String title, String tooltip) {
		super();
		this.icone = icone;
		this.iconeAlt = iconeAlt;
		this.url = url;
		this.target = target;
		this.title = title;
		this.tooltip = tooltip;
		
		int count=1;
		for (IMenu menu : listMenu) {
			if (menu.getTitle().equals(parentName)) {
				this.idMenuSuperior = menu.getIdMenu();
			}
			count++;
		}
		
		this.idMenu = count+1;
	}

	public String getIcone() {
		return icone;
	}

	public String getIconeAlt() {
		return iconeAlt;
	}

	public Integer getIdMenu() {
		return idMenu;
	}

	public Integer getIdMenuSuperior() {
		return idMenuSuperior;
	}

	public String getTarget() {
		return target;
	}

	public String getTitle() {
		return title;
	}

	public String getToolTip() {
		return tooltip;
	}

	public String getUrl() {
		return url;
	}

}
