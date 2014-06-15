// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Composedof;
import com.rezept.app.Ingredient;
import com.rezept.app.Ingredienttype;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Ingredienttype_Roo_DbManaged {
    
    @OneToMany(mappedBy = "ingredienttypeid", cascade = CascadeType.ALL)
    private Set<Composedof> Ingredienttype.composedofs;
    
    @OneToMany(mappedBy = "ingredienttypeid", cascade = CascadeType.ALL)
    private Set<Ingredient> Ingredienttype.ingredients;
    
    @Column(name = "NAME", length = 50, unique = true)
    @NotNull
    private String Ingredienttype.name;
    
    public Set<Composedof> Ingredienttype.getComposedofs() {
        return composedofs;
    }
    
    public void Ingredienttype.setComposedofs(Set<Composedof> composedofs) {
        this.composedofs = composedofs;
    }
    
    public Set<Ingredient> Ingredienttype.getIngredients() {
        return ingredients;
    }
    
    public void Ingredienttype.setIngredients(Set<Ingredient> ingredients) {
        this.ingredients = ingredients;
    }
    
    public String Ingredienttype.getName() {
        return name;
    }
    
    public void Ingredienttype.setName(String name) {
        this.name = name;
    }
    
}