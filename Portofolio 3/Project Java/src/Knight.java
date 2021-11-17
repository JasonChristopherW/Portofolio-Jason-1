
public class Knight extends Hero {

	private String weaponType;

	public Knight(String name, String desc, Integer attack, Integer defense, String weaponType) {
		super(name, desc, attack, defense);
		this.weaponType = weaponType;
		this.setHp(getHp());
	}

	public String getWeaponType() {
		return weaponType;
	}

	public void setWeaponType(String weaponType) {
		this.weaponType = weaponType;
	}
	
	public Integer getHp() {
		return 150 + (getAttack() - getDefense());
	}

	@Override
	public void printInfo() {
		System.out.println("Job : Knight" );
		System.out.println("Name : " + getName());
		System.out.println("Description : " + getDesc());
		System.out.println("Attack : " + getAttack());
		System.out.println("Defense : " + getDefense());
		System.out.println("HP : " + getHp());
		System.out.println("Weapon Type : " + getWeaponType());	
	}

}
