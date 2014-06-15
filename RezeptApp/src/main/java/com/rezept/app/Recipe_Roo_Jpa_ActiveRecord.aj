// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app;

import com.rezept.app.Recipe;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Recipe_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Recipe.entityManager;
    
    public static final List<String> Recipe.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Recipe.entityManager() {
        EntityManager em = new Recipe().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Recipe.countRecipes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Recipe o", Long.class).getSingleResult();
    }
    
    public static List<Recipe> Recipe.findAllRecipes() {
        return entityManager().createQuery("SELECT o FROM Recipe o", Recipe.class).getResultList();
    }
    
    public static List<Recipe> Recipe.findAllRecipes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Recipe o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Recipe.class).getResultList();
    }
    
    public static Recipe Recipe.findRecipe(Integer id) {
        if (id == null) return null;
        return entityManager().find(Recipe.class, id);
    }
    
    public static List<Recipe> Recipe.findRecipeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Recipe o", Recipe.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Recipe> Recipe.findRecipeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Recipe o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Recipe.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Recipe.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Recipe.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Recipe attached = Recipe.findRecipe(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Recipe.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Recipe.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Recipe Recipe.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Recipe merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
