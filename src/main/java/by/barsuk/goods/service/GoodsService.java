package by.barsuk.goods.service;

import by.barsuk.goods.model.Goods;
import by.barsuk.goods.repository.GoodsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GoodsService {

    @Autowired
    private GoodsRepository goodsRepository;

    public List<Goods> findAll(){
        return goodsRepository.findAll();
    }

    public Optional<Goods> findById(Long id){
        return goodsRepository.findById(id);
    }

    public Goods save(Goods goods){
        return goodsRepository.save(goods);
    }

    public void deleteById(Long id){
        goodsRepository.deleteById(id);
    }
}
