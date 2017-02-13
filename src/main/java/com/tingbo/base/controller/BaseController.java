package com.tingbo.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tingbo.baseUtil.constant.WebConstant;
import com.tingbo.baseUtil.web.WebUtil;
import com.tingbo.baseWS.util.ModelUtil;

/**
 * 特殊的基本的页面跳转。
 * @author dison.chen
 *
 */
@Controller
public class BaseController extends com.tingbo.baseWS.controller.BaseController {

    private static final Logger log = Logger.getLogger(BaseController.class);

    static {
        log.info("BaseController init.");
    }

    /**
     * 所有不满足@RequestMapping指定的url的请求都重定向回登录页。
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("**")
    public String notMatchUrls(HttpServletRequest request, HttpServletResponse response) {
        return WebUtil.redirectIndex();
    }

    /**
     * 默认跳转到主页
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/")
    public String index(HttpServletRequest request, HttpServletResponse response) {
        return jspCtxDir + "index";
    }

    /**
     * 跳转到登录页
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/login")
    public String loginGet(HttpServletRequest request, HttpServletResponse response, HttpSession session, String action) {
        if (ModelUtil.isLogin(session)) {
            return WebUtil.redirectIndex();
        }
        request.setAttribute(WebConstant.action, action);
        return jspCtxDir + "login";
    }

    /**
     * 当用户请求不符合权限要求时，跳转到“无权限操作提示页面”。
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/noPermission")
    public String noPermission(HttpServletRequest request, HttpServletResponse response,
            String loginToken_noPermission_message, String noPermissionUrl) {
        request.setAttribute(WebConstant.loginToken_noPermission_message, loginToken_noPermission_message);
        return jspCtxDir + noPermissionUrl;
    }
}
