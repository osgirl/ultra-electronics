package servlets;
import com.google.gson.Gson;
import controllers.ProductController;
import dto.Product;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by chathurabuddi on 9/27/2017.
 */
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("add".equals(action)){
            String productId;
            String productName;
            String productDescription;
            String categoryId;
            String unitPrice;
            FileItem productImage=null;
            try {
                Map<String, String> formFields = new HashMap<String, String>();
                List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : items) {
                    if (item.isFormField()) {
                        formFields.put(item.getFieldName(), item.getString());
                    } else {
                        productImage = item;
                    }
                }
                productId = formFields.get("productId");
                productName = formFields.get("productName");
                productDescription = formFields.get("productDescription");
                categoryId = formFields.get("categoryId");
                unitPrice = formFields.get("unitPrice");
            } catch (FileUploadException e) {
                throw new ServletException("Cannot parse multipart request.", e);
            }

            Product product = new Product();
            product.setProductId(productId);
            product.setProductName(productName);
            product.setProductDescription(productDescription);
            product.setCategoryId(categoryId);
            product.setUnitPrice(Double.parseDouble(unitPrice));

            ProductController productController = new ProductController();
            if(productController.addProduct(product) && productImage!=null){
                // upload image
                String fieldName = productImage.getFieldName();
                String fileName = FilenameUtils.getName(productImage.getName());
                InputStream fileContent = productImage.getInputStream();
                Properties props = Properties.getInstance();
                File uploadedFile = new File(props.getProperty("product.image.folder")+productId+"."+props.getProperty("product.image.type"));
                try {
                    productImage.write(uploadedFile);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            response.sendRedirect("manage_products.jsp");
        }else if("update".equals(action)){
            String productId = request.getParameter("productId2");
            String productName = request.getParameter("productName2");
            String productDescription = request.getParameter("productDescription2");
            String categoryId = request.getParameter("categoryId3");
            String unitPrice = request.getParameter("unitPrice2");

            Product product = new Product();
            product.setProductId(productId);
            product.setProductName(productName);
            product.setProductDescription(productDescription);
            product.setCategoryId(categoryId);
            product.setUnitPrice(Double.parseDouble(unitPrice));

            ProductController productController = new ProductController();
            productController.updateProduct(product);
            response.sendRedirect("manage_products.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");
        if(productId!=null) {
            ProductController productController = new ProductController();
            String productJson = new Gson().toJson(productController.getProductsById(productId));
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(productJson);
        }
    }
}
