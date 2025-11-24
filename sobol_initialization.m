function X = sobol_initialization(N, ub, lb, dim)
    p = sobolset(dim); % 创建Sobol序列生成器
    X = net(p, N); % 生成N个dim维的Sobol点
    X = bsxfun(@plus, lb, bsxfun(@times, X, (ub - lb))); % 缩放到 [lb, ub] 范围内
end
