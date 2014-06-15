package com.rezept.app.web;
import com.rezept.app.Recipe;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/recipes")
@Controller
@RooWebScaffold(path = "recipes", formBackingObject = Recipe.class)
public class RecipeController {
}
