package gangdong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import gangdong.db.DBCon;
import gangdong.vo.Gdboard;

public class GdboardDao {
	
	public int delete(String gdnum) throws Exception{
		String sql="delete from gdboard where gdnum=?";
		
		Connection con=DBCon.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, gdnum);
		int af=pstmt.executeUpdate();
		
		return af;
	}
	
	public int insert(Gdboard gdboard) throws Exception{
		String sql="insert into gdboard values("
		+"(select max(to_number(gdnum))+1 from gdboard),"
		+"?,?,?,sysdate,0)";
		
		Connection con=DBCon.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, gdboard.getGdtitle());
		pstmt.setString(2, gdboard.getGdwriter());
		pstmt.setString(3, gdboard.getGdcontent());
		
		int af=pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
		
		return af;
	}
	
	public int update(Gdboard gdboard) throws Exception {
		String sql="update gdboard set gdtitle=?,gdcontent=? where gdnum=?";
		
		Connection con=DBCon.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, gdboard.getGdtitle());
		pstmt.setString(2, gdboard.getGdcontent());
		pstmt.setString(3, gdboard.getGdnum());
		
		int af=pstmt.executeUpdate();
		System.out.println("af : "+af);
		
		return af;
		
	}

	public Gdboard getGdboard(String gdnum) throws Exception {
		System.out.println("gdboard 지나감");
		
		String sql="select * from gdboard where gdnum="+gdnum;
		
		Connection con=DBCon.getConnection();
		
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		
		Gdboard g=new Gdboard();
		g.setGdnum(rs.getString("gdnum"));
		g.setGdtitle(rs.getString("gdtitle"));
		g.setGdwriter(rs.getString("gdwriter"));
		g.setGdcontent(rs.getString("gdcontent"));
		g.setGddate(rs.getDate("gddate"));
		g.setGdcnt(rs.getInt("gdcnt"));
		
		rs.close();
		st.close();
		con.close();
		
		return g;
	}

	public List<Gdboard> getGdboards(int page, String field, String query) throws Exception {
		int vrow=10;
		
		int srow=1+(page-1)*vrow;
		int erow=vrow+(page-1)*vrow;
		
		String sql="select * from ";
			sql+="(select rownum num,n.* from ";
			sql+="(select * from gdboard ";
			sql+="where "+field+" like ? order by gddate desc) n)";
			sql+=" where num between ? and ?";
			
		Connection con=DBCon.getConnection();
		PreparedStatement pstmt=con.prepareStatement(sql);
		
		pstmt.setString(1, "%"+query+"%");
		pstmt.setInt(2, srow);
		pstmt.setInt(3, erow);
		
		ResultSet rs=pstmt.executeQuery();
		
		List<Gdboard> list = new ArrayList<Gdboard>();
		while (rs.next()) {
			Gdboard g=new Gdboard();
			g.setGdnum(rs.getString("gdnum"));
			g.setGdtitle(rs.getString("gdtitle"));
			g.setGdwriter(rs.getString("gdwriter"));
			g.setGdcontent(rs.getString("gdcontent"));
			g.setGddate(rs.getDate("gddate"));
			g.setGdcnt(rs.getInt("gdcnt"));
			
			list.add(g);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return list;
	}

	public int getCount(String field, String query) throws Exception {
		String sql="select count(*) cnt from gdboard where "+field+" like ?";
		
		Connection con=DBCon.getConnection();
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, "%"+query+"%");
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		int cnt=rs.getInt("cnt");
		
		return cnt;
	}

}
