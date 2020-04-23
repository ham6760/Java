package mrh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mrh.db.DBCon;
import mrh.vo.MBoard;

public class MBoardDao {

	public List<MBoard> getBoards() throws Exception {
		String sql="select * from mrhtbl";
		
		Connection con=DBCon.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		
		List<MBoard> list=new ArrayList<MBoard>();
		
		while (rs.next()) {
			MBoard m=new MBoard();
			m.setMseq(rs.getString("mseq"));
			m.setMtitle(rs.getString("mtitle"));
			m.setMwriter(rs.getString("mwriter"));
			list.add(m);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return list;
		
	}

}
