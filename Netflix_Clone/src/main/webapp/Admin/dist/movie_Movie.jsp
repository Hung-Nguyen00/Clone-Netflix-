<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Movies</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

</head>

<body class="sb-nav-fixed">
		<jsp:include page="Header.jsp"></jsp:include>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Movies</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item">Movie</li>
                        <li class="breadcrumb-item active">Movies</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i> Data Table Movies
                            <button class="float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <a href="movie_Detail.jsp" class="text-decoration-none  text-light">Add</a>
                                </div>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Name</th>
                                            <th>Last Update</th>
                                            <th> Top Hot </th>
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Name</th>
                                            <th>Last Update</th>
                                            <th>Top Hot</th>
                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>John Nguyen</td>
                                            <td>20/11/2021</td>
                                            <td class="text-center">
                                                <i class="fas fa-check-square "></i>
                                            </td>
                                            <td class="text-center">
                                                <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                <button class="btn-wrench border-0">
                                                    <a href="movie_Detail.jsp"><i class="fas fa-eye"></i></a>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>John Nguyen</td>
                                            <td>20/11/2021</td>
                                            <td class="text-center">
                                                <i class="fas fa-check-square "></i>
                                            </td>
                                            <td class="text-center">
                                                <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                <button class="btn-wrench border-0">
                                                    <a href="movie_Detail.jsp"><i class="fas fa-eye"></i></a>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>John Nguyen</td>
                                            <td>20/11/2021</td>
                                            <td class="text-center">
                                                <i class="fas fa-check-square "></i>
                                            </td>
                                            <td class="text-center">
                                                <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                <button class="btn-wrench border-0">
                                                    <a href="movie_Detail.jsp"><i class="fas fa-eye"></i></a>
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a> &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>