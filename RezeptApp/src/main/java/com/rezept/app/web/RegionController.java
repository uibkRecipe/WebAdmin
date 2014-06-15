package com.rezept.app.web;
import com.rezept.app.Region;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/regions")
@Controller
@RooWebScaffold(path = "regions", formBackingObject = Region.class)
public class RegionController {
}
