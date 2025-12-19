<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" %>

<script runat="server">

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Response.Write("Your request is sent successfully..");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
    <div align= "center">
       <h2>F&H</h2>
       </div>
        <h2 align=left>Contact Us</h2>
        <div class="row mt-4">
            <div class="col-md-6">
                <h4>Get In Touch</h4>
                <form>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="NameTextBox" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="EmailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="EmailTextBox" ErrorMessage="*" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="PhoneTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control" placeholder="Enter your phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="MessageTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="MessageTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Your message"></asp:TextBox>
                    </div>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" 
                        CssClass="btn btn-primary" onclick="SubmitButton_Click"/>
                </form>
            </div>
            <div class="col-md-6">
                <h4>Our Office</h4>
                <p><strong>Address:</strong> Adheri Nagari , Bhivandi (E)</p>
                <p><strong>Phone:</strong> +91 986549318</p>
                <p><strong>Email:</strong> fandh@gmail.com</p>
                <!-- Google Maps Embed -->
                <div class="map-responsive">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.835434509207!2d144.9537353153159!3d-37.81627917975179!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf5775f5f1f8fb3b7!2sVictoria%20Market!5e0!3m2!1sen!2sau!4v1603069045643!5m2!1sen!2sau" width="100%" height="250" frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

