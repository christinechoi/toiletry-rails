# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) --User has many Items
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) --Item belongs to Collection
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)  -User has many Items through Collections
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) --Item has several user-submittable attributes (name, description, brand, cost)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) -Item, Collection
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)   -Filter items by collection in Items#index (URL /items)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item) --Nested form present when creating new Item (associate to Collection)
- [x] Include signup (how e.g. Devise) -Signup via Devise
- [x] Include login (how e.g. Devise) - Login via Devise
- [x] Include logout (how e.g. Devise) - Logout via Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) -Third party signup/login via OmniAuth (Facebook)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) -Nested resources present (e.g. collections/2/items/3)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients) -Nested resource present (e.g. collections/2/items/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate