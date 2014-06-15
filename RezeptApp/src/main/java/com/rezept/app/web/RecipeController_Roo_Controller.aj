// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app.web;

import com.rezept.app.Composedof;
import com.rezept.app.Rating;
import com.rezept.app.Recipe;
import com.rezept.app.User;
import com.rezept.app.web.RecipeController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect RecipeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String RecipeController.create(@Valid Recipe recipe, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, recipe);
            return "recipes/create";
        }
        uiModel.asMap().clear();
        recipe.persist();
        return "redirect:/recipes/" + encodeUrlPathSegment(recipe.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String RecipeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Recipe());
        return "recipes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String RecipeController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("recipe", Recipe.findRecipe(id));
        uiModel.addAttribute("itemId", id);
        return "recipes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String RecipeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("recipes", Recipe.findRecipeEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Recipe.countRecipes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("recipes", Recipe.findAllRecipes(sortFieldName, sortOrder));
        }
        return "recipes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String RecipeController.update(@Valid Recipe recipe, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, recipe);
            return "recipes/update";
        }
        uiModel.asMap().clear();
        recipe.merge();
        return "redirect:/recipes/" + encodeUrlPathSegment(recipe.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String RecipeController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, Recipe.findRecipe(id));
        return "recipes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String RecipeController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Recipe recipe = Recipe.findRecipe(id);
        recipe.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/recipes";
    }
    
    void RecipeController.populateEditForm(Model uiModel, Recipe recipe) {
        uiModel.addAttribute("recipe", recipe);
        uiModel.addAttribute("composedofs", Composedof.findAllComposedofs());
        uiModel.addAttribute("ratings", Rating.findAllRatings());
        uiModel.addAttribute("users", User.findAllUsers());
    }
    
    String RecipeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}