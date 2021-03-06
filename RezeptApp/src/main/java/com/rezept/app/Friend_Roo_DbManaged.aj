// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Friend;
import com.rezept.app.User;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Friend_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "USERNAME1", referencedColumnName = "USERNAME", nullable = false, insertable = false, updatable = false)
    private User Friend.username1;
    
    @ManyToOne
    @JoinColumn(name = "USERNAME2", referencedColumnName = "USERNAME", nullable = false, insertable = false, updatable = false)
    private User Friend.username2;
    
    @Column(name = "ISACCEPTED")
    @NotNull
    private boolean Friend.isaccepted;
    
    public User Friend.getUsername1() {
        return username1;
    }
    
    public void Friend.setUsername1(User username1) {
        this.username1 = username1;
    }
    
    public User Friend.getUsername2() {
        return username2;
    }
    
    public void Friend.setUsername2(User username2) {
        this.username2 = username2;
    }
    
    public boolean Friend.isIsaccepted() {
        return isaccepted;
    }
    
    public void Friend.setIsaccepted(boolean isaccepted) {
        this.isaccepted = isaccepted;
    }
    
}
