package com.rezept.app.web;
import com.rezept.app.Rating;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ratings")
@Controller
@RooWebScaffold(path = "ratings", formBackingObject = Rating.class)
public class RatingController {
}
