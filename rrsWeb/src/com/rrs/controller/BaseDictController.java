package com.rrs.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rrs.service.BaseDictService;


@Controller
@RequestMapping(value = "/dict")
class BaseDictController {

    @Autowired
    private BaseDictService baseDictService;

    public String dictByCode(String code) {
        baseDictService.queryBaseDictByDictTypeCode(code);
        return "";
    }
}