package com.iss.okair.db.entity;

public class Sysuserrole {
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }
}