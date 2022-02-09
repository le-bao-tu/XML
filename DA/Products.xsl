<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- <?xml-stylesheet href="Products.css" type="text/css"?> -->
    <xsl:output method="html" />
    <xsl:template match="/">
        
        <html>
            <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
                <title>Product</title>
            </head>
            <body>
                <center>
                    <h1 style="color:red">Danh sách sản phẩm </h1>
                    <marquee style="color:#CC33CC"  width="40%">WELCOME TO LE BAO TU.</marquee>
                    <div class="container">
                        <table class="table table-hover" border="1px">
                            <thead>
                                <tr class="alert alert-success" style="text-align:center">
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Category_id</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">date</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Size</th>
                                    <th scope="col">Image</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="DSSanpham/Sanpham">
                                    <tr style="text-align:center">
                                        <td><xsl:apply-templates select="id"/></td>
                                        <td><xsl:apply-templates select="Name"/></td>
                                        <td ><xsl:apply-templates select="Category_id"/></td>
                                        <td><xsl:apply-templates select="Description"/></td>
                                        <td><xsl:apply-templates select="Amount"/></td>
                                        <td><xsl:apply-templates select="date"/></td>
                                        <td>
                                            <xsl:apply-templates select="Price"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:apply-templates select="Price/@unit"/>
                                        </td>
                                        <td><xsl:apply-templates select="Size"/></td>
                                        <td>
                                            <xsl:apply-templates select="Image"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:apply-templates select="Image/@image_format"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                </center>
            </body>
        </html>
        
        
    </xsl:template>
</xsl:stylesheet>