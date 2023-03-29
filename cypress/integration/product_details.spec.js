describe('product detial page', () => {
  beforeEach(() => {
    cy.visit("/");
  });
  it('loads the product detail page when user clicks on a product', () => {
    // find product element, click on it
    cy.get("[href='/products/4']").click();
    // Check if product detail header is present
    cy.contains("Scented Blade");
  })
})