package com.rezept.app;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(identifierType = ComposedofPK.class, versionField = "", table = "COMPOSEDOF")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "recipeid", "ingredienttypeid" })
public class Composedof {
}
