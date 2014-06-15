package com.rezept.app.web;
import com.rezept.app.Friend;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/friends")
@Controller
@RooWebScaffold(path = "friends", formBackingObject = Friend.class)
public class FriendController {
}
