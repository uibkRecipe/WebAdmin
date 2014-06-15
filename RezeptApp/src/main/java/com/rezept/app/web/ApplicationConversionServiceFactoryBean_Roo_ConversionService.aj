// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rezept.app.web;

import com.rezept.app.City;
import com.rezept.app.Composedof;
import com.rezept.app.ComposedofPK;
import com.rezept.app.Country;
import com.rezept.app.Friend;
import com.rezept.app.FriendPK;
import com.rezept.app.Ingredient;
import com.rezept.app.Ingredienttype;
import com.rezept.app.Rating;
import com.rezept.app.Recipe;
import com.rezept.app.Region;
import com.rezept.app.User;
import com.rezept.app.web.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<City, String> ApplicationConversionServiceFactoryBean.getCityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.City, java.lang.String>() {
            public String convert(City city) {
                return new StringBuilder().append(city.getCountry()).append(' ').append(city.getRegion()).append(' ').append(city.getName()).append(' ').append(city.getLatitude()).toString();
            }
        };
    }
    
    public Converter<Integer, City> ApplicationConversionServiceFactoryBean.getIdToCityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.City>() {
            public com.rezept.app.City convert(java.lang.Integer id) {
                return City.findCity(id);
            }
        };
    }
    
    public Converter<String, City> ApplicationConversionServiceFactoryBean.getStringToCityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.City>() {
            public com.rezept.app.City convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), City.class);
            }
        };
    }
    
    public Converter<Composedof, String> ApplicationConversionServiceFactoryBean.getComposedofToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Composedof, java.lang.String>() {
            public String convert(Composedof composedof) {
                return new StringBuilder().append(composedof.getQuantity()).toString();
            }
        };
    }
    
    public Converter<ComposedofPK, Composedof> ApplicationConversionServiceFactoryBean.getIdToComposedofConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.ComposedofPK, com.rezept.app.Composedof>() {
            public com.rezept.app.Composedof convert(com.rezept.app.ComposedofPK id) {
                return Composedof.findComposedof(id);
            }
        };
    }
    
    public Converter<String, Composedof> ApplicationConversionServiceFactoryBean.getStringToComposedofConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Composedof>() {
            public com.rezept.app.Composedof convert(String id) {
                return getObject().convert(getObject().convert(id, ComposedofPK.class), Composedof.class);
            }
        };
    }
    
    public Converter<Country, String> ApplicationConversionServiceFactoryBean.getCountryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Country, java.lang.String>() {
            public String convert(Country country) {
                return new StringBuilder().append(country.getName()).append(' ').append(country.getLatitude()).append(' ').append(country.getLongitude()).append(' ').append(country.getRegions()).toString();
            }
        };
    }
    
    public Converter<String, Country> ApplicationConversionServiceFactoryBean.getIdToCountryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Country>() {
            public com.rezept.app.Country convert(java.lang.String id) {
                return Country.findCountry(id);
            }
        };
    }
    
    public Converter<Friend, String> ApplicationConversionServiceFactoryBean.getFriendToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Friend, java.lang.String>() {
            public String convert(Friend friend) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<FriendPK, Friend> ApplicationConversionServiceFactoryBean.getIdToFriendConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.FriendPK, com.rezept.app.Friend>() {
            public com.rezept.app.Friend convert(com.rezept.app.FriendPK id) {
                return Friend.findFriend(id);
            }
        };
    }
    
    public Converter<String, Friend> ApplicationConversionServiceFactoryBean.getStringToFriendConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Friend>() {
            public com.rezept.app.Friend convert(String id) {
                return getObject().convert(getObject().convert(id, FriendPK.class), Friend.class);
            }
        };
    }
    
    public Converter<Ingredient, String> ApplicationConversionServiceFactoryBean.getIngredientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Ingredient, java.lang.String>() {
            public String convert(Ingredient ingredient) {
                return new StringBuilder().append(ingredient.getCity()).append(' ').append(ingredient.getBrandname()).toString();
            }
        };
    }
    
    public Converter<Integer, Ingredient> ApplicationConversionServiceFactoryBean.getIdToIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.Ingredient>() {
            public com.rezept.app.Ingredient convert(java.lang.Integer id) {
                return Ingredient.findIngredient(id);
            }
        };
    }
    
    public Converter<String, Ingredient> ApplicationConversionServiceFactoryBean.getStringToIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Ingredient>() {
            public com.rezept.app.Ingredient convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Ingredient.class);
            }
        };
    }
    
    public Converter<Ingredienttype, String> ApplicationConversionServiceFactoryBean.getIngredienttypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Ingredienttype, java.lang.String>() {
            public String convert(Ingredienttype ingredienttype) {
                return new StringBuilder().append(ingredienttype.getName()).toString();
            }
        };
    }
    
    public Converter<Integer, Ingredienttype> ApplicationConversionServiceFactoryBean.getIdToIngredienttypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.Ingredienttype>() {
            public com.rezept.app.Ingredienttype convert(java.lang.Integer id) {
                return Ingredienttype.findIngredienttype(id);
            }
        };
    }
    
    public Converter<String, Ingredienttype> ApplicationConversionServiceFactoryBean.getStringToIngredienttypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Ingredienttype>() {
            public com.rezept.app.Ingredienttype convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Ingredienttype.class);
            }
        };
    }
    
    public Converter<Rating, String> ApplicationConversionServiceFactoryBean.getRatingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Rating, java.lang.String>() {
            public String convert(Rating rating) {
                return new StringBuilder().append(rating.getStar()).append(' ').append(rating.getComment()).toString();
            }
        };
    }
    
    public Converter<Integer, Rating> ApplicationConversionServiceFactoryBean.getIdToRatingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.Rating>() {
            public com.rezept.app.Rating convert(java.lang.Integer id) {
                return Rating.findRating(id);
            }
        };
    }
    
    public Converter<String, Rating> ApplicationConversionServiceFactoryBean.getStringToRatingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Rating>() {
            public com.rezept.app.Rating convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Rating.class);
            }
        };
    }
    
    public Converter<Recipe, String> ApplicationConversionServiceFactoryBean.getRecipeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Recipe, java.lang.String>() {
            public String convert(Recipe recipe) {
                return new StringBuilder().append(recipe.getName()).append(' ').append(recipe.getSubtitle()).append(' ').append(recipe.getTime()).append(' ').append(recipe.getNumberofratings()).toString();
            }
        };
    }
    
    public Converter<Integer, Recipe> ApplicationConversionServiceFactoryBean.getIdToRecipeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.Recipe>() {
            public com.rezept.app.Recipe convert(java.lang.Integer id) {
                return Recipe.findRecipe(id);
            }
        };
    }
    
    public Converter<String, Recipe> ApplicationConversionServiceFactoryBean.getStringToRecipeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Recipe>() {
            public com.rezept.app.Recipe convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Recipe.class);
            }
        };
    }
    
    public Converter<Region, String> ApplicationConversionServiceFactoryBean.getRegionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.Region, java.lang.String>() {
            public String convert(Region region) {
                return new StringBuilder().append(region.getCountry()).append(' ').append(region.getCode()).append(' ').append(region.getName()).append(' ').append(region.getLatitude()).toString();
            }
        };
    }
    
    public Converter<Integer, Region> ApplicationConversionServiceFactoryBean.getIdToRegionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.rezept.app.Region>() {
            public com.rezept.app.Region convert(java.lang.Integer id) {
                return Region.findRegion(id);
            }
        };
    }
    
    public Converter<String, Region> ApplicationConversionServiceFactoryBean.getStringToRegionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.Region>() {
            public com.rezept.app.Region convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Region.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getPassword()).append(' ').append(user.getEmail()).append(' ').append(user.getFirstname()).append(' ').append(user.getLastname()).toString();
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.User>() {
            public com.rezept.app.User convert(java.lang.String id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, ComposedofPK> ApplicationConversionServiceFactoryBean.getJsonToComposedofPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.ComposedofPK>() {
            public ComposedofPK convert(String encodedJson) {
                return ComposedofPK.fromJsonToComposedofPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<ComposedofPK, String> ApplicationConversionServiceFactoryBean.getComposedofPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.ComposedofPK, java.lang.String>() {
            public String convert(ComposedofPK composedofPK) {
                return Base64.encodeBase64URLSafeString(composedofPK.toJson().getBytes());
            }
        };
    }
    
    public Converter<String, FriendPK> ApplicationConversionServiceFactoryBean.getJsonToFriendPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rezept.app.FriendPK>() {
            public FriendPK convert(String encodedJson) {
                return FriendPK.fromJsonToFriendPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<FriendPK, String> ApplicationConversionServiceFactoryBean.getFriendPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rezept.app.FriendPK, java.lang.String>() {
            public String convert(FriendPK friendPK) {
                return Base64.encodeBase64URLSafeString(friendPK.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCityToStringConverter());
        registry.addConverter(getIdToCityConverter());
        registry.addConverter(getStringToCityConverter());
        registry.addConverter(getComposedofToStringConverter());
        registry.addConverter(getIdToComposedofConverter());
        registry.addConverter(getStringToComposedofConverter());
        registry.addConverter(getCountryToStringConverter());
        registry.addConverter(getIdToCountryConverter());
        registry.addConverter(getFriendToStringConverter());
        registry.addConverter(getIdToFriendConverter());
        registry.addConverter(getStringToFriendConverter());
        registry.addConverter(getIngredientToStringConverter());
        registry.addConverter(getIdToIngredientConverter());
        registry.addConverter(getStringToIngredientConverter());
        registry.addConverter(getIngredienttypeToStringConverter());
        registry.addConverter(getIdToIngredienttypeConverter());
        registry.addConverter(getStringToIngredienttypeConverter());
        registry.addConverter(getRatingToStringConverter());
        registry.addConverter(getIdToRatingConverter());
        registry.addConverter(getStringToRatingConverter());
        registry.addConverter(getRecipeToStringConverter());
        registry.addConverter(getIdToRecipeConverter());
        registry.addConverter(getStringToRecipeConverter());
        registry.addConverter(getRegionToStringConverter());
        registry.addConverter(getIdToRegionConverter());
        registry.addConverter(getStringToRegionConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getJsonToComposedofPKConverter());
        registry.addConverter(getComposedofPKToJsonConverter());
        registry.addConverter(getJsonToFriendPKConverter());
        registry.addConverter(getFriendPKToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}