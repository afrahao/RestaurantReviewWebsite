package com.rrs.util;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * 鏄剧ず鏍煎紡 涓婁竴椤�? 1 2 3 4 5 涓嬩竴椤�?
 */
public class NavigationTag extends TagSupport {
    static final long serialVersionUID = 2372405317744358833L;
    
    /**
     * request 涓敤浜庝繚瀛楶age<E> 瀵硅薄鐨勫彉閲忓�?,榛樿涓衡�減age鈥�
     */
    private String bean = "page";
    
    /**
     * 鍒嗛〉璺宠浆鐨剈rl鍦板�?,姝ゅ睘鎬у�?椤�
     */
    private String url = null;
    
    /**
     * 鏄剧ず椤电爜鏁伴�?
     */
    private int number = 5;
    
    @Override
    public int doStartTag() throws JspException {
        JspWriter writer = pageContext.getOut();
        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
        Page page = (Page)request.getAttribute(bean); 
        if (page == null) 
            return SKIP_BODY;
        url = resolveUrl(url, pageContext);
        try {
        	//璁＄畻鎬婚�?�鏁�?
        	int pageCount = page.getTotal() / page.getSize();
        	if (page.getTotal() % page.getSize() > 0) {
        		pageCount++;
        	}
        	writer.print("<nav><ul class=\"pagination\">");
            //鏄剧ず鈥�?笂涓�椤碘�濇寜閽�
        	if (page.getPage() > 1) {
                String preUrl = append(url, "page", page.getPage() - 1);
                preUrl = append(preUrl, "rows", page.getSize());
                writer.print("<li><a href=\"" + preUrl + "\">上一�?</a></li>");
            } else {
            	writer.print("<li class=\"disabled\"><a href=\"#\">上一�?</a></li>");
            }
            //鏄剧ず褰撳墠椤电爜鐨勫墠2椤电爜鍜屽悗涓ら〉鐮�? 
            //鑻�1 鍒� 1 2 3 4 5, 鑻�2 鍒� 1 2 3 4 5, 鑻�3 鍒�1 2 3 4 5,
            //鑻�4 鍒� 2 3 4 5 6 ,鑻�10  鍒� 8 9 10 11 12
            int indexPage = (page.getPage() - 2 > 0)? page.getPage() - 2 : 1;  
            for(int i=1; i <= number && indexPage <= pageCount; indexPage++, i++) {
                if(indexPage == page.getPage()) {
                    writer.print( "<li class=\"active\"><a href=\"#\">"+indexPage+"<span class=\"sr-only\">(current)</span></a></li>");
                    continue;
                }
                String pageUrl  = append(url, "page", indexPage);
                pageUrl = append(pageUrl, "rows", page.getSize());
                writer.print("<li><a href=\"" + pageUrl + "\">"+ indexPage +"</a></li>");
            }
            //鏄剧ず鈥�?笅涓�椤碘�濇寜閽�
            if (page.getPage() < pageCount) {
                String nextUrl  = append(url, "page", page.getPage() + 1);
                nextUrl = append(nextUrl, "rows", page.getSize());
                writer.print("<li><a href=\"" + nextUrl + "\">下一�?</a></li>");
            } else {
            	writer.print("<li class=\"disabled\"><a href=\"#\">下一�?</a></li>");
            }
            writer.print("</nav>");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }
    
    private String append(String url, String key, int value) {

        return append(url, key, String.valueOf(value));
    }
    
    /**
     * 涓簎rl 鍙傚姞鍙傛暟瀵瑰�?
     * 
     * @param url
     * @param key
     * @param value
     * @return
     */
    private String append(String url, String key, String value) {
        if (url == null || url.trim().length() == 0) {
            return "";
        }

        if (url.indexOf("?") == -1) {
            url = url + "?" + key + "=" + value;
        } else {
            if(url.endsWith("?")) {
                url = url + key + "=" + value;
            } else {
                url = url + "&amp;" + key + "=" + value;
            }
        }
        
        return url;
    }
    
    /**
     * 涓簎rl 娣诲姞缈婚�?�璇锋眰鍙傛�?
     * 
     * @param url
     * @param pageContext
     * @return
     * @throws javax.servlet.jsp.JspException
     */
    private String resolveUrl(String url, javax.servlet.jsp.PageContext pageContext) throws JspException{
    	//UrlSupport.resolveUrl(url, context, pageContext)
    	Map params = pageContext.getRequest().getParameterMap();
    	for (Object key:params.keySet()) {
    		if ("page".equals(key) || "rows".equals(key)) continue;
    		Object value = params.get(key);
    		if (value == null) continue;
    		if (value.getClass().isArray()) {
    			url = append(url, key.toString(), ((String[])value)[0]);
    		} else if (value instanceof String) {
    			url = append(url, key.toString(), value.toString());
    		}
    	}
        return url;
    }
    
    

    /**
     * @return the bean
     */
    public String getBean() {
        return bean;
    }

    /**
     * @param bean the bean to set
     */
    public void setBean(String bean) {
        this.bean = bean;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    public void setNumber(int number) {
        this.number = number;
    }
    
}
