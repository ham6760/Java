package book.board.dao;

import java.sql.*;

import book.board.vo.BookBoard;

public class BookBoardDao {
	public int delete(String bno) throws Exception {
		String sql="delete from books where bno=?";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bno);
		
		int af=pstmt.executeUpdate();			
		
		return af;
	}
	
	public int insert(BookBoard bookboard) throws Exception {
		String sql="insert into books values("
				+"(select max(to_number(bno))+1 from books),"
				+"?,?,?,sysdate,0)";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bookboard.getBtitle());
		pstmt.setString(2, bookboard.getBwriter());
		pstmt.setString(3, bookboard.getBcontent());
		
		int af=pstmt.executeUpdate();
		System.out.println("af : "+af);
		pstmt.close();
		con.close();
		
		return af;
	}
	
	public int update(BookBoard bookboard) throws Exception {
		String sql="update books set btitle=?,bcontent=? where bno=?";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bookboard.getBtitle());
		pstmt.setString(2, bookboard.getBcontent());
		pstmt.setString(3, bookboard.getBno());
		
		int af=pstmt.executeUpdate();
		System.out.println("a : "+af);
		pstmt.close();
		con.close();
		
		return af;
	}
	
	public BookBoard getBookBoard(String bno) throws Exception {
		String sql="select * from books where bno="+bno;			

		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);

		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		
		BookBoard b=new BookBoard();
		b.setBno(rs.getString("bno"));
		b.setBtitle(rs.getString("btitle"));
		b.setBwriter(rs.getString("bwriter"));
		b.setBcontent(rs.getString("bcontent"));
		b.setBdate(rs.getDate("bdate"));
		b.setBhit(rs.getInt("bhit"));
		
		rs.close();
		st.close();
		con.close();
		
		return b;
		
	}

}
