package com.rezept.app.web;
import com.rezept.app.Ingredient;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ingredients")
@Controller
@RooWebScaffold(path = "ingredients", formBackingObject = Ingredient.class)
public class IngredientController {
}
