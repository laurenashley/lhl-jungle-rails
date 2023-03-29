describe('Add to cart functionality', () => {
  beforeEach(() => {
    cy.visit("/");
  });
  it('adds product to cart when Add to Cart button clicked, cart count increases by 1', () => {
    // find product element, click on it
    cy.get("[alt='Scented Blade']").click();
    // Click add button
    cy.contains("Add").click();
    // Check that cart increased by 1
    cy.contains("My Cart (1)");
  })
})