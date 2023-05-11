package com.service.impl;

import com.bean.TCount;
import com.bean.TimeDO;
import com.bean.TimeVO;
import com.mappers.TCountMapper;
import com.service.ICountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CountServiceImpl implements ICountService {

    @Autowired
    TCountMapper countMapper;


    @Override
    public TimeVO findRentOut() {
        TimeDO timeDO = new TimeDO();
        TimeVO timevO = new TimeVO();
        List<String> months = new ArrayList<>();
        List<Integer> counts = new ArrayList<>();
        List<TimeVO> vos = new ArrayList<>();

        List<TCount> tCounts = countMapper.selectByExample(null);
        for (TCount tCount : tCounts) {

            months.add(tCount.getCountName());
            counts.add(tCount.getCountNum());
            vos.add(timevO);
        }
        timevO.setName(months);
        timevO.setValue(counts);

        return timevO;
    }
}
