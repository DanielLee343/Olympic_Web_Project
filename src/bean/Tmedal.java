package bean;

public class Tmedal {
	private int teid;
	private int gold;
	private int silver;
	private int bronze;

	public Tmedal() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tmedal(int teid, int gold, int silver, int bronze) {
		super();
		this.teid = teid;
		this.gold = gold;
		this.silver = silver;
		this.bronze = bronze;
	}

	public int getTeid() {
		return teid;
	}

	public void setTeid(int teid) {
		this.teid = teid;
	}

	public int getGold() {
		return gold;
	}

	public void setGold(int gold) {
		this.gold = gold;
	}

	public int getSilver() {
		return silver;
	}

	public void setSilver(int silver) {
		this.silver = silver;
	}

	public int getBronze() {
		return bronze;
	}

	public void setBronze(int bronze) {
		this.bronze = bronze;
	}

}
