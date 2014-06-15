// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app.web;

import com.rezept.app.Composedof;
import com.rezept.app.ComposedofPK;
import com.rezept.app.Ingredienttype;
import com.rezept.app.Recipe;
import com.rezept.app.web.ComposedofController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ComposedofController_Roo_Controller {
    
    private ConversionService ComposedofController.conversionService;
    
    @Autowired
    public ComposedofController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ComposedofController.create(@Valid Composedof composedof, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, composedof);
            return "composedofs/create";
        }
        uiModel.asMap().clear();
        composedof.persist();
        return "redirect:/composedofs/" + encodeUrlPathSegment(conversionService.convert(composedof.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ComposedofController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Composedof());
        return "composedofs/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ComposedofController.show(@PathVariable("id") ComposedofPK id, Model uiModel) {
        uiModel.addAttribute("composedof", Composedof.findComposedof(id));
        uiModel.addAttribute("itemId", conversionService.convert(id, String.class));
        return "composedofs/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ComposedofController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("composedofs", Composedof.findComposedofEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Composedof.countComposedofs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("composedofs", Composedof.findAllComposedofs(sortFieldName, sortOrder));
        }
        return "composedofs/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ComposedofController.update(@Valid Composedof composedof, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, composedof);
            return "composedofs/update";
        }
        uiModel.asMap().clear();
        composedof.merge();
        return "redirect:/composedofs/" + encodeUrlPathSegment(conversionService.convert(composedof.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ComposedofController.updateForm(@PathVariable("id") ComposedofPK id, Model uiModel) {
        populateEditForm(uiModel, Composedof.findComposedof(id));
        return "composedofs/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ComposedofController.delete(@PathVariable("id") ComposedofPK id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Composedof composedof = Composedof.findComposedof(id);
        composedof.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/composedofs";
    }
    
    void ComposedofController.populateEditForm(Model uiModel, Composedof composedof) {
        uiModel.addAttribute("composedof", composedof);
        uiModel.addAttribute("ingredienttypes", Ingredienttype.findAllIngredienttypes());
        uiModel.addAttribute("recipes", Recipe.findAllRecipes());
    }
    
    String ComposedofController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
