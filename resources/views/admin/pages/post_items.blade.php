@extends('admin/adminmaster')
@section("content")


<div class="wrapper">
  <!-- Navbar -->
 
  <!-- /.navbar -->

  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>General Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">General Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Post items</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="/post_items" method="POST" enctype="multipart/form-data">
              @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Title</label>
                    <input type="text" name="title"  class="form-control" id="exampleInputEmail1" placeholder="Enter title" multiple>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Price</label>
                    <input type="text" name="price" class="form-control" id="exampleInputPassword1" placeholder="Price" multiple>
                  </div>
                  <!-- <div class="form-group">
                    <label for="exampleInputPassword1">category</label>
                    <input type="text" name="category" class="form-control" id="exampleInputPassword1" placeholder="Price">
                  </div> -->
                  <div class="row">
                  <div class="col-sm-3">
                      <div class="form-group">
                        <label>Select category</label>
                        <!-- multiple class="custom-select" -->
                        
                      
                        <select  name="category">
                          <option value="Top">Top</option>
                          <option value="Blouse">Blouse</option>
                          <option value="Saree">Saree</option>
                          <option value="Dresses">Dresses</option>
                          <option value="Kurti">Kurti</option>
                          <option value="Jumpsuit">Jumpsuit</option>
                          <option value="Ladies Over Coat">Ladies Over Coat</option>
                          <option value="Long Top">Long Top</option>
                          <option value="Sleepwear">Sleepwear</option>
                          <option value="T-Shirts">T-Shirts</option>
                        </select>
                       
                      </div>
                      
                    </div>
                  </div>
                  
                   
                 
                  <div class="row">
                    <div class="col-sm-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" rows="3"  name="description"  placeholder="Enter ..."></textarea>
                      </div>
                    </div>
                    
                  </div>
                  
                  
                  <div class="row">
                  <div class="form-group">
                    <label for="gallery1">Frunt image</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="gallery1" class="custom-file-input" id="gallery1">
                        <label class="custom-file-label" for="gallery1">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        
                      </div>
                    </div>
                  </div>
                  </div>
                  <div class="row">
                  <div class="form-group">
                    <label for="gallery2">Side Image</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="gallery2" class="custom-file-input" id="gallery2">
                        <label class="custom-file-label" for="gallery2">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        
                      </div>
                    </div>
                  </div>
                  </div>
                  <div class="row">
                  <div class="form-group">
                    <label for="gallery3">Back Image</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file"  name="gallery3" class="custom-file-input" id="gallery3">
                        <label class="custom-file-label" for="gallery3">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        
                      </div>
                    </div>
                  </div>
                  </div>
                 
                <!-- /.card-body -->
                

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

           
               
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
   


@endsection