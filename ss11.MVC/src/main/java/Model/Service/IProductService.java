package Model.Service;

import Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> addAllProduct();
    void addNewProduct(Product product);
    void updateProduct();
    void deleteProduct();
    void showProduct();
    void findIdProduct();

}
