package org.example.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Component
@Aspect
public class MyLoggingAspect {

    @Around("execution(* org.example.dao.*.*(..))")
    public Object aroundAllRepositoryMethodAdvice(ProceedingJoinPoint proceedingJoinPoint)
            throws Throwable {

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter
                .ofPattern("dd-MMM-yyyy HH:mm:ss.SSS");

        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        String methodName = methodSignature.getName();

        System.out.println("[" + dateTimeFormatter.format(LocalDateTime.now()) + "]" +
                " Begin of " + methodName);

        Object targetMethodResult = proceedingJoinPoint.proceed();

        System.out.println("[" + dateTimeFormatter.format(LocalDateTime.now()) + "]" +
                " End of " + methodName);

        return targetMethodResult;
    }
}
