<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
        <meta name="author" content="Hỏi Dân IT" />
        <title>Create Product - Hỏi Dân IT</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <script>
            $(document).ready(() => {
                //Trang web đã load
                const productFile = $("#productFile"); //Lấy elm có id productFile
                productFile.change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]); //Link URL hiển thị ảnh
                    $("#productPreview").attr("src", imgURL);
                    $("#productPreview").css({ display: "block" });
                });
            });
        </script>

        <script
            src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
            crossorigin="anonymous"
        ></script>
    </head>

    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp" />
        <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage Products</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">
                                <a href="/admin">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <h3>Create a product</h3>
                                    <hr />
                                    <form:form
                                        method="post"
                                        action="/admin/product/create"
                                        modelAttribute="newProduct"
                                        class="row"
                                        enctype="multipart/form-data"
                                    >
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Name:</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="name"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Price:</label
                                            >
                                            <form:input
                                                type="number"
                                                class="form-control"
                                                path="price"
                                            />
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"
                                                >Detail description:</label
                                            >
                                            <form:textarea
                                                type="text"
                                                class="form-control"
                                                path="detailDesc"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Short description:</label
                                            >
                                            <form:input
                                                type="text"
                                                class="form-control"
                                                path="shortDesc"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Quantity:</label
                                            >
                                            <form:input
                                                type="number"
                                                class="form-control"
                                                path="quantity"
                                            />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Factory:</label
                                            >
                                            <form:select
                                                class="form-select"
                                                path="factory"
                                            >
                                                <form:option value="Apple">
                                                    Apple
                                                </form:option>
                                                <form:option value="Asus">
                                                    Asus
                                                </form:option>
                                                <form:option value="Lenovo">
                                                    Lenovo
                                                </form:option>
                                                <form:option value="Dell">
                                                    Dell
                                                </form:option>
                                                <form:option value="LG">
                                                    LG
                                                </form:option>
                                                <form:option value="Acer">
                                                    Acer
                                                </form:option>
                                            </form:select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label"
                                                >Target:</label
                                            >
                                            <form:select
                                                class="form-select"
                                                path="target"
                                            >
                                                <form:option value="Gaming">
                                                    Gaming
                                                </form:option>
                                                <form:option value="Sinh viên - Văn phòng">
                                                    Sinh viên - Văn phòng
                                                </form:option>
                                                <form:option value="Thiết kế đồ họa">
                                                    Thiết kế đồ họa
                                                </form:option>
                                                <form:option value="Mỏng nhẹ">
                                                    Mỏng nhẹ
                                                </form:option>
                                                <form:option value="Doanh nhân">
                                                    Doanh nhân
                                                </form:option>
                                                <form:option value="Công nghệ thông tin">
                                                    Công nghệ thông tin
                                                </form:option>
                                            </form:select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label
                                                for="productFile"
                                                class="form-label"
                                            >
                                                Image:
                                            </label>
                                            <input
                                                class="form-control"
                                                type="file"
                                                id="productFile"
                                                accept=".png, .jpg, .jpeg"
                                                name="productFile"
                                            />
                                        </div>
                                        <div class="col-12 mb-3">
                                            <img
                                                style="
                                                    max-height: 250px;
                                                    display: none;
                                                "
                                                alt="product preview"
                                                id="productPreview"
                                            />
                                        </div>
                                        <div class="col-12 mb-5">
                                            <button
                                                type="submit"
                                                class="btn btn-primary"
                                            >
                                                Create
                                            </button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="../layout/footer.jsp" />
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/scripts.js"></script>
    </body>
</html>
