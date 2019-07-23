package com.dassa.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dassa.vo.UserVO;

@Aspect
@Service
public class UserPass {
	@Autowired
	@Qualifier("SHA256Util")
	SHA256Util sha256Util;
	
	@Pointcut("execution(* com.dassa.service..UserService.*(com.dassa.vo.UserVO))")
	public void allPointcut() {}

	@Before("allPointcut()")
	public void beforePass(JoinPoint jp) throws Exception {
		Object[] args = jp.getArgs();
		UserVO userVO = (UserVO)args[0];
		String password = userVO.getUserPw();
		if(password != null && !password.isEmpty() ) {
			String encPw = sha256Util.encData(password);
			userVO.setUserPw(encPw);
		}
	}
}
