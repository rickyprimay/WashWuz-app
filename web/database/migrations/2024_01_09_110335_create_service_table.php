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
        Schema::create('service', function (Blueprint $table) {
            $table->uuid('id_service')->primary();
            $table->uuid('id_laundry');
            $table->foreign('id_laundry')
                ->references('uuid')
                ->on('users')
                ->onDelete('cascade');
            $table->string('type_service');
            $table->string('detail');
            $table->float('price');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('service');
    }
};
