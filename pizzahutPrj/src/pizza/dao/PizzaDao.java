package pizza.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pizza.db.DBCon;
import pizza.vo.Pizza;

public class PizzaDao {

	public List<Pizza> getPizzaList() throws Exception {
		System.out.println("getPizzaList signal~~");
		//DB  pizhuttbl에서 데이터 프로젝트로 가져오기 
		Connection con=DBCon.getCon();
		String sql="select * from pizhuttbl";
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		
		ResultSet rs=pstmt.executeQuery();
		
		//list에 담기
		List<Pizza> list=new ArrayList<Pizza>();
		while (rs.next()) {
			Pizza pz=new Pizza();
			pz.setPno(rs.getString("pno"));
			pz.setPmenu(rs.getString("pmenu"));
			pz.setPprice(rs.getInt("pprice"));
			pz.setPdate(rs.getDate("pdate"));
			pz.setPimg(rs.getString("pimg"));
			
			list.add(pz);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return list;
		
	}

	public Pizza getPazza(String pno) throws Exception {
		Connection con=DBCon.getCon();
		
		String sql="select * from pizhuttbl where pno="+pno;
		
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		
		rs.next();
		Pizza pz=new Pizza();
		pz.setPno(rs.getString("pno"));
		pz.setPmenu(rs.getString("pmenu"));
		pz.setPprice(rs.getInt("pprice"));
		pz.setPdate(rs.getDate("pdate"));
		pz.setPimg(rs.getString("pimg"));
		
		rs.close();
		st.close();
		con.close();

		return pz;
	}

}
