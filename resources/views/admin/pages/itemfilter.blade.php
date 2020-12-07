@extends('admin/adminmaster')
@section("content")


<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  
  <!-- Main Sidebar Container -->
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
         
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                
              <a href="/allitems" style="text-decoration: none; color:white;">
                <h3>{{$item}}</h3>

                <p>All Items</p>
                </a>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
            
            </div>
          </div>
         
           
       
          <!-- ./col -->
          </div>
          <div class="container row" style="margin-bottom: 30px;">
          <form class="form-inline my-2 my-lg-0 ml-2" action="/itemfilter" method="POST"> 
          @csrf
          <select name="filterItem" id="" style="height:37px;">
              <option value="id">id</option>
              <option value="title">title</option>
              <option value="category">category</option>
              <option value="price">price</option>
            </select>
            <div>
            <div>
            <input name="searchitems" class="form-control mr-sm-2 ml-2" type="search" placeholder="Search" aria-label="Search" style="width: 250px;">
    
    <button class="btn btn-outline-primary my-2 my-sm-0 " type="submit">Search</button>
            </div>
   
  </form>
            </div>
          </div>
          
          <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Title</th>
      <th scope="col">Catagory</th>
      <th scope="col">Price</th>
      <td scope="col">Edit</td>
      <td scope="col">Delete</td>
    </tr>
  </thead>
  <tbody>
  @foreach ($products as $item)
    <tr>
      <th scope="row">{{$item['id']}}</th>
      <td>{{$item['title']}}</td>
      <td>{{$item['category']}}</td>
      <td>{{$item['price']}}</td>
      
      <td scope="col"><a href="/edit/{{$item->id}}" class="btn btn-success">edit</a></td>
      <td scope="col"><a href="/removeItem/{{$item->id}}" class="btn btn-warning">Delete</a></td>

    </tr>
    @endforeach
    
  </tbody>
</table>

        
        <!-- /.row -->
        <!-- Main row -->
        
          
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
@endsection