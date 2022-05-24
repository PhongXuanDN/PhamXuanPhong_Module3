package Model.Repository;

import Model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> addAllProduct();
    void addNewProduct(Product product);
    void updateProduct();
    void deleteProduct();
    void showProduct();
    Product findIdProduct();
}
