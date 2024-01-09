<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('laundry', function (Blueprint $table) {
            $table->uuid('uuid_laundry')->primary();
            $table->uuid('uuid_user');
            $table->foreign('uuid_user')->references('uuid')->on('users')->onDelete('cascade');
            $table->uuid('uuid_address');
            $table->foreign('uuid_address')->references('uuid_address')->on('address')->onDelete('cascade');
            $table->time('opening_hours');
            $table->time('closing_hours');
            $table->boolean('delivery_service_available')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laundry');
    }
};
