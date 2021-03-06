// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Ingredienttype;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Ingredienttype_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Ingredienttype.entityManager;
    
    public static final List<String> Ingredienttype.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Ingredienttype.entityManager() {
        EntityManager em = new Ingredienttype().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Ingredienttype.countIngredienttypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Ingredienttype o", Long.class).getSingleResult();
    }
    
    public static List<Ingredienttype> Ingredienttype.findAllIngredienttypes() {
        return entityManager().createQuery("SELECT o FROM Ingredienttype o", Ingredienttype.class).getResultList();
    }
    
    public static List<Ingredienttype> Ingredienttype.findAllIngredienttypes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Ingredienttype o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Ingredienttype.class).getResultList();
    }
    
    public static Ingredienttype Ingredienttype.findIngredienttype(Integer id) {
        if (id == null) return null;
        return entityManager().find(Ingredienttype.class, id);
    }
    
    public static List<Ingredienttype> Ingredienttype.findIngredienttypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Ingredienttype o", Ingredienttype.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Ingredienttype> Ingredienttype.findIngredienttypeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Ingredienttype o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Ingredienttype.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Ingredienttype.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Ingredienttype.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Ingredienttype attached = Ingredienttype.findIngredienttype(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Ingredienttype.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Ingredienttype.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Ingredienttype Ingredienttype.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Ingredienttype merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
