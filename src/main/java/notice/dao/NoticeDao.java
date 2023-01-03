package notice.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import notice.db.DbCon;
import notice.vo.Notice;

public class NoticeDao {
	
	
	public List<Notice> getList() throws Exception{
		Connection conn =DbCon.getConnection();
		//접속성공 상태
		String sql = "select * from notices order by to_number(seq) desc";

		//실행
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		//리스트를 담을 그릇
		List<Notice> list=new ArrayList<Notice>();
		while (rs.next()) {
			Notice n=new Notice();
			n.setSeq(rs.getString("seq"));
			n.setTitle(rs.getString("title"));
			n.setWriter(rs.getString("writer"));
			n.setContent(rs.getString("content"));
			n.setRegdate(rs.getDate("regdate"));
			n.setHit(rs.getInt("hit"));
			
			list.add(n);
		}
		return list;
	}
	
	public int insert(Notice notice) {		
		Connection con=null;
		int cnt=0;
		
		try{
		con=DbCon.getConnection();
		String sql="insert into notices values((select max(to_number(seq))+1 from notices),?,'cj',?,systimestamp,0)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, notice.getTitle());
		st.setString(2, notice.getContent());
		cnt=st.executeUpdate();
		/* System.out.print("\n count :"+count); */
		}catch(Exception e){
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int delete(Notice notice) throws Exception {
	
		Connection conn=DbCon.getConnection();
		//접속성공 상태
		// String sql="select * from notices where seq='"+num+"'";
		String sql="delete notices where seq=?";

		//실행
		// Statement st=conn.createStatement();
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, notice.getSeq());
		// ResultSet rs=st.executeQuery(sql);
		int cnt=pstmt.executeUpdate();
		return cnt;
	}
	
	public int update(Notice notice) throws Exception {
		// 전달된 파람을 받아서 데이터베이스의 해당글을 수정

		
		Connection conn=DbCon.getConnection();
		//접속성공 상태
		String sql="update notices set title=?, content=? where seq=?";

		//실행
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, notice.getTitle());
		pstmt.setString(2, notice.getContent());
		pstmt.setString(3, notice.getSeq());
		int cnt=pstmt.executeUpdate();
		return cnt;
	}
	
	public Notice getNotice(String num) throws Exception {
		
		Connection conn=DbCon.getConnection();
		//접속성공 상태
		 String sql="select * from notices where seq=?";

		//실행
		 PreparedStatement pstmt=conn.prepareStatement(sql);
		 pstmt.setString(1, num);
		 ResultSet rs=pstmt.executeQuery();

		rs.next();
		//Notice.java파일에 저장 setting
		Notice n=new Notice();
		n.setSeq(rs.getString("seq"));
		n.setTitle(rs.getString("title"));
		n.setWriter(rs.getString("writer"));
		n.setContent(rs.getString("content"));
		n.setRegdate(rs.getDate("regdate"));
		n.setHit(rs.getInt("hit"));
		
		
		rs.close();
//		st.close();
		pstmt.close();
		conn.close();
		return n;
	}
	
}
