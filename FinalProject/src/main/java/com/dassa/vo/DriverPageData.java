package com.dassa.vo;



public class DriverPageData {
	
	//조회검색
	private String userName;
	private String minDate;
	private String maxDate;
	private String reviewTitle;
	
	 public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMinDate() {
		return minDate;
	}

	public void setMinDate(String minDate) {
		this.minDate = minDate;
	}

	public String getMaxDate() {
		return maxDate;
	}

	public void setMaxDate(String maxDate) {
		this.maxDate = maxDate;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public int getStartList() {
		return startList;
	}

	public void setStartList(int startList) {
		this.startList = startList;
	}

	public DriverPageData(String userName, String minDate, String maxDate, String reviewTitle) {
		super();
		this.userName = userName;
		this.minDate = minDate;
		this.maxDate = maxDate;
		this.reviewTitle = reviewTitle;
	}
	//현재 페이지(현재목록의 페이지번호) 
	private int page;
	
	//현재 페이지 범위(각 페이지 범위 시작 번호)
	private int range;
	
	//총 게시물 개수 (전체 게시물의 개수)
	private int listCnt;
    
	//총 페이지 범위의 개수(전체 페이지 범위의 개수)
	private int pageCnt;
	
	//한 페이지 목록의 개수(한 페이지당 보여질 리스트의 개수)
	private int listSize =10;
	
	//한 페이지 범위의 개수 (한 페이지 범위에 보여질 페이지의 개수)
	private int rangeSize =5;
	
	//시작번호(각 페이지 범위 시작 번호)
	private int startPage;
	
	//끝 번호 (각 페이지 범위 끝 번호)
	private int endPage;
	
	//이전 페이지 (이전 페이지 여부)
	private boolean prev;
	
	//다음 페이지 (다음 페이지 여부)
	private boolean next;
	
	//게시판 시작번호 시작페이지를 따로 구함...
	private int startList;

	public DriverPageData(int page, int range, int listCnt, int pageCnt, int listSize, int rangeSize, int startPage,
			int endPage, boolean prev, boolean next) {
		super();
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		this.pageCnt = pageCnt;
		this.listSize = listSize;
		this.rangeSize = rangeSize;
		this.startPage = startPage;
		this.endPage = endPage;
		this.prev = prev;
		this.next = next;
	}

	public DriverPageData() {
		super();
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
	public void pageInfo(int page, int range, int listCnt) {
		//page 현재 페이지 정보
		//range 현재 페이지 범위 정보
		//listCnt 게시물의 총 개수
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;

		//전체 페이지수 구하기 
		this.pageCnt = (listCnt%listSize==0)?(listCnt/listSize):(listCnt/listSize)+1; //페이지에서 1 2 3 4 5 를 만드는 로직
		/*(int) Math.ceil(listCnt/listSize);*/
		System.out.println("전체페이지수"+pageCnt);
		//시작 번호 구하기
		this.startPage = (range - 1) * rangeSize + 1 ;

		//끝 번호 구하기
		this.endPage = range * rangeSize;
				
		//게시판 시작번호
		this.startList = (page - 1) * listSize;

		//이전 버튼 상태
		this.prev = range == 1 ? false : true;

		//다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;

		}

	}
	
}
