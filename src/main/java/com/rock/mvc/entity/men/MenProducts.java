package com.rock.mvc.entity.men;

import com.rock.mvc.entity.men.CategoryForMen;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "man_products")
public class MenProducts {
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
    @JoinColumn(name = "category_forMen_id", referencedColumnName = "id")
    private CategoryForMen categoryForMen;
}
