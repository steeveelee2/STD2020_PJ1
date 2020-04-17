package com.steev.std.model.vo;

public class Menu implements java.io.Serializable{
	// 이거 아마 안쓸듯? ㄷㄷㄷ
	private static final long serialVersionUID = 1L;
	
	private String menuName;
	private String menuPic;
	
	public Menu() {}
	
	public Menu(String menuName, String menuPic) {
		this.menuName=menuName;
		this.menuPic=menuPic;
	}
	
	public String getMenuName() {
		return this.menuName;
	}
	
	public String getMenuPic() {
		return this.menuPic;
	}
	
	public void setMenuName(String menuName) {
		this.menuName=menuName;
	}
	
	public void setMenuPic(String menuPic) {
		this.menuPic=menuPic;
	}
	
	@Override
	public String toString() {
		return "NAME = [ "+this.menuName+" ] PIC = [ "+this.menuPic+" ]";
	}
}
