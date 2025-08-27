function [xx, Objective_val] = f_opt(min_gen, max_gen, ld, cost_coeff, fuel_cost,uclist )
    cc=cost_coeff.*uclist;
    N_gen = numel(min_gen);
    lb = min_gen.*uclist';
    ub = max_gen.*uclist';
    Aeq = ones(1, N_gen).*uclist';
    A = [0 0 0];
    b = 0;
    balance=1e5;
    beq = ld;
    objective = @(x) (fuel_cost(1) * (cc(1, 1) + cc(1, 2) * x(1) + cc(1, 3) * x(1)^2 + cc(1, 4) * x(1)^3) + ...
                     fuel_cost(2) * (cc(2, 1) + cc(2, 2) * x(2) + cc(2, 3) * x(2)^2 + cc(2, 4) * x(2)^3) + ...
                     fuel_cost(3) * (cc(3, 1) + cc(3, 2) * x(3) + cc(3, 3) * x(3)^2 + cc(3, 4) * x(3)^3));

    for j = 1:100
        x0 = [randi([min_gen(1), max_gen(1)], 1, 1), randi([min_gen(2), max_gen(2)], 1, 1), randi([min_gen(3), max_gen(3)], 1, 1)];
        [x, fval, ef, output, lambda] = fmincon(objective, x0, A, b, Aeq, beq, lb, ub);

        if abs(sum(x) - ld) < abs(balance)
            balance = sum(x) - ld;
            xx = x;
            Objective_val = fval;
        end
    end

end