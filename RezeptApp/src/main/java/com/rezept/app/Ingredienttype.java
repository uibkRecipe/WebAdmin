package com.rezept.app;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "INGREDIENTTYPE")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "composedofs", "ingredients" })
public class Ingredienttype {
}
