package kosta.bean;

public class Member {
	
	String name;
	String address;
	String phoneNum;
	
	public Member(){}

	public Member(String name, String address, String phoneNum) {
		super();
		this.name = name;
		this.address = address;
		this.phoneNum = phoneNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	@Override
	public String toString() {
		return "Member [name=" + name + ", address=" + address + ", phoneNum=" + phoneNum + "]";
	}
	
	
}
