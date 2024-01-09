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
        Schema::create('status', function (Blueprint $table) {
            $table->uuid('uuid_status')->primary();
            $table->uuid('uuid_order');
            $table->foreign('uuid_order')->references('uuid_order')->on('order')->onDelete('cascade');
            $table->uuid('uuid_driver')->nullable();
            $table->foreign('uuid_driver')->references('uuid_driver')->on('driver')->onDelete('cascade')->nullable();
            $table->enum('status', ['Sedang Dicuci', 'Siap Diambil', 'Dalam Pengantaran']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laundry_status');
    }
};
