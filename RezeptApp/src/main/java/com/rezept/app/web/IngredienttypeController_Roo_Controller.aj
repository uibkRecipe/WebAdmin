// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app.web;

import com.rezept.app.Composedof;
import com.rezept.app.Ingredient;
import com.rezept.app.Ingredienttype;
import com.rezept.app.web.IngredienttypeController;
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

privileged aspect IngredienttypeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String IngredienttypeController.create(@Valid Ingredienttype ingredienttype, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ingredienttype);
            return "ingredienttypes/create";
        }
        uiModel.asMap().clear();
        ingredienttype.persist();
        return "redirect:/ingredienttypes/" + encodeUrlPathSegment(ingredienttype.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String IngredienttypeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Ingredienttype());
        return "ingredienttypes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String IngredienttypeController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("ingredienttype", Ingredienttype.findIngredienttype(id));
        uiModel.addAttribute("itemId", id);
        return "ingredienttypes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String IngredienttypeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ingredienttypes", Ingredienttype.findIngredienttypeEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Ingredienttype.countIngredienttypes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ingredienttypes", Ingredienttype.findAllIngredienttypes(sortFieldName, sortOrder));
        }
        return "ingredienttypes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String IngredienttypeController.update(@Valid Ingredienttype ingredienttype, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ingredienttype);
            return "ingredienttypes/update";
        }
        uiModel.asMap().clear();
        ingredienttype.merge();
        return "redirect:/ingredienttypes/" + encodeUrlPathSegment(ingredienttype.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String IngredienttypeController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, Ingredienttype.findIngredienttype(id));
        return "ingredienttypes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String IngredienttypeController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Ingredienttype ingredienttype = Ingredienttype.findIngredienttype(id);
        ingredienttype.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ingredienttypes";
    }
    
    void IngredienttypeController.populateEditForm(Model uiModel, Ingredienttype ingredienttype) {
        uiModel.addAttribute("ingredienttype", ingredienttype);
        uiModel.addAttribute("composedofs", Composedof.findAllComposedofs());
        uiModel.addAttribute("ingredients", Ingredient.findAllIngredients());
    }
    
    String IngredienttypeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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