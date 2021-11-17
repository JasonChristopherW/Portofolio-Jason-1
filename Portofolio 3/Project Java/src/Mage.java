
public class Mage extends Hero {

	private String magicAttribute;

	public Mage(String name, String desc, Integer attack, Integer defense, String magicAttribute) {
		super(name, desc, attack, defense);
		this.magicAttribute = magicAttribute;
		this.setHp(getHp());
	}

	public String getMagicAttribute() {
		return magicAttribute;
	}

	public void setMagicAttribute(String magicAttribute) {
		this.magicAttribute = magicAttribute;
	}
	
	public Integer getHp() {
		return 100 + (getAttack() - getDefense());
	}

	@Override
	public void printInfo() {
		System.out.println("Job : Mage" );
		System.out.println("Name : " + getName());
		System.out.println("Description : " + getDesc());
		System.out.println("Attack : " + getAttack());
		System.out.println("Defense : " + getDefense());
		System.out.println("HP : " + getHp());
		System.out.println("Magic Attribute : " + getMagicAttribute());
	}
		
}
