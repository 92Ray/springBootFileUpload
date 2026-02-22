package com.zeus.common.aop;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@Aspect
public class ServiceloggerAdvice {

	@Before("execution(* com.zeus.service.ItemService*.*(..))")
	public void beforeLog(JoinPoint jp) {
		log.info("Aspect beforeLog");
		log.info("Aspect beforeLog=" + jp.getSignature());
		log.info("Aspect beforeLog=" + Arrays.toString(jp.getArgs()));
	}

	@After("execution(* com.zeus.service.ItemService*.*(..))")
	public void afterLog(JoinPoint jp) {
		log.info("Aspect afterLog");
		log.info("Aspect afterLog jp=" + jp.getSignature());
		log.info("Aspect afterLog jp=" + Arrays.toString(jp.getArgs()));
	}

	@AfterReturning(pointcut = "execution(* com.zeus.service.ItemService*.*(..))", returning = "result")
	public void afterReturning(JoinPoint jp, Object result) {
		log.info("Aspect afterReturning");
		log.info("Aspect afterReturning jp=" + jp.getSignature());
		log.info("Aspect afterReturning jp=" + Arrays.toString(jp.getArgs()));
		log.info("Aspect afterReturning result=" + result.toString());
	}

	// 이게 제일 빠름
	@Around("execution(* com.zeus.service.ItemService*.*(..))")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
		long startTime = System.currentTimeMillis(); // 1/1000초
		log.info(Arrays.toString(pjp.getArgs()));
		// 여기서 비즈니스 모델을 실행한다.
		Object result = pjp.proceed();
		long endTime = System.currentTimeMillis();
		log.info(pjp.getSignature() + " : " + (endTime - startTime));
		// serviceImpl에서 실행되는 결과값을 controller에 전달된다.(result값)
		return result;
	}

}
