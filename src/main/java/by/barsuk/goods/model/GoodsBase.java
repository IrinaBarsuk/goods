package by.barsuk.goods.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Transient;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GoodsBase {
    private Long id;
    private int fk_category_id;
    private int fk_manufacturer_id;
    private String vendor_code;
    private String name_goods;
    private int fk_type_metal_id;
    private double price;
    private String description;
    @Transient
    private String image;
}
