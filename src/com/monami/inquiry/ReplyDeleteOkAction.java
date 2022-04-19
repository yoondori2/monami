package com.monami.inquiry;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.reply.dao.ReplyDAO;

public class ReplyDeleteOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ReplyDAO rdao = new ReplyDAO();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String iqr_idx = req.getParameter("iqr_idx");
		
		PrintWriter out = resp.getWriter();
		
		if(rdao.deleteReply(iqr_idx)) {
			out.write("<script>alert('"+iqr_idx+"번 답글 삭제 성공!');");
		}
		else {
			out.write("<script>alert('"+iqr_idx+"번 답글 삭제 실패!');");
		}
		out.write("location.href='"+req.getContextPath()+"/inquiry/InquiryView.mo?iqr_idx="+iqr_idx+"'");
		out.write("</script>");
		return null;
	}
	
}