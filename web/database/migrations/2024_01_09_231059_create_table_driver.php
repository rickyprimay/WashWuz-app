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
        Schema::create('driver', function (Blueprint $table) {
            $table->uuid('uuid_driver')->primary();
            $table->uuid('uuid_user');
            $table->foreign('uuid_user')->references('uuid')->on('users')->onDelete('cascade');
            $table->uuid('uuid_laundry');
            $table->foreign('uuid_laundry')->references('uuid_laundry')->on('laundry')->onDelete('cascade');
            $table->string('driver_license_number');
            $table->string('plate_number');
            $table->string('vehicle_model');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('driver');
    }
};
