// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.City;
import com.rezept.app.Friend;
import com.rezept.app.Rating;
import com.rezept.app.Recipe;
import com.rezept.app.User;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect User_Roo_DbManaged {
    
    @ManyToMany
    @JoinTable(name = "FAVORITERECIPE", joinColumns = { @JoinColumn(name = "USER", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "RECIPEID", nullable = false) })
    private Set<Recipe> User.recipes;
    
    @OneToMany(mappedBy = "username1", cascade = CascadeType.ALL)
    private Set<Friend> User.friends;
    
    @OneToMany(mappedBy = "username2", cascade = CascadeType.ALL)
    private Set<Friend> User.friends1;
    
    @OneToMany(mappedBy = "username", cascade = CascadeType.ALL)
    private Set<Rating> User.ratings;
    
    @OneToMany(mappedBy = "autor", cascade = CascadeType.ALL)
    private Set<Recipe> User.recipes_;
    
    @ManyToOne
    @JoinColumn(name = "CITY", referencedColumnName = "ID", nullable = false)
    private City User.city;
    
    @ManyToOne
    @JoinColumn(name = "COUNTRY", referencedColumnName = "COUNTRY", nullable = false)
    private City User.country;
    
    @Column(name = "PASSWORD", length = 50)
    @NotNull
    private String User.password;
    
    @Column(name = "EMAIL", length = 100, unique = true)
    @NotNull
    private String User.email;
    
    @Column(name = "FIRSTNAME", length = 50)
    private String User.firstname;
    
    @Column(name = "LASTNAME", length = 50)
    private String User.lastname;
    
    @Column(name = "FOTO")
    private byte[] User.foto;
    
    @Column(name = "ISACTIVE")
    @NotNull
    private boolean User.isactive;
    
    public Set<Recipe> User.getRecipes() {
        return recipes;
    }
    
    public void User.setRecipes(Set<Recipe> recipes) {
        this.recipes = recipes;
    }
    
    public Set<Friend> User.getFriends() {
        return friends;
    }
    
    public void User.setFriends(Set<Friend> friends) {
        this.friends = friends;
    }
    
    public Set<Friend> User.getFriends1() {
        return friends1;
    }
    
    public void User.setFriends1(Set<Friend> friends1) {
        this.friends1 = friends1;
    }
    
    public Set<Rating> User.getRatings() {
        return ratings;
    }
    
    public void User.setRatings(Set<Rating> ratings) {
        this.ratings = ratings;
    }
    
    public Set<Recipe> User.getRecipes_() {
        return recipes_;
    }
    
    public void User.setRecipes_(Set<Recipe> recipes_) {
        this.recipes_ = recipes_;
    }
    
    public City User.getCity() {
        return city;
    }
    
    public void User.setCity(City city) {
        this.city = city;
    }
    
    public City User.getCountry() {
        return country;
    }
    
    public void User.setCountry(City country) {
        this.country = country;
    }
    
    public String User.getPassword() {
        return password;
    }
    
    public void User.setPassword(String password) {
        this.password = password;
    }
    
    public String User.getEmail() {
        return email;
    }
    
    public void User.setEmail(String email) {
        this.email = email;
    }
    
    public String User.getFirstname() {
        return firstname;
    }
    
    public void User.setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String User.getLastname() {
        return lastname;
    }
    
    public void User.setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    public byte[] User.getFoto() {
        return foto;
    }
    
    public void User.setFoto(byte[] foto) {
        this.foto = foto;
    }
    
    public boolean User.isIsactive() {
        return isactive;
    }
    
    public void User.setIsactive(boolean isactive) {
        this.isactive = isactive;
    }
    
}