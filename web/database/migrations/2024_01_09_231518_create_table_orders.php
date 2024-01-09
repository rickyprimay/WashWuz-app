<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('order', function (Blueprint $table) {
            $table->uuid('uuid_order')->primary();
            $table->uuid('uuid_user');
            $table->foreign('uuid_user')->references('uuid')->on('users')->onDelete('cascade');
            $table->uuid('uuid_service');
            $table->foreign('uuid_service')->references('uuid_service')->on('service')->onDelete('cascade');
            $table->uuid('uuid_laundry');
            $table->foreign('uuid_laundry')->references('uuid_laundry')->on('laundry')->onDelete('cascade');
            $table->timestamp('pickup_time')->nullable();
            $table->timestamp('sending_time')->nullable();
            $table->enum('payment_status', ['pending', 'completed', 'failed'])->default('pending');
            $table->string('payment_url')->nullable();
            $table->string('payment_method')->nullable();
            $table->float('price_total');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order');
    }
};
