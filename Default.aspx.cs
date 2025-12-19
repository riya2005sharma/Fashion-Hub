using System;
using System.Collections.Generic;
using System.Web.UI;

namespace MyWebsite.Pages
{
    public partial class Home : Page
    {
        // Simulated products data
        private Dictionary<int, string> products = new Dictionary<int, string>
        {
            { 1, "Product 1" },
            { 2, "Product 2" },
            { 3, "Product 3" },
            { 4, "Product 4" },
            { 5, "Product 5" },
            { 6, "Product 6" },
            { 7, "Product 7" },
            { 8, "Product 8" },
            { 9, "Product 9" }
        };

        private Dictionary<int, decimal> productPrices = new Dictionary<int, decimal>
        {
            { 1, 42000.00m },
            { 2, 900.00m },
            { 3, 4000.00m },
            { 4, 41000.00m },
            { 5, 4000.00m },
            { 6, 600.00m },
            { 7, 600.00m },
            { 8, 1300.00m },
            { 9, 6000.00m }
        };

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Add to Cart event handler
        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(((Button)sender).CommandArgument);

            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartItem>();
            }

            List<CartItem> cart = (List<CartItem>)Session["Cart"];

            CartItem existingItem = cart.Find(item => item.ProductId == productId);

            if (existingItem == null)
            {
                cart.Add(new CartItem
                {
                    ProductId = productId,
                    ProductName = products[productId],
                    Price = productPrices[productId],
                    Quantity = 1
                });
            }
            else
            {
                existingItem.Quantity++;
            }

            Session["Cart"] = cart;

            // Redirect to the Cart page after adding an item
            Response.Redirect("Cart.aspx");
        }
    }

    // CartItem class to hold cart item information
    public class CartItem
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
    }
}
