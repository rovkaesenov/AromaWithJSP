package com.rock.mvc.entity.home;

import com.rock.mvc.entity.home.CategoryHome;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "home_products")
public class HomeProducts {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "price")
    private Double price;

    @Column(name = "color")
    private String color;

    @Lob
    @Column(name = "descriptions")
    private String descriptions;

    @Lob
    @Column(name = "image")
    private byte[] image;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_home_id", referencedColumnName = "id")
    private CategoryHome categoryHome;
}
