<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"   %>


<script runat="server">

    protected void AddToCartButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void AddToCartButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
    <div align= "center">
       <h2>F&H</h2>
       </div>
        <h3 class="text-center">Our Products</h3>
        <div class="row">
            <!-- Product 1 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/t-3.avif" class="card-img-top" alt="Product 1">
                    <div class="card-body text-center">
                        <h5 class="card-title">Leves Black Shirt</h5>
                        <p class="card-text">Rs. 42000.00</p>
                        <asp:Button ID="AddToCartButton1" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton1_Click" />
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/w-6.webp" class="card-img-top" alt="Product 2">
                    <div class="card-body text-center">
                        <h5 class="card-title">Plazo Suit Set </h5>
                        <p class="card-text">Rs.900.00</p>
                        <asp:Button ID="AddToCartButton2" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton2_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/t-6.webp"class="card-img-top" alt="Product 3">
                    <div class="card-body text-center">
                        <h5 class="card-title">Full Selves T-Shirt</h5>
                        <p class="card-text">Rs. 4000.00</p>
                        <asp:Button ID="AddToCartButton3" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton3_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/t-10.webp"class="card-img-top" alt="Product 4">
                    <div class="card-body text-center">
                        <h5 class="card-title">Leves Dark Green Shirt</h5>
                        <p class="card-text">Rs. 41000.00</p>
                        <asp:Button ID="AddToCartButton4" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton4_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 5 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/w-5.webp" class="card-img-top" alt="Product 5">
                    <div class="card-body text-center">
                        <h5 class="card-title">Yellow Anarkali Suit</h5>
                        <p class="card-text">Rs. 4000.00</p>
                        <asp:Button ID="AddToCartButton5" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton5_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 6 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/w-7.webp" class="card-img-top" alt="Product 6">
                    <div class="card-body text-center">
                        <h5 class="card-title">Red Kurti</h5>
                        <p class="card-text">Rs. 600.00</p>
                        <asp:Button ID="AddToCartButton6" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton6_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 7 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/w-25.webp" class="card-img-top" alt="Product 7">
                    <div class="card-body text-center">
                        <h5 class="card-title">Red Jhumka</h5>
                        <p class="card-text">Rs. 600.00</p>
                        <asp:Button ID="AddToCartButton7" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton7_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 8 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/t-4.webp" class="card-img-top" alt="Product 8">
                    <div class="card-body text-center">
                        <h5 class="card-title">Puma Black Nike</h5>
                        <p class="card-text">Rs. 1300.00</p>
                        <asp:Button ID="AddToCartButton8" runat="server" Text="Add to Cart" 
                            CssClass="btn btn-primary" onclick="AddToCartButton8_Click"/>
                    </div>
                </div>
            </div>

            <!-- Product 9 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="images/w-28.webp" class="card-img-top" alt="Product 9">
                    <div class="card-body text-center">
                        <h5 class="card-title">Bag set</h5>
                        <p class="card-text">Rs. 6000.00</p>
                        <asp:Button ID="AddToCartButton9" 
                            runat="server" Text="Add to Cart" CssClass="btn btn-primary" 
                            onclick="AddToCartButton9_Click"/>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>


