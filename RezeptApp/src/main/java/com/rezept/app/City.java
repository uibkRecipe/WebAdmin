package com.rezept.app;
import java.io.Serializable;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "CITY")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "users", "users1" })
public class City implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
}
