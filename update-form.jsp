<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mb-3">Change the product detail</h1>
                <form action="${pageContext.request.contextPath}/handle-product" method="post">
                <input type="hidden" value="${product.id }" name="id"/>
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <input type="text"
                               class="form-control"
                               id="name"
                               aria-describedby="emailHelp"
                               name="name"
                               placeholder="Enter the product name here"
                               value="${product.name }">
                    </div>
                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea class="form-control"
                                  name="description"
                                  id="description"
                                  rows="5"
                                  placeholder="Enter the product description">${product.description }
                                  </textarea>
                    </div>
                    <div class="form-group">
                        <label for="price">Product Price</label>
                        <input type="text"
                               placeholder="Enter Product Price"
                               name="price"
                               class="form-control"
                               id="price"
                               value="${product.price }">
                    </div>
                    <div class="container text-center">
                    
                        <a href="${pageContext.request.contextPath}/"
                           class="btn btn-outline-danger">Back</a>
                           
                        <button type="submit" class="btn" style="background-color: fuchsia;">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
