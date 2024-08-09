package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entity.Product;
import util.DBUtil;

// The TASK of this class: Handling everything realated to Database
// Replace all code line from ProductController
// Repository = Model: Work with Data ex: Connecting with DB server, preparing some functions for taking data, manipulating data
// such as delete, insert, update data
public class ProductRepository {

	public ArrayList<Product> getAllProduct() {
		try {
			Connection conn = DBUtil.getConnection();

			String query = "SELECT * FROM `products`";

			PreparedStatement ps = conn.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();

			while (rs.next()) {
				Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getDouble("price"),
						rs.getString("description"));
				products.add(product);
			}
			return products;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	return null;
	}
	
	public ArrayList<Product> getAllProductByCategoryId(int cateId) {
		try {
			Connection conn = DBUtil.getConnection();
			String query = "SELECT * FROM `products` WHERE category_id = ?";
			
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, cateId);

			ResultSet rs = ps.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();

			while (rs.next()) {
				Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getDouble("price"),
						rs.getString("description"));
				products.add(product);
			}
			return products;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	return null;
	}

}
