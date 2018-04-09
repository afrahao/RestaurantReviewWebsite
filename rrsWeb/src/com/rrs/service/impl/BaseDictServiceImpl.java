package com.rrs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.BaseDictDao;
import com.rrs.pojo.BaseDict;
import com.rrs.service.BaseDictService;

@Service
class BaseDictServiceImpl implements BaseDictService {

    @Autowired
    private BaseDictDao baseDictDao;

    @Override
    public List<BaseDict> queryBaseDictByDictTypeCode(String code) {
        return baseDictDao.selectByCode(code);
    }
}