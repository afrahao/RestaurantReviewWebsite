package com.rrs.pojo;


public class QueryVo {
    private String custName;
    private String custSource;
    private String custIndustry;
    private String custLevel;
    //当前�?
    private Integer page;
    //每页�?
    private Integer rows = 5;
    //�?始行
    private Integer start = 0;

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustSource() {
        return custSource;
    }

    public void setCustSource(String custSource) {
        this.custSource = custSource;
    }

    public String getCustIndustry() {
        return custIndustry;
    }

    public void setCustIndustry(String custIndustry) {
        this.custIndustry = custIndustry;
    }

    public String getCustLevel() {
        return custLevel;
    }

    public void setCustLevel(String custLevel) {
        this.custLevel = custLevel;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getSize() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getStartRow() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }
}
