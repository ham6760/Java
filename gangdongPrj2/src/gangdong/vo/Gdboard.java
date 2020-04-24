package gangdong.vo;

import java.util.Date;

public class Gdboard {
	private String gdnum;
	private String gdtitle;
	private String gdwriter;
	private String gdcontent;
	private Date gddate;
	private int gdcnt;
	private String filesrc;
	
	
	
	public String getFilesrc() {
		return filesrc;
	}
	public void setFilesrc(String filesrc) {
		this.filesrc = filesrc;
	}
	public String getGdnum() {
		return gdnum;
	}
	public void setGdnum(String gdnum) {
		this.gdnum = gdnum;
	}
	public String getGdtitle() {
		return gdtitle;
	}
	public void setGdtitle(String gdtitle) {
		this.gdtitle = gdtitle;
	}
	public String getGdwriter() {
		return gdwriter;
	}
	public void setGdwriter(String gdwriter) {
		this.gdwriter = gdwriter;
	}
	public String getGdcontent() {
		return gdcontent;
	}
	public void setGdcontent(String gdcontent) {
		this.gdcontent = gdcontent;
	}
	public Date getGddate() {
		return gddate;
	}
	public void setGddate(Date gddate) {
		this.gddate = gddate;
	}
	public int getGdcnt() {
		return gdcnt;
	}
	public void setGdcnt(int gdcnt) {
		this.gdcnt = gdcnt;
	}

}
