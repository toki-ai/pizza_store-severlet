<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: orange">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <h4>Categories:</h4>
        <div class="collapse navbar-collapse" id="navbarSupportedContent2">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <!-- Link -->
                <li class="nav-item acitve">
                    <a class="nav-link" style="${pathId != null ? "color: white" : "color: blue"}" href="home">All</a>
                </li>
                <c:forEach items="${listCategory}" var="c">
                    <li class="nav-item" >
                        <a class="nav-link" style="${pathId == c.categoryID ? "color: blue;" : "color: white"}" href="category?id=${c.categoryID}">${c.categoryName}</a>
                    </li>
                </c:forEach>
            </ul>

            <!-- Search -->
            <form class="w-auto py-1" style="margin-left: 100px; max-width: 12rem;">
                <input type="search" class="form-control rounded-0" placeholder="Search" aria-label="Search">
            </form>

        </div>
    </div>
</nav>
<!-- Navbar -->

<!-- Products -->
<section>
    <div class="">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">UnitPrice</th>
                    <th scope="col">Option</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${listProducts}" var="p">    
                <tr>
                    <th scope="row" style="width: 100px">${p.productID}</th>
                    <td style="width: 150px">
                        <img src="${p.productImage}" style="object-fit: cover; max-height:50px; width: 50px;" />
                    </td>
                    <td>
                        <h6 class="card-title" style="padding-top: 10px">${p.productName}</h6>
                    </td>
                    <td>
                        <h6 class="col-lg-2 price">${p.unitPrice}</h6>
                    </td>
                    <td>
                        <a href="detail?id=${p.productID}">
                            <i style="color: gray" class="fa-solid fa-eye"></i>
                        </a> 
                        <a style="margin: 0 30px" href="detail?id=${p.productID}">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </a> 
                        <a href="detail?id=${p.productID}">
                            <i style="color: red" class="fa-solid fa-trash"></i>
                        </a> 
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<!-- Pagination -->
<nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
    <ul class="pagination">
        <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li class="page-item active"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">4</a></li>
        <li class="page-item"><a class="page-link" href="#">5</a></li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>  
