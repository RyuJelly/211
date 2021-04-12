package chat.model;

public class Chat {
	private String writer;
	private String contents;
	private String regdate;
	
	public Chat() {}

	public Chat(String writer, String contents, String regdate) {
		super();
		this.writer = writer;
		this.contents = contents;
		this.regdate = regdate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
