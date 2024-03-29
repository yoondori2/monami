package com.monami.inquiry;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.inquiry.dao.InquiryDAO;
import com.monami.inquiry.dao.InquiryDTO;

public class InquiryListAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		InquiryDAO idao = new InquiryDAO();
		
		String temp = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 보여줄 게시글의 개수
		int pageSize = 10;
		//페이징 처리시 보여줄 페이지의 개수
		int pageCnt = 10;
		
		int totalCnt = idao.getInquiryCnt();
		
		int startRow = (page-1)*pageSize;
		
		int startPage = ((page-1)/pageCnt)*pageCnt+1;
		int endPage = startPage+pageCnt-1;
		
		int totalPage = (totalCnt-1)/pageSize+1;
		
		endPage = endPage>totalPage ? totalPage : endPage;
		
		List<InquiryDTO> inquiryList = idao.getInquiryList(startRow,pageSize,keyword);
		
		req.setAttribute("inquiryList", inquiryList);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("keyword", keyword);
		
		ActionTo transfer = new ActionTo();
		transfer.setPath("/teamin/inquirylist.jsp");
		transfer.setRedirect(false);
		return transfer;
	}
}