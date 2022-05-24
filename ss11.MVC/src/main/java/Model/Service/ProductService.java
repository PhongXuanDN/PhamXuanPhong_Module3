package Model.Service;

import Model.Product;
import Model.Repository.IProductRepository;
import Model.Repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    IProductRepository repository = new ProductRepository();
    @Override
    public List<Product> addAllProduct() {
        return repository.addAllProduct();
    }

    @Override
    public void addNewProduct(Product product) {

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
    public void findIdProduct() {

    }
}
