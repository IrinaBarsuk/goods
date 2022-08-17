package by.barsuk.goods.controller;

import by.barsuk.goods.model.Goods;
import by.barsuk.goods.model.GoodsBase;
import by.barsuk.goods.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.xml.bind.DatatypeConverter;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @GetMapping(value = "/goods")
    public List<Goods> findAll() {
        return goodsService.findAll();
    }

    @GetMapping(value = "/goods/{id}")
    public Optional<Goods> findId(@PathVariable Long id) {
        return goodsService.findById(id);
    }

    @PostMapping(value = "/goods")
    Goods createOrSave(@RequestBody GoodsBase goods) {
        String imageBase = goods.getImage().split(",")[1];
        byte[] imageBytes = DatatypeConverter.parseBase64Binary(imageBase);
        Goods newGoods = new Goods(); //id++
        return goodsService.save(new Goods(newGoods.getId(), newGoods.getFk_category_id(), newGoods.getFk_manufacturer_id(),
                newGoods.getVendor_code(), newGoods.getName_goods(), newGoods.getFk_type_metal_id(), newGoods.getPrice(),
                newGoods.getDescription(), imageBytes));
    }

    @PutMapping(value="/goods/{id}")
    Goods updateGoods(@RequestBody GoodsBase newGoods, @PathVariable Long id) {
        return goodsService.findById(id).map(goods -> {
            goods.setFk_category_id(newGoods.getFk_category_id());
            goods.setFk_manufacturer_id(newGoods.getFk_manufacturer_id());
            goods.setVendor_code(newGoods.getVendor_code());
            goods.setName_goods(newGoods.getName_goods());
            goods.setFk_type_metal_id(newGoods.getFk_type_metal_id());
            goods.setPrice(newGoods.getPrice());
            goods.setDescription(newGoods.getDescription());
            String imageBase = newGoods.getImage().split(",")[1];
            byte[] imageBytes = DatatypeConverter.parseBase64Binary(imageBase);
            goods.setImage(imageBytes);
            return goodsService.save(goods);
        }).orElse(null);
    }

    @DeleteMapping(value="/goods/{id}")
    void deleteById(@PathVariable Long id) {
        goodsService.deleteById(id);
        System.out.println("delete");
    }

}
