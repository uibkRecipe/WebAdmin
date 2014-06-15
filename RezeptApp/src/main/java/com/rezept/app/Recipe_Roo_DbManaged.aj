// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Composedof;
import com.rezept.app.Rating;
import com.rezept.app.Recipe;
import com.rezept.app.User;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Recipe_Roo_DbManaged {
    
    @ManyToMany(mappedBy = "recipes", cascade = CascadeType.ALL)
    private Set<User> Recipe.users;
    
    @OneToMany(mappedBy = "recipeid", cascade = CascadeType.ALL)
    private Set<Composedof> Recipe.composedofs;
    
    @OneToMany(mappedBy = "recipeid", cascade = CascadeType.ALL)
    private Set<Rating> Recipe.ratings;
    
    @ManyToOne
    @JoinColumn(name = "AUTOR", referencedColumnName = "USERNAME", nullable = false)
    private User Recipe.autor;
    
    @Column(name = "NAME", length = 50)
    @NotNull
    private String Recipe.name;
    
    @Column(name = "SUBTITLE", length = 100)
    @NotNull
    private String Recipe.subtitle;
    
    @Column(name = "TIME")
    @NotNull
    private Integer Recipe.time;
    
    @Column(name = "NUMBEROFRATINGS")
    private Integer Recipe.numberofratings;
    
    @Column(name = "FOTO")
    private byte[] Recipe.foto;
    
    @Column(name = "PREPARATION")
    @NotNull
    private String Recipe.preparation;
    
    @Column(name = "RATINGACTIVE")
    @NotNull
    private Integer Recipe.ratingactive;
    
    @Column(name = "CATEGORY", length = 20)
    @NotNull
    private String Recipe.category;
    
    @Column(name = "COOKED")
    @NotNull
    private Integer Recipe.cooked;
    
    @Column(name = "AVERAGERATING", precision = 2, scale = 1)
    @NotNull
    private Float Recipe.averagerating;
    
    public Set<User> Recipe.getUsers() {
        return users;
    }
    
    public void Recipe.setUsers(Set<User> users) {
        this.users = users;
    }
    
    public Set<Composedof> Recipe.getComposedofs() {
        return composedofs;
    }
    
    public void Recipe.setComposedofs(Set<Composedof> composedofs) {
        this.composedofs = composedofs;
    }
    
    public Set<Rating> Recipe.getRatings() {
        return ratings;
    }
    
    public void Recipe.setRatings(Set<Rating> ratings) {
        this.ratings = ratings;
    }
    
    public User Recipe.getAutor() {
        return autor;
    }
    
    public void Recipe.setAutor(User autor) {
        this.autor = autor;
    }
    
    public String Recipe.getName() {
        return name;
    }
    
    public void Recipe.setName(String name) {
        this.name = name;
    }
    
    public String Recipe.getSubtitle() {
        return subtitle;
    }
    
    public void Recipe.setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }
    
    public Integer Recipe.getTime() {
        return time;
    }
    
    public void Recipe.setTime(Integer time) {
        this.time = time;
    }
    
    public Integer Recipe.getNumberofratings() {
        return numberofratings;
    }
    
    public void Recipe.setNumberofratings(Integer numberofratings) {
        this.numberofratings = numberofratings;
    }
    
    public byte[] Recipe.getFoto() {
        return foto;
    }
    
    public void Recipe.setFoto(byte[] foto) {
        this.foto = foto;
    }
    
    public String Recipe.getPreparation() {
        return preparation;
    }
    
    public void Recipe.setPreparation(String preparation) {
        this.preparation = preparation;
    }
    
    public Integer Recipe.getRatingactive() {
        return ratingactive;
    }
    
    public void Recipe.setRatingactive(Integer ratingactive) {
        this.ratingactive = ratingactive;
    }
    
    public String Recipe.getCategory() {
        return category;
    }
    
    public void Recipe.setCategory(String category) {
        this.category = category;
    }
    
    public Integer Recipe.getCooked() {
        return cooked;
    }
    
    public void Recipe.setCooked(Integer cooked) {
        this.cooked = cooked;
    }
    
    public Float Recipe.getAveragerating() {
        return averagerating;
    }
    
    public void Recipe.setAveragerating(Float averagerating) {
        this.averagerating = averagerating;
    }
    
}