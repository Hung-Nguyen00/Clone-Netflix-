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
    <title>Tables - SB Admin</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body class="sb-nav-fixed">
	<jsp:include page="Header.jsp"></jsp:include>
        <div class="modelAcc">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Edit Account</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Name Actor</label>
                            <input list="browActor" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browActor">
                                <option value="John Nguyen"></option>
                                <option value="Hung"></option>
                                <option value="Nhi"></option>
                                <option value="Long"></option>
                            </datalist>
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="modelCate">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Category</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Name Category</label>
                            <input list="browCate" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browCate">
                                <option value="Internet Explorer"></option>
                                <option value="Firefox"></option>
                                <option value="Chrome"></option>
                                <option value="Opera"></option>
                                <option value="Safari"></option>
                            </datalist>
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="modelSeason">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Season</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="mb-2">Name Season</label>
                            <input list="browSeason" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browSeason">
                                <option value="Internet Explorer"></option>
                                <option value="Firefox"></option>
                                <option value="Chrome"></option>
                                <option value="Opera"></option>
                                <option value="Safari"></option>
                            </datalist>
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Detail Movies</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item">TV Show</li>
                        <li class="breadcrumb-item active">Movie Details</li>
                    </ol>
                    <div class="d-flex flex-lg-wrap">
                        <div class="bgc-white p-20 bd border pr-3 pl-3 col-md-6">
                            <h4 class="c-grey-900 text-center pt-3 mb-4">Movie Information</h4>
                            <div class="mT-30">
                                <form class="needs-validation pb-2" novalidate>
                                    <div class="form-row">
                                        <div class="form-group col-md-9">
                                            <label for="name">Name</label>
                                            <input type="text" value="Name" class="form-control" id="name">

                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="duration">Duration</label>
                                            <input type="text" value="2h30m" class="form-control" id="duration">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="trailer">Trailer</label>
                                        <input type="text" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="trailer" placeholder="1234 Main St">
                                    </div>
                                    <div class="form-group">
                                        <label for="Image">Image</label>
                                        <input type="text" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="trailer" placeholder="1234 Main St">
                                    </div>
                                    <div class="form-group">
                                        <label for="movie">Movie</label>
                                        <input type="text" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="movie">
                                    </div>
                                    <div class="form-group">
                                        <label for="Description">Description</label>
                                        <textarea class="form-control" id="Description" rows="3"> Hello</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="Logo">Logo</label>
                                        <input type="text" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="logo">
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                            <input type="checkbox" id="inputCall2" name="inputCheckboxesCall" class="peer">
                                            <label for="inputCall2" class="peers peer-greed js-sb ai-c">
                                                <span class="peer peer-greed">Top Hot</span>
                                            </label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary    ">Save</button>
                                </form>
                            </div>
                        </div>
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i> Actors
                                <button class="btn-add float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
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
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex mt-2">
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i> Categories
                                <button class="btn-add-Category float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
                                </div>
                            </button>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i> Seasons
                                <button class="btn-add-Season float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
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
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>John Nguyen</td>
                                                <td>20/11/2021</td>
                                                <td class="text-center">
                                                    <button class="btn-trash btn-danger border-0">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                                    <button class="btn-wrench border-0">
                                                    <a href="#"><i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
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
    <script src="../scripts/app1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>