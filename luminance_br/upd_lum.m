function upd_lum(dominant, pre_dominant)
    %% This function increases or reduces the lumblue 
    % variable by expt.step_size. If subject chose left
    % twice, lumblue is increased, if subject chose right
    % twice, lumblue is decreesed.
    % Note that 'mixed' votes have already been converted
    % to previous vote. So they count as repetitions.

    global expt;
    
    if strcmp(dominant, pre_dominant) %% This condition will never be met in the first trial because pre_dominant is an empty char array. 
    %% If a subject respond at the beginning left right left right etc it will never change luminance. Why do you want to have this condition at all?
        % Check if subject chose same side as before
        if strcmp(dominant, 'LeftArrow')
            % Increase lumblue
            expt.lumblue = expt.lumblue + (expt.lumblue * expt.step_size)
        else
            % Decrease lumblue
            expt.lumblue = expt.lumblue - (expt.lumblue * expt.step_size)
        end

		if expt.lumblue > expt.max_lumblue
			expt.lumblue = expt.max_lumblue;
		end
		if expt.lumblue < expt.min_lumblue
			expt.lumblue = expt.min_lumblue;
    end
end
