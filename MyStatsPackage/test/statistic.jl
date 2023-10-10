
@testset "unit tests" begin
    @testset "rse_sum" begin
        @test rse_sum(1) == 1
        @test rse_sum(1:36) == 666
        @test rse_sum(-1:1) == 0
        @test rse_sum(-2:0) == -3

        #@test_throws AssertionError find_max([NaN,3,2])
    end

    @testset "rse_mean" begin
        @test rse_mean([1, 2, 3]) == 2
        @test rse_mean(-15:17) == 1
        @test rse_mean([1, 3, 6]) ≈ 3.333 atol = 1e-3

    end

    @testset "rse_std" begin
        @test rse_std(1:3) == 1
    end

    @testset "rse_tstat" begin
        @test rse_tstat(2:3) == 5
    end
end
