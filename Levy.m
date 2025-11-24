function result = Levy()
%LEVY 此处显示有关此函数的摘要
%   此处显示详细说明
 % 生成服从 Levy 分布的随机步长
    % alpha 是分布的指数，通常在 (0, 2] 范围内
    alpha=0.8;
    u = randn();
    v = randn();
    sigma_u = gamma(1 + alpha) * sin(pi * alpha / 2) / (gamma((1 + alpha) / 2) * alpha * 2^((alpha - 1) / 2));
    sigma_v = 1;
    result = sigma_u * (u / abs(v))^(1/alpha) * sign(u);
end

