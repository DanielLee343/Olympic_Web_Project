package bean;

public class Tgame {
	private int gameID;
	private String state;
	private String partA = "To be determined";
	private String partB = "To be determined";
	private String flagA = "img/icon-default.png";
	private String flagB = "img/icon-default.png";
	private int scoreA;
	private int scoreB;
	private String winner;
	private String time;
	private String location;

	public int getGameID() {
		return gameID;
	}

	public void setGameID(int newID) {
		gameID = newID;
	}

	public String getState() {
		return state;
	}

	public void setState(String newST) {
		state = newST;
	}

	public String getPartA() {
		return partA;
	}

	public void setPartA(String newName) {
		partA = newName;
	}

	public String getPartB() {
		return partB;
	}

	public void setPartB(String newName) {
		partB = newName;
	}

	public String getFlagA() {
		return flagA;
	}

	public void setFlagA(String url) {
		flagA = url;
	}

	public String getFlagB() {
		return flagB;
	}

	public void setFlagB(String url) {
		flagB = url;
	}

	public int getScoreA() {
		return scoreA;
	}

	public void setScoreA(int newScore) {
		scoreA = newScore;
	}

	public int getScoreB() {
		return scoreB;
	}

	public void setScoreB(int newScore) {
		scoreB = newScore;
	}

	public String getTime() {
		return time;
	}

	public void setWinner(String win) {
		winner = win;
	}

	public String getWinner() {
		return winner;
	}

	public void setTime(String newTime) {
		time = newTime;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String newLocation) {
		location = newLocation;
	}

}
