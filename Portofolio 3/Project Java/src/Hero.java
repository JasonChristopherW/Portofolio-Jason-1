
public abstract class Hero {
	private String name;
	private String desc;
	private Integer attack;
	private Integer defense;
	private Integer hp;
	
	public Hero(String name, String desc, Integer attack, Integer defense) {
		super();
		this.name = name;
		this.desc = desc;
		this.attack = attack;
		this.defense = defense;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Integer getAttack() {
		return attack;
	}
	public void setAttack(Integer attack) {
		this.attack = attack;
	}
	public Integer getDefense() {
		return defense;
	}
	public void setDefense(Integer defense) {
		this.defense = defense;
	}
	public Integer getHp() {
		return hp;
	}
	public void setHp(Integer hp) {
		this.hp = hp;
	}
	public abstract void printInfo();
	
}
