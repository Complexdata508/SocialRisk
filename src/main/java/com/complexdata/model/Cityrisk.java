package com.complexdata.model;

public class Cityrisk {
    public String id;
    public String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer riskscore;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRiskscore() {
        return riskscore;
    }

    public void setRiskscore(Integer riskscore) {
        this.riskscore = riskscore;
    }
}
