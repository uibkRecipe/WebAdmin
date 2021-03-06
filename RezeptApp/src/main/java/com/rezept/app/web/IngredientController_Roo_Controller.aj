// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app.web;

import com.rezept.app.Ingredient;
import com.rezept.app.Ingredienttype;
import com.rezept.app.web.IngredientController;
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

privileged aspect IngredientController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String IngredientController.create(@Valid Ingredient ingredient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ingredient);
            return "ingredients/create";
        }
        uiModel.asMap().clear();
        ingredient.persist();
        return "redirect:/ingredients/" + encodeUrlPathSegment(ingredient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String IngredientController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Ingredient());
        return "ingredients/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String IngredientController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("ingredient", Ingredient.findIngredient(id));
        uiModel.addAttribute("itemId", id);
        return "ingredients/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String IngredientController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ingredients", Ingredient.findIngredientEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Ingredient.countIngredients() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ingredients", Ingredient.findAllIngredients(sortFieldName, sortOrder));
        }
        return "ingredients/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String IngredientController.update(@Valid Ingredient ingredient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ingredient);
            return "ingredients/update";
        }
        uiModel.asMap().clear();
        ingredient.merge();
        return "redirect:/ingredients/" + encodeUrlPathSegment(ingredient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String IngredientController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, Ingredient.findIngredient(id));
        return "ingredients/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String IngredientController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Ingredient ingredient = Ingredient.findIngredient(id);
        ingredient.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ingredients";
    }
    
    void IngredientController.populateEditForm(Model uiModel, Ingredient ingredient) {
        uiModel.addAttribute("ingredient", ingredient);
        uiModel.addAttribute("ingredienttypes", Ingredienttype.findAllIngredienttypes());
    }
    
    String IngredientController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
