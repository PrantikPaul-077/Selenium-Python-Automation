# Page Object Model Concept

The project separates page-specific locators and actions into the `pages` directory.

- `home_page.robot`: search and navigation
- `login_page.robot`: login controls
- `product_page.robot`: product and cart actions
- `cart_page.robot`: cart verification and quantity update

Reusable business flows are placed in the `keywords` directory. This makes the suite easier to maintain when locators change.
