import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "homeCaculator", urlPatterns = {"/home","/display-discount"})
public class homeCaculator extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("txt-product");
        int price = Integer.parseInt(request.getParameter("txt-price"));
        int discount = Integer.parseInt(request.getParameter("txt-discount"));
        double chietkhau = price * discount *0.01;
        request.setAttribute("product",product);
        request.setAttribute("ketqua",chietkhau);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request,response);

    }
}
