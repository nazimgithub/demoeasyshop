<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_no');
            $table->string('product_name');
            $table->string('product_code');
            $table->string('size');
            $table->string('color');
            $table->integer('quantity');
            $table->string('unit_price');
            $table->string('total_price');
            $table->string('email');
            $table->string('name');
            $table->string('payment_method');
            $table->string('delivery_address');
            $table->string('city');
            $table->string('delivery_charge');
            $table->string('order_date');
            $table->string('order_time');
            $table->string('order_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
