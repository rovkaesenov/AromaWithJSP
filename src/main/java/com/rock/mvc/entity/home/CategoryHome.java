package com.rock.mvc.entity.home;

import com.rock.mvc.entity.category.Category;
import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "category_home")
@Data
public class CategoryHome {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "subcategory_names")
    private String subCategoryNames;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

    @OneToMany(mappedBy = "categoryHome", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<HomeProducts> homeProductsSet;
}
