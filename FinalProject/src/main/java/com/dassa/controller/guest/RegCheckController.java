package com.dassa.controller.guest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.mapper.UserMapper;
import com.dassa.service.UserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/regCheck")
public class RegCheckController {
	@Resource
	private UserService userService;
	
	//idCheck
	/*@RequestMapping(value="/idChk.do")*/
	@ResponseBody
	@RequestMapping("/idChk")
	public void idCheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		UserVO m  = userService.idCheck(userId);
		boolean result;
		if(m != null) {
			result = true;
		}else {
			result = false;
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(result) {
			out.print("이미 사용중인 아이디 입니다.");
		}else {
			out.print("사용 가능한 아이디 입니다.");
		}
	}
	
}
