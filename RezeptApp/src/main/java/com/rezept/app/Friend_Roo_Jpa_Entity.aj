// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Friend;
import com.rezept.app.FriendPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Friend_Roo_Jpa_Entity {
    
    declare @type: Friend: @Entity;
    
    declare @type: Friend: @Table(name = "FRIEND");
    
    @EmbeddedId
    private FriendPK Friend.id;
    
    public FriendPK Friend.getId() {
        return this.id;
    }
    
    public void Friend.setId(FriendPK id) {
        this.id = id;
    }
    
}
