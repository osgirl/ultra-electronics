package servlets;

import controllers.InventoryController;
import dto.Inventory;
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
 * Created by chathuri on 10/17/17.
 */
public class InventoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if("add".equals(action)){
            String productId = request.getParameter("productId1");
//            int qty = request.getParameter(Integer.parseInt("qty"));
            String subject=request.getParameter("qty");
            int qty = 0;
            if(subject !=null)
                qty=Integer.parseInt(subject.trim());

            Inventory inventory = new Inventory();
            inventory.setProductId(productId);
            inventory.setQty(qty);

            InventoryController inventoryController= new InventoryController();
            inventoryController.addInventory(inventory);

            response.sendRedirect("manage_products.jsp");
        }else if("update".equals(action)){
            String productId = request.getParameter("inventoryId2");
//            int qty = request.getParameter(Integer.parseInt("qty"));
            String subject=request.getParameter("qty2");
            int qty = 0;
            if(subject !=null)
                qty=Integer.parseInt(subject.trim());


            Inventory inventory = new Inventory();
            inventory.setProductId(productId);
            inventory.setQty(qty);

            InventoryController inventoryController = new InventoryController();
            inventoryController.updateInventory(inventory);

            response.sendRedirect("manage_products.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
