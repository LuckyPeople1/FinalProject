package com.dassa.vo;

import java.util.List;

public class UserPageDataVO {
	private List<UserVO> list;
	private String pageNavi;
	
	public List<UserVO> getList() {
		return list;
	}
	public void setList(List<UserVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	public UserPageDataVO(List<UserVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	
	public UserPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public static String checkPaging(int reqPage, int pageNo, String pageNavi, int pageNaviSize, int totalPage, String status, String userType, String userType1, String userType2){
		if(userType1 != null && userType2 != null) {
			//전체 승인
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}
		return pageNavi;
	}
	public static String Paging(int reqPage, int pageNo, String pageNavi, int pageNaviSize, int totalPage, String status, String userType) {
		if(userType == null && status.equals("2")) {
			//전체 승인 user_id like #{searchWord} and user_Type=#{userType} and status=#{status}
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?userType="+userType+"&status="+status+"'&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?userType="+userType+"&status="+status+"'&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?userType="+userType+"&status="+status+"'&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?userType="+userType+"&status="+status+"'&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("1") && userType.equals("1")  ) {
			//운송기사
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("1") && userType.equals("2")) {
			//부동산
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}//status(1) and userType(2)
		
		
		
		else if(status.equals("1") && userType.equals("3")) {
			int i = 1;
			//일반
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			while(!(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				System.out.println("돌아가냐?"+totalPage);
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}//status(1) and userType(3)
		
		
		
		else if(status.equals("2") && userType.equals("1")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("2") && userType.equals("2")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("2") && userType.equals("3")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("1")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("2")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("3")){
			//전체 승인
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}
		return pageNavi;
	}
}
