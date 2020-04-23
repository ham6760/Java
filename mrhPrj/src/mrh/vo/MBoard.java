package mrh.vo;

import java.util.Date;

public class MBoard {
	private String mseq;
	private String mtitle;
	private String mwriter;
	private String mcontent;
	private Date mregdate;
	private int mhit;
	
	public String getMseq() {
		return mseq;
	}
	public void setMseq(String mseq) {
		this.mseq = mseq;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMwriter() {
		return mwriter;
	}
	public void setMwriter(String mwriter) {
		this.mwriter = mwriter;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public Date getMregdate() {
		return mregdate;
	}
	public void setMregdate(Date mregdate) {
		this.mregdate = mregdate;
	}
	public int getMhit() {
		return mhit;
	}
	public void setMhit(int mhit) {
		this.mhit = mhit;
	}	
				

}
