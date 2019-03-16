function ind = findNearest(x, desiredVal)
    dist = inf;
    dex = 0;
    for i = 1:length(x)
        if abs(x(i) - desiredVal) < dist
            dist = abs(x(i) - desiredVal);
            dex = i;
        end
    end
    ind = dex;
end

