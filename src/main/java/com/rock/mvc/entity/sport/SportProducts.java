package com.rock.mvc.entity.sport;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "sport_products")
public class SportProducts {
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
    @JoinColumn(name = "category_sport_id", referencedColumnName = "id")
    private CategorySport categorySport;
}
