package com.rezept.app.web;
import com.rezept.app.Ingredienttype;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ingredienttypes")
@Controller
@RooWebScaffold(path = "ingredienttypes", formBackingObject = Ingredienttype.class)
public class IngredienttypeController {
}
