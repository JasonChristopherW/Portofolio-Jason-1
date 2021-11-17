import java.util.Scanner;
import java.util.Vector;

public class Main {
	Scanner scan = new Scanner(System.in);
	Vector<Hero> heroVec = new Vector<>();
	
	private void addNewHero() {
		String job = "";
		String name = "";
		String desc = "";
		Integer attack;
		Integer defense;
		String magicAttribute = "";
		String weaponType = "";
		Hero newHero;
		
		do {
			System.out.println("Hero's job [Knight | Mage] : ");
			scan.nextLine();
			job = scan.nextLine();
		} while (!job.equals("Mage") && !job.equals("Knight"));
		do {
			System.out.println("Hero's name [5 - 20 words] : ");
			name = scan.nextLine();
		} while (name.length() < 5 || name.length() > 20);
		do {
			System.out.println("Describe the hero [Must start with 'This hero is'] : ");
			desc = scan.nextLine();
		} while (!desc.startsWith("This hero is"));
		do {
			System.out.println("Hero's attack [Must be more than 5] : ");
			attack = scan.nextInt();
		} while (attack <= 5);
		do {
			System.out.println("Hero's defense [Must be more than 2] : ");
			defense = scan.nextInt();scan.nextLine();
		} while (defense <= 2);
		if(job.equals("Mage")) {
			do {
				System.out.println("Magic Attribute [Fire | Water | Air]: ");
				magicAttribute = scan.nextLine();
			} while (!magicAttribute.equals("Fire") && !magicAttribute.equals("Water") && !magicAttribute.equals("Air"));
			newHero = new Mage(name, desc, attack, defense, magicAttribute);
			heroVec.add(newHero);
			newHero.printInfo();
		}
		else if(job.equals("Knight")) {
			do {
				System.out.println("Weapon Type [Sword | Axe | Lance]: ");
				weaponType = scan.nextLine();
			} while (!weaponType.equals("Sword") && !weaponType.equals("Axe") && !weaponType.equals("Lance"));
			newHero = new Knight(name, desc, attack, defense, weaponType);
			heroVec.add(newHero);
			newHero.printInfo();
		}
	}
	
	private void viewAllHeroes() {
		System.out.println("Hero List");
		int counter = 1;
		for (Hero hero : heroVec) {
			System.out.println("" +counter);
			hero.printInfo();
			System.out.println("");
			counter++;
		}
	}
	
	private void updateHeroStats() {
		viewAllHeroes();
		int input = -1;
		int input2 = 0;
		String name = "";
		String desc = "";
		Integer attack = 0;
		Integer defense = 0;

		do {
			System.out.println("Select which hero you wish to edit : ");
			input = scan.nextInt();
			System.out.println("Select which stats you wish to edit : ");
			System.out.println("1. Heroes name");
			System.out.println("2. Heroes desc");
			System.out.println("3. Heroes attack");
			System.out.println("4. Heroes defense");
			input2 = scan.nextInt();
		} while (input < 1 || input > heroVec.size());		
		if(input2 == 1) {
			do {
				System.out.println("Hero's name [5 - 20 words] : ");
				scan.nextLine();
				name = scan.nextLine();
			} while (name.length() < 5 || name.length() > 20);
			heroVec.get(input - 1).setName(name);
		}
		else if(input2 == 2) {
			do {
				System.out.println("Describe the hero [Must start with 'This hero is'] : ");
				scan.nextLine();
				desc = scan.nextLine();
			} while (!desc.startsWith("This hero is"));
			heroVec.get(input - 1).setDesc(desc);
		}
		else if(input2 == 3) {
			do {
				System.out.println("Hero's attack [Must be more than 5] : ");
				scan.nextLine();
				attack = scan.nextInt();
			} while (attack <= 5);
			heroVec.get(input - 1).setAttack(attack);
		}
		else if(input2 == 4) {
			do {
				System.out.println("Hero's defense [Must be more than 2] : ");
				scan.nextLine();
				defense = scan.nextInt();
			} while (defense <= 2);
			heroVec.get(input - 1).setDefense(defense);
		}
	}
	
	public void mainMenu() {
		int input = 0;
		do {
			System.out.println("GrandRun");
			System.out.println("========");
			System.out.println("1. Add New Hero");
			System.out.println("2. View All Heroes");
			System.out.println("3. Update Hero Stats");
			System.out.println("4. Exit");
			input = scan.nextInt();
			switch (input) {
			case 1:		
				addNewHero();
				break;
			case 2:
				viewAllHeroes();
				break;
			case 3:
				updateHeroStats();
				break;
			}
		} while (input != 4);
	}

	public Main() {
		mainMenu();
	}

	public static void main(String[] args) {
		new Main();

	}

}
