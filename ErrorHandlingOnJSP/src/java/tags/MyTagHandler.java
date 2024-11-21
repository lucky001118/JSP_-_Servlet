package tags;

import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

//there is some sertain rules to make the custom tags in the jsp
//step 1) -- make a java class which implimets or extends the jsp.tagext class or their child interfacess and override thier methods for the building your custom tags
//step 2) -- create the TLD(Tag Lib Descriptor) file : it containts information about your tags, it is basically web.xml file which is on the WEB-INF folder but it represents by .tld extention
//step 3) -- make jsp page import the tag using the taglib directories and use it evry where on the jsp page

public class MyTagHandler extends TagSupport{
    //this tang supput class supoerting the methos to make custom tags for jsp
    
    @Override
    public int doStartTag() throws JspException{
        
        try{
            
            //this whole class only genrates the onle custom tag.
            JspWriter out = pageContext.getOut();
            out.println("<h1>This is my custom tag</h1>");
            out.println("<p>This is custom paragraph</p>");
            out.println(new Date());
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return SKIP_BODY;
    }
}
