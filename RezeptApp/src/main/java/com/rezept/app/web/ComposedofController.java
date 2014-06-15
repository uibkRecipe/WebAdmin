package com.rezept.app.web;
import com.rezept.app.Composedof;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/composedofs")
@Controller
@RooWebScaffold(path = "composedofs", formBackingObject = Composedof.class)
public class ComposedofController {
}
