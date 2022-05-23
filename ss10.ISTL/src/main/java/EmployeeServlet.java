import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet" ,urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    public static List<Employee> employees = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        employees.add(new Employee("Phong","23/08/1999","Đà Nẵng"));
        employees.add(new Employee("Phong","23/08/1999","Đà Nẵng"));
        employees.add(new Employee("Phong","23/08/1999","Đà Nẵng"));    

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("employee",employees);
        RequestDispatcher dispatcher = request.getRequestDispatcher("employee.jsp");
        dispatcher.forward(request,response);
    }
}
