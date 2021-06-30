lengths = ones(length(trajectories),1);
for i = 1:length(trajectories)
    lengths(i) = length(trajectories{i});
end
t = max(lengths);

ztrajectories = zeros(length(trajectories),t);
for i = 1:length(trajectories)
    if trajectories{i}(1,2) > 1
        leading = NaN*ones(length(1:(trajectories{i}(1,2)-1)),1);
    else
        leading = [];
    end
    if trajectories{i}(end,2) < t
        trailing = NaN*ones(length(trajectories{i}(end,2):t-1),1);
    else
        trailing = [];
    end
    ztrajectories(i,:) = [leading;trajectories{i}(:,5);trailing];
end