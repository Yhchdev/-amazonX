package com.amazon.entity;

public class Category {
    private long hpc_id;
    private String hpc_name;
    private Long hpc_parent_id;

    public long getHpc_id() {
        return hpc_id;
    }

    public void setHpc_id(long hpc_id) {
        this.hpc_id = hpc_id;
    }

    public String getHpc_name() {
        return hpc_name;
    }

    public void setHpc_name(String hpc_name) {
        this.hpc_name = hpc_name;
    }

    public Long getHpc_parent_id() {
        return hpc_parent_id;
    }

    public void setHpc_parent_id(Long hpc_hpc_parent_id) {
        this.hpc_parent_id = hpc_hpc_parent_id;
    }
}
