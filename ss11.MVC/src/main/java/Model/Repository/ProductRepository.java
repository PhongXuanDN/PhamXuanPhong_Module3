package Model.Repository;

import Model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository{
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product("01","Banh","23/8/2021","23/9/2021"));
        productList.add(new Product("02","Keo","23/8/2021","23/9/2021"));
        productList.add(new Product("03","Kem","23/8/2021","23/9/2021"));
        productList.add(new Product("04","Gao","23/8/2021","23/9/2021"));
    }
    @Override
    public List<Product> addAllProduct() {
        return productList;
    }

    @Override
    public  void addNewProduct(Product product) {
        productList.add(product);
    }

    @Override
    public void updateProduct() {

    }

    @Override
    public void deleteProduct() {

    }

    @Override
    public void showProduct() {

    }

    @Override
    public Product findIdProduct() {
        return null;
    }
}
