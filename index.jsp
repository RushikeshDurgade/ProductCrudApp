<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${product }" var="product">
							<tr>
								<th scope="row">${product.id }</th>
								<td>${product.name }</td>
								<td>${product.description }</td>
								<td class="font-weight-bold">&#x20B9;${product.price }</td>
								<td><a href="delete-product/${product.id }"><i
										class="fa-solid fa-trash" style="color: red; font-size: 25px"></i></a>
									<a href="update-product/${product.id }"><i
										class="fa-solid fa-pen-nib" style="color: blue; font-size: 25px"></i></a>
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>


				<div class="container text-center">

					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>

				</div>


			</div>

		</div>


	</div>
</body>
</html>
