@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="page-wrapper">
	<div class="page-content">
		<div class="card radius-10">
			<div class="card-body">
				<div class="d-flex align-items-center">
					<div>
						<h5 class="mb-0">All Product </h5>
					</div>
					<div class="font-22 ms-auto"><i class="bx bx-dots-horizontal-rounded"></i></div>
				</div>
			<hr>
				<div class="table-responsive">
					<table class="table align-middle mb-0">
						<thead class="table-light">
							<tr>
							<th>S. No.</th>
							<th>Product Image</th>
							<th>Product Name</th>
							<th>Product Code</th>
							<th>Product Category</th>
							<th>Action</th>
							</tr>
						</thead>
						<tbody>		
							@php($i = 1)
							@foreach($data as $item)
							<tr>
								<td># {{$i++}}</td>
								<td>
                                    <div class="d-flex align-items-center">
                                    	<div class="recent-product-img">
                                    		<img src="{{$item->image}}" alt=""/>
                                    	</div>
                                    </div>
                                </td>
                                <td>{{$item->title}}</td>
                                <td>{{$item->product_code}}</td>
                                <td>{{$item->category}}</td>
                                <td>
									<a href="{{ route('product.edit', $item->id) }}" class="btn btn-info">Edit</a>
									<a href="{{ route('slider.delete', $item->id) }}" class="btn btn-danger" id="delete">Delete</a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- {{$data->links()}} -->
		{{$data->links('vendor.pagination.custom')}}
	</div>
</div>

@endsection