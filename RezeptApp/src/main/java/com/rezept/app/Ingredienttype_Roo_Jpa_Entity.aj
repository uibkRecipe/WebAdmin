// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Ingredienttype;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Ingredienttype_Roo_Jpa_Entity {
    
    declare @type: Ingredienttype: @Entity;
    
    declare @type: Ingredienttype: @Table(name = "INGREDIENTTYPE");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Integer Ingredienttype.id;
    
    public Integer Ingredienttype.getId() {
        return this.id;
    }
    
    public void Ingredienttype.setId(Integer id) {
        this.id = id;
    }
    
}
