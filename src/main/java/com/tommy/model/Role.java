package com.tommy.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name = "role", catalog = "user")
public class Role implements Serializable {
 
    private Long id;
    @Column(name = "name")
    private String name;
 
    @Id
    @GeneratedValue
    @Column(name = "roleId")
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
}
