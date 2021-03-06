// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Rating;
import com.rezept.app.Recipe;
import com.rezept.app.User;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Rating_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "RECIPEID", referencedColumnName = "ID", nullable = false)
    private Recipe Rating.recipeid;
    
    @ManyToOne
    @JoinColumn(name = "USERNAME", referencedColumnName = "USERNAME", nullable = false)
    private User Rating.username;
    
    @Column(name = "STAR")
    @NotNull
    private Integer Rating.star;
    
    @Column(name = "COMMENT")
    private String Rating.comment;
    
    public Recipe Rating.getRecipeid() {
        return recipeid;
    }
    
    public void Rating.setRecipeid(Recipe recipeid) {
        this.recipeid = recipeid;
    }
    
    public User Rating.getUsername() {
        return username;
    }
    
    public void Rating.setUsername(User username) {
        this.username = username;
    }
    
    public Integer Rating.getStar() {
        return star;
    }
    
    public void Rating.setStar(Integer star) {
        this.star = star;
    }
    
    public String Rating.getComment() {
        return comment;
    }
    
    public void Rating.setComment(String comment) {
        this.comment = comment;
    }
    
}
