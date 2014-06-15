package com.rezept.app;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "USER")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "recipes", "friends", "friends1", "ratings", "recipes_", "city", "country" })
public class User {
}
