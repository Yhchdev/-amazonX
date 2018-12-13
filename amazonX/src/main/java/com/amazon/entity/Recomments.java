package com.amazon.entity;

public class Recomments {
    private Long hp_id;
    private String hp_name;
    private String hp_description;
    private Long hp_price;
    private Long hp_stock;
    private Long hpc_id;
    private Long hpc_child_id;
    private String hp_file_name;
    private Long Hp_selling_count;


    public Long getHp_id() {
        return hp_id;
    }

    public void setHp_id(Long hp_id) {
        this.hp_id = hp_id;
    }

    public String getHp_name() {
        return hp_name;
    }

    public void setHp_name(String hp_name) {
        this.hp_name = hp_name;
    }

    public String getHp_description() {
        return hp_description;
    }

    public void setHp_description(String hp_description) {
        this.hp_description = hp_description;
    }

    public Long getHp_price() {
        return hp_price;
    }

    public void setHp_price(Long hp_price) {
        this.hp_price = hp_price;
    }

    public Long getHp_stock() {
        return hp_stock;
    }

    public void setHp_stock(Long hp_stock) {
        this.hp_stock = hp_stock;
    }

    public Long getHpc_id() {
        return hpc_id;
    }

    public void setHpc_id(Long hpc_id) {
        this.hpc_id = hpc_id;
    }

    public Long getHpc_child_id() {
        return hpc_child_id;
    }

    public void setHpc_child_id(Long hpc_child_id) {
        this.hpc_child_id = hpc_child_id;
    }

    public String getHp_file_name() {
        return hp_file_name;
    }

    public void setHp_file_name(String hp_file_name) {
        this.hp_file_name = hp_file_name;
    }

    public Long getHp_selling_count() {
        return Hp_selling_count;
    }

    public void setHp_selling_count(Long hp_selling_count) {
        Hp_selling_count = hp_selling_count;
    }

    @Override
    public String toString() {
        return "Recomments{" +
                "hp_id=" + hp_id +
                ", hp_name='" + hp_name + '\'' +
                ", hp_description='" + hp_description + '\'' +
                ", hp_price=" + hp_price +
                ", hp_stock=" + hp_stock +
                ", hpc_id=" + hpc_id +
                ", hpc_child_id=" + hpc_child_id +
                ", hp_file_name='" + hp_file_name + '\'' +
                ", Hp_selling_count=" + Hp_selling_count +
                '}';
    }
}
