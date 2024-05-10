L = table2array(app.UITable.Data(:,1:8));
Limitis = L(:,7:8);
for index=3:-1:1
    for min_limit:max_limit
        
    function My_FK(app,L)
    rows = app.DOFSpinner.Value;
    endeffector = eye(4);
    dh_parameters = L(:,1:4);
    disp(dh_parameters);
    for index=1:rows
        th = dh_parameters(index,1);
        d     = dh_parameters(index,2);
        a     = dh_parameters(index,3);
        alph = dh_parameters(index,4);
        A = [ cosd(th) -cosd(alph)*sind(th) sind(alph)*sind(th) a*cosd(th)
              sind(th) cosd(alph)*cosd(th) -sind(alph)*cosd(th) a*sind(th)
              0       sind(alph)          cosd(alph)         d
              0       0                   0                  1];
        endeffector = endeffector * A;

        T3 = endeffector;
        if index~=1                  
            if mod(index, 2) == 0
                line(app.UIAxes,[T2(1,4) T3(1,4)], [T2(2,4) T3(2,4)], [T2(3,4) T3(3,4)],  'Color', 'c', 'LineWidth',2);
                hold(app.UIAxes , 'on');
                scatter3(app.UIAxes,T3(1,4), T3(2,4), T3(3,4), 'bo', 'LineWidth', 3, 'MarkerFaceColor', 'b');

            else
                line(app.UIAxes,[T2(1,4) T3(1,4)], [T2(2,4) T3(2,4)], [T2(3,4) T3(3,4)], 'Color', 'm', 'LineWidth',2);
                hold(app.UIAxes , 'on');
                scatter3(app.UIAxes,T3(1,4), T3(2,4), T3(3,4), 'go', 'LineWidth', 3, 'MarkerFaceColor','g');
            end
        end
        T2 = endeffector;

    end
    disp(endeffector);
    app.XEditField.Value = endeffector(1,4); 
    app.YEditField.Value = endeffector(2,4);
    app.ZEditField.Value = endeffector(3,4);
    return
    end
    scatter3(app.UIAxes,T3(1,4), T3(2,4), T3(3,4), 'go', 'LineWidth', 3, 'MarkerFaceColor','g');
    
    end

end
