@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="page-wrapper">
	<div class="page-content">
		<!--breadcrumb-->
		<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
			<div class="ps-3">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb mb-0 p-0">
						<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a></li>
						<li class="breadcrumb-item active" aria-current="page">Update SubCategory</li>
					</ol>
				</nav>
			</div>
		</div>
		<!--end breadcrumb-->
		<div class="container">
			<div class="main-body">
				<div class="row">
					<div class="col-lg-8">
						<form method="post" action="{{ route('subcategory.update') }}"> 
							@csrf
							<input type="hidden" name="id" value="{{$subcategory->id}}">
							<div class="card">
								<div class="card-body">
									<div class="row mb-3">
										<div class="col-sm-3">
											<h6 class="mb-0">Category Name </h6>
										</div>
										<div class="col-sm-9 text-secondary">
											<select class="form-select mb-3" name="category_name" aria-label="Default select example">
												<option selected="">-- Select --</option>
												@foreach($category as $cat)
												<option value="{{$cat->category_name}}" {{ $cat->category_name == $subcategory->category_name ? 'selected' : ''}} >{{$cat->category_name}}</option>
												@endforeach
											</select>
											@error('category_name')
												<span class="text-danger">{{$message}}</span>
											@enderror	
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-sm-3">
											<h6 class="mb-0">SubCategory Name </h6>
										</div>
										<div class="col-sm-9 text-secondary">
											<input type="text" name="subcategory_name" class="form-control" value="{{$subcategory->subcategory_name}} ">
											@error('subcategory_name')
												<span class="text-danger">{{$message}}</span>
											@enderror	
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-3"></div>
										<div class="col-sm-9 text-secondary">
											<input type="submit" class="btn btn-primary px-4" value="Update SubCategory">
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection