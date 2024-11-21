package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author manik
 */
public class PrintTableTag extends TagSupport {

    public int number;
    public String color;

    public void setNumber(int number) {
        this.number = number;
    }

    public void setColor(String color) {
        this.color = color;
    }
    

    @Override
    public int doStartTag() throws JspException {

        try {
            //for writting on the jsp page we taking the pageContext objec which is jspWriter type
            JspWriter out = pageContext.getOut();

            //printing the tables
            out.println("<div style='color: "+color+";'>");
            out.println("<br/>");
            for (int i = 1; i <= 10; i++) {
                out.println((i * number) + "<br>");
            }
            out.println("</div>");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return SKIP_BODY; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

}
