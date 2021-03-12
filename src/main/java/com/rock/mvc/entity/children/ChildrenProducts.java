package com.rock.mvc.entity.children;

import com.rock.mvc.entity.children.CategoryChildren;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "children_products")
public class ChildrenProducts {
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
    @JoinColumn(name = "category_children_id", referencedColumnName = "id")
    private CategoryChildren categoryChildren;

}
