classdef EDF_GUI_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure matlab.ui.Figure
        GridLayout matlab.ui.container.GridLayout
        LeftPanel matlab.ui.container.Panel
        InformationTable matlab.ui.control.Table
        SignalTable matlab.ui.control.Table
        CenterPanel matlab.ui.container.Panel
        TabGroup matlab.ui.container.TabGroup
        TimeObservationTab matlab.ui.container.Tab
        Button__Back_1 matlab.ui.control.Button
        Button_Forward_1 matlab.ui.control.Button
        SecondsSlider matlab.ui.control.Slider
        UIAxes_TZCR matlab.ui.control.UIAxes
        UIAxes_T matlab.ui.control.UIAxes
        TimeAnalysisTab matlab.ui.container.Tab
        Button__Back_2 matlab.ui.control.Button
        Button_Forward_2 matlab.ui.control.Button
        SecondsSlider_2 matlab.ui.control.Slider
        UIAxes_TAUTOCORR matlab.ui.control.UIAxes
        UIAxes_TVAR matlab.ui.control.UIAxes
        UIAxes_TENERGY matlab.ui.control.UIAxes
        FrequencyTab matlab.ui.container.Tab
        UIAxes_F matlab.ui.control.UIAxes
        TimeFrequencyTab matlab.ui.container.Tab
        SecondsSlider_3 matlab.ui.control.Slider
        UIAxes_TF matlab.ui.control.UIAxes
        RightPanel matlab.ui.container.Panel
        AnalyseTable matlab.ui.control.Table
        ImportMenu matlab.ui.container.Menu
        PlotMenu matlab.ui.container.Menu
        TimeAmplitudeMenu matlab.ui.container.Menu
        TimeZeroCrossingMenu matlab.ui.container.Menu
        TimeEnergyMenu matlab.ui.container.Menu
        TimeVarianceMenu matlab.ui.container.Menu
        LagsAutocorrelationMenu matlab.ui.container.Menu
        FrequencyPowerSpectrumMenu matlab.ui.container.Menu
        TimeFrequencyPowerMenu matlab.ui.container.Menu
        FrequencyPowerDensityMenu matlab.ui.container.Menu
        TimeFrequencyPower3DMenu matlab.ui.container.Menu
        TimeFrequencyPowerFrequency3DMenu matlab.ui.container.Menu
        GraphOptionsMenu matlab.ui.container.Menu
        ChangeIntervalTimeMenu matlab.ui.container.Menu
        snMenu_5sn matlab.ui.container.Menu
        snMenu_30sn matlab.ui.container.Menu
        snMenu_60sn matlab.ui.container.Menu
        snMenu_120sn matlab.ui.container.Menu
        snMenu_240sn matlab.ui.container.Menu
        snMenu_Custom matlab.ui.container.Menu
        Toolbar matlab.ui.container.Toolbar
        FitToScreenButton matlab.ui.container.toolbar.PushTool
        ShowAllSignals matlab.ui.container.toolbar.PushTool
        AnalyseVariables matlab.ui.container.toolbar.PushTool
        SynchronizeGraphs matlab.ui.container.toolbar.PushTool
    end

    % Properties that correspond to apps with auto-reflow
    properties (Access = private)
        onePanelWidth = 576;
        twoPanelWidth = 768;
    end

    properties
        EDF_Data
        EDF_Info
        EDF_Signals
        EDF_Signals_With_Seconds
        EDF_Axes_All
        EDF_Axes_Seconds
        EDF_Information_FileName
        EDF_Information_SeizureCheck
        EDF_Information_StartTime
        EDF_Information_EndTime
        EDF_Information_DurationTime
        EDF_Signal_Table
        EDF_Axes_Interval_Time
        EDF_Flipped_Lines_UIAxes_T
        EDF_Flipped_Lines_UIAxes_TZCR
        EDF_Flipped_Lines_UIAxes_TENERGY
        EDF_Flipped_Lines_UIAxes_TVAR
        EDF_Flipped_Lines_UIAxes_F
        EDF_Frequency
        EDF_SignalColumns
        EDF_UIAxes_Synchronous_Time
        EDF_UIAxes_T_Time_MinMax
        EDF_UIAxes_T_Amplitude_MinMax
        EDF_Signal_ZeroCrossing
        EDF_UIAxes_TZCR_Time_MinMax
        EDF_UIAxes_TZCR_ZeroCrossing_MinMax
        EDF_Signal_Energy
        EDF_Normalised_Signal_Energy
        EDF_UIAxes_TENERGY_Time_MinMax
        EDF_UIAxes_TENERGY_Energy_MinMax
        EDF_Signal_Variance
        EDF_Normalised_Signal_Variance
        EDF_UIAxes_TVAR_Time_MinMax
        EDF_UIAxes_TVAR_Variance_MinMax
        EDF_UIAxes_F_Frequency_MinMax
        EDF_UIAxes_F_Decibels_MinMax
        EDF_UIAxes_TF_Time_MinMax
        EDF_UIAxes_TF_Frequency_MinMax
        EDF_UIAxes_Selected_Spectrum
        EDF_UIAxes_Opened_Before
        EDF_ZCR_Value
        EDF_MinEnergy_Value
        EDF_MaxEnergy_Value
        EDF_AvgEnergy_Value
        EDF_StdEnergy_Value
        EDF_MinVariance_Value
        EDF_MaxVariance_Value
        EDF_AvgVariance_Value
        EDF_StdVariance_Value
        EDF_NormalisedEV_Value
        EDF_Last_SliderOrButton_Detect
        EDF_Last_SliderOrButton_EventHandler
    end

    methods

        function set.EDF_Data (obj, value)
            obj.EDF_Data = value;
        end

        function set.EDF_Info (obj, value)
            obj.EDF_Info = value;
        end

        function set.EDF_Signals(obj, value)
            obj.EDF_Signals = value;
        end

        function set.EDF_Signals_With_Seconds(obj, value)
            obj.EDF_Signals_With_Seconds = value;
        end

        function set.EDF_Axes_All(obj, value)
            obj.EDF_Axes_All = value;
        end

        function set.EDF_Axes_Seconds(obj, value)
            obj.EDF_Axes_Seconds = value;
        end

        function set.EDF_Information_FileName(obj, value)
            obj.EDF_Information_FileName = value;
        end

        function set.EDF_Information_SeizureCheck(obj, value)
            obj.EDF_Information_SeizureCheck = value;
        end

        function set.EDF_Information_StartTime(obj, value)
            obj.EDF_Information_StartTime = value;
        end

        function set.EDF_Information_EndTime(obj, value)
            obj.EDF_Information_EndTime = value;
        end

        function set.EDF_Information_DurationTime(obj, value)
            obj.EDF_Information_DurationTime = value;
        end

        function set.EDF_Signal_Table(obj, value)
            obj.EDF_Signal_Table = value;
        end

        function set.EDF_Axes_Interval_Time(obj, value)
            obj.EDF_Axes_Interval_Time = value;
        end

        function set.EDF_Flipped_Lines_UIAxes_T(obj, value)
            obj.EDF_Flipped_Lines_UIAxes_T = value;
        end

        function set.EDF_Flipped_Lines_UIAxes_TZCR(obj, value)
            obj.EDF_Flipped_Lines_UIAxes_TZCR = value;
        end

        function set.EDF_Flipped_Lines_UIAxes_TENERGY(obj, value)
            obj.EDF_Flipped_Lines_UIAxes_TENERGY = value;
        end

        function set.EDF_Flipped_Lines_UIAxes_TVAR(obj, value)
            obj.EDF_Flipped_Lines_UIAxes_TVAR = value;
        end

        function set.EDF_Flipped_Lines_UIAxes_F(obj, value)
            obj.EDF_Flipped_Lines_UIAxes_F = value;
        end

        function set.EDF_Frequency(obj, value)
            obj.EDF_Frequency = value;
        end

        function set.EDF_SignalColumns(obj, value)
            obj.EDF_SignalColumns = value;
        end

        function set.EDF_UIAxes_Synchronous_Time(obj, value)
            obj.EDF_UIAxes_Synchronous_Time = value;
        end

        function set.EDF_UIAxes_T_Time_MinMax(obj, value)
            obj.EDF_UIAxes_T_Time_MinMax = value;
        end

        function set.EDF_UIAxes_T_Amplitude_MinMax(obj, value)
            obj.EDF_UIAxes_T_Amplitude_MinMax = value;
        end

        function set.EDF_Signal_ZeroCrossing(obj, value)
            obj.EDF_Signal_ZeroCrossing = value;
        end

        function set.EDF_UIAxes_TZCR_Time_MinMax(obj, value)
            obj.EDF_UIAxes_TZCR_Time_MinMax = value;
        end

        function set.EDF_UIAxes_TZCR_ZeroCrossing_MinMax(obj, value)
            obj.EDF_UIAxes_TZCR_ZeroCrossing_MinMax = value;
        end

        function set.EDF_Signal_Energy(obj, value)
            obj.EDF_Signal_Energy = value;
        end

        function set.EDF_Normalised_Signal_Energy(obj, value)
            obj.EDF_Normalised_Signal_Energy = value;
        end

        function set.EDF_UIAxes_TENERGY_Time_MinMax(obj, value)
            obj.EDF_UIAxes_TENERGY_Time_MinMax = value;
        end

        function set.EDF_UIAxes_TENERGY_Energy_MinMax(obj, value)
            obj.EDF_UIAxes_TENERGY_Energy_MinMax = value;
        end

        function set.EDF_Signal_Variance(obj, value)
            obj.EDF_Signal_Variance = value;
        end

        function set.EDF_Normalised_Signal_Variance(obj, value)
            obj.EDF_Normalised_Signal_Variance = value;
        end

        function set.EDF_UIAxes_TVAR_Time_MinMax(obj, value)
            obj.EDF_UIAxes_TVAR_Time_MinMax = value;
        end

        function set.EDF_UIAxes_TVAR_Variance_MinMax(obj, value)
            obj.EDF_UIAxes_TVAR_Variance_MinMax = value;
        end

        function set.EDF_UIAxes_F_Frequency_MinMax(obj, value)
            obj.EDF_UIAxes_F_Frequency_MinMax = value;
        end

        function set.EDF_UIAxes_F_Decibels_MinMax(obj, value)
            obj.EDF_UIAxes_F_Decibels_MinMax = value;
        end

        function set.EDF_UIAxes_TF_Time_MinMax(obj, value)
            obj.EDF_UIAxes_TF_Time_MinMax = value;
        end

        function set.EDF_UIAxes_TF_Frequency_MinMax(obj, value)
            obj.EDF_UIAxes_TF_Frequency_MinMax = value;
        end

        function set.EDF_UIAxes_Selected_Spectrum(obj, value)
            obj.EDF_UIAxes_Selected_Spectrum = value;
        end

        function set.EDF_UIAxes_Opened_Before(obj, value)
            obj.EDF_UIAxes_Opened_Before = value;
        end

        function set.EDF_ZCR_Value(obj, value)
            obj.EDF_ZCR_Value = value;
        end

        function set.EDF_MinEnergy_Value(obj, value)
            obj.EDF_MinEnergy_Value = value;
        end

        function set.EDF_MaxEnergy_Value(obj, value)
            obj.EDF_MaxEnergy_Value = value;
        end

        function set.EDF_AvgEnergy_Value(obj, value)
            obj.EDF_AvgEnergy_Value = value;
        end

        function set.EDF_StdEnergy_Value(obj, value)
            obj.EDF_StdEnergy_Value = value;
        end

        function set.EDF_MinVariance_Value(obj, value)
            obj.EDF_MinVariance_Value = value;
        end

        function set.EDF_MaxVariance_Value(obj, value)
            obj.EDF_MaxVariance_Value = value;
        end

        function set.EDF_AvgVariance_Value(obj, value)
            obj.EDF_AvgVariance_Value = value;
        end

        function set.EDF_StdVariance_Value(obj, value)
            obj.EDF_StdVariance_Value = value;
        end

        function set.EDF_NormalisedEV_Value(obj, value)
            obj.EDF_NormalisedEV_Value = value;
        end

        function set.EDF_Last_SliderOrButton_Detect(obj, value)
            obj.EDF_Last_SliderOrButton_Detect = value;
        end

        function set.EDF_Last_SliderOrButton_EventHandler(obj, value)
            obj.EDF_Last_SliderOrButton_EventHandler = value;
        end

    end

    methods (Access = private)

        function [results, index] = Which_One(~, files_array, seizures_array, edf_file)
            index = find(strcmp(files_array, edf_file));
            a = 0;

            if seizures_array(index) == 0
                results = 0;
            else

                for i = 1:index

                    if seizures_array(i) == 1
                        a = a + 1;
                    end

                end

                results = a;
            end

        end

        function Time_Frequency_Spectogram(app, indexOfSpectrum)
            time = seconds(1 / app.EDF_Frequency:1 / app.EDF_Frequency:app.EDF_Info.NumDataRecords).';
            yTable = timetable(time, app.EDF_Signals(:, indexOfSpectrum));
            [P, F, T] = pspectrum(yTable, 'spectrogram');
            T = time2num(T);
            P = 10 * log10(P);
            imagesc(app.UIAxes_TF, T, F, P);
            set(app.UIAxes_TF, 'YDir', 'normal');
            zt = get(app.UIAxes_TF, 'ZTick');
            set(app.UIAxes_TF, 'ZTick', zt, 'ZTickLabel', fliplr(zt));
            colorbar(app.UIAxes_TF);
            colormap(app.UIAxes_TF, 'parula');
            ylabel(colorbar(app.UIAxes_TF), 'Power/frequency (dB/Hz)');
            app.UIAxes_TF.XLim = [0 app.EDF_Info.NumDataRecords];
            app.EDF_UIAxes_TF_Time_MinMax = app.UIAxes_TF.XLim;
            app.UIAxes_TF.YLim = [min(F) max(F)];
            app.EDF_UIAxes_TF_Frequency_MinMax = app.UIAxes_TF.YLim;
            app.UIAxes_TF.Toolbar.Visible = 'on';
        end

        function [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app)
            checkBoxes = cell2mat(app.SignalTable.Data(:, 2));
            selected_CH_Numbers = sum(checkBoxes(:) == (1));
            selected_CH_Indexes = find(checkBoxes == 1);
        end

        function Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes)

            if isempty(app.UIAxes_TZCR.Children) == true || isempty(app.UIAxes_TENERGY.Children) == true || isempty(app.UIAxes_TVAR.Children) == true
                errordlg('Related graphs not plotted. Please plot first.', 'Plot Error');
            elseif selected_CH_Numbers ~= 1
                message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                errordlg(message, 'Calculate Error');
            else
                app.EDF_ZCR_Value = mean(abs(diff(sign(app.EDF_Signals(app.UIAxes_TENERGY.XLim(1) * 256:app.UIAxes_TENERGY.XLim(2) * 256, selected_CH_Indexes)))));
                app.EDF_MinEnergy_Value = min(app.EDF_Signal_Energy(selected_CH_Indexes, round(app.UIAxes_TENERGY.XLim(1)):round(app.UIAxes_TENERGY.XLim(2))));
                app.EDF_MaxEnergy_Value = max(app.EDF_Signal_Energy(selected_CH_Indexes, round(app.UIAxes_TENERGY.XLim(1)):round(app.UIAxes_TENERGY.XLim(2))));
                app.EDF_AvgEnergy_Value = mean(app.EDF_Signal_Energy(selected_CH_Indexes, round(app.UIAxes_TENERGY.XLim(1)):round(app.UIAxes_TENERGY.XLim(2))));
                app.EDF_StdEnergy_Value = std(app.EDF_Signal_Energy(selected_CH_Indexes, round(app.UIAxes_TENERGY.XLim(1)):round(app.UIAxes_TENERGY.XLim(2))));
                app.EDF_MinVariance_Value = min(app.EDF_Signal_Variance(selected_CH_Indexes, round(app.UIAxes_TVAR.XLim(1)):round(app.UIAxes_TVAR.XLim(2))));
                app.EDF_MaxVariance_Value = max(app.EDF_Signal_Variance(selected_CH_Indexes, round(app.UIAxes_TVAR.XLim(1)):round(app.UIAxes_TVAR.XLim(2))));
                app.EDF_AvgVariance_Value = mean(app.EDF_Signal_Variance(selected_CH_Indexes, round(app.UIAxes_TVAR.XLim(1)):round(app.UIAxes_TVAR.XLim(2))));
                app.EDF_StdVariance_Value = std(app.EDF_Signal_Variance(selected_CH_Indexes, round(app.UIAxes_TVAR.XLim(1)):round(app.UIAxes_TVAR.XLim(2))));
                app.EDF_NormalisedEV_Value = mean(app.EDF_Normalised_Signal_Energy(selected_CH_Indexes, round(app.UIAxes_TENERGY.XLim(1)):round(app.UIAxes_TENERGY.XLim(2))) ./ app.EDF_Normalised_Signal_Variance(selected_CH_Indexes, round(app.UIAxes_TVAR.XLim(1)):round(app.UIAxes_TVAR.XLim(2))));
                app.AnalyseTable.Data(:, 2) = {app.EDF_ZCR_Value, app.EDF_MinEnergy_Value, app.EDF_MaxEnergy_Value, app.EDF_AvgEnergy_Value, app.EDF_StdEnergy_Value, app.EDF_MinVariance_Value, app.EDF_MaxVariance_Value, app.EDF_AvgVariance_Value, app.EDF_StdVariance_Value, app.EDF_NormalisedEV_Value};
                autocorr(app.UIAxes_TAUTOCORR, app.EDF_Signals(app.UIAxes_TENERGY.XLim(1) * 256 + 1:app.UIAxes_TENERGY.XLim(2) * 256 - 1, selected_CH_Indexes))
            end

        end

        function Slider_1_Changing(app, changingValue)
            currentInterval = app.UIAxes_T.XLim(1, 2) - app.UIAxes_T.XLim(1, 1);

            if currentInterval == app.EDF_Info.NumDataRecords
                app.UIAxes_T.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TZCR.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            elseif isfloat(currentInterval)
                app.UIAxes_T.XLim = [changingValue changingValue + currentInterval];
                app.UIAxes_TZCR.XLim = [changingValue changingValue + currentInterval];
            else
                app.UIAxes_T.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TZCR.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            end

        end

        function Slider_2_Changing(app, changingValue)
            currentInterval = app.UIAxes_TENERGY.XLim(1, 2) - app.UIAxes_TENERGY.XLim(1, 1);

            if currentInterval == app.EDF_Info.NumDataRecords
                app.UIAxes_TENERGY.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TVAR.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            elseif isfloat(currentInterval)
                app.UIAxes_TENERGY.XLim = [changingValue changingValue + currentInterval];
                app.UIAxes_TVAR.XLim = [changingValue changingValue + currentInterval];
            else
                app.UIAxes_TENERGY.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TVAR.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            end

        end

        function Slider_3_Changing(app, changingValue)
            currentInterval = app.UIAxes_TF.XLim(1, 2) - app.UIAxes_TF.XLim(1, 1);

            if currentInterval == app.EDF_Info.NumDataRecords
                app.UIAxes_TF.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            elseif isfloat(currentInterval)
                app.UIAxes_TF.XLim = [changingValue changingValue + currentInterval];
            else
                app.UIAxes_TF.XLim = [changingValue changingValue + app.EDF_Axes_Interval_Time];
            end

        end

    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.FitToScreenButton.Icon = fullfile(pwd, 'App Design', 'Icons', 'Fit to Screen.png');
            app.ShowAllSignals.Icon = fullfile(pwd, 'App Design', 'Icons', 'Show All Signals.png');
            app.AnalyseVariables.Icon = fullfile(pwd, 'App Design', 'Icons', 'Analyse Variables.png');
            app.SynchronizeGraphs.Icon = fullfile(pwd, 'App Design', 'Icons', 'Synchronize Graphs.png');
            app.EDF_Axes_Interval_Time = 30;
            app.EDF_UIAxes_T_Time_MinMax = [0 100];
            app.EDF_UIAxes_T_Amplitude_MinMax = [0 100];
            app.EDF_UIAxes_F_Frequency_MinMax = [0 100];
            app.EDF_UIAxes_F_Decibels_MinMax = [0 10];
        end

        % Changes arrangement of the app based on UIFigure width
        function updateAppLayout(app, ~)
            currentFigureWidth = app.UIFigure.Position(3);

            if (currentFigureWidth <= app.onePanelWidth)
                % Change to a 3x1 grid
                app.GridLayout.RowHeight = {480, 480, 480};
                app.GridLayout.ColumnWidth = {'1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 1;
                app.LeftPanel.Layout.Row = 2;
                app.LeftPanel.Layout.Column = 1;
                app.RightPanel.Layout.Row = 3;
                app.RightPanel.Layout.Column = 1;
            elseif (currentFigureWidth > app.onePanelWidth && currentFigureWidth <= app.twoPanelWidth)
                % Change to a 2x2 grid
                app.GridLayout.RowHeight = {480, 480};
                app.GridLayout.ColumnWidth = {'1x', '1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = [1, 2];
                app.LeftPanel.Layout.Row = 2;
                app.LeftPanel.Layout.Column = 1;
                app.RightPanel.Layout.Row = 2;
                app.RightPanel.Layout.Column = 2;
            else
                % Change to a 1x3 grid
                app.GridLayout.RowHeight = {'1x'};
                app.GridLayout.ColumnWidth = {220, '1x', 220};
                app.LeftPanel.Layout.Row = 1;
                app.LeftPanel.Layout.Column = 1;
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 2;
                app.RightPanel.Layout.Row = 1;
                app.RightPanel.Layout.Column = 3;
            end

        end

        % Menu selected function: ImportMenu
        function ImportMenuSelected(app, ~)
            [file, path] = uigetfile('*.edf');
            app.EDF_Data = edfread(fullfile(path, file));
            app.EDF_Info = edfinfo(fullfile(path, file));
            app.EDF_Signals = cell2mat(app.EDF_Data.Variables);
            app.UIAxes_T.XLim = [0 app.EDF_Info.NumDataRecords];
            app.UIAxes_TZCR.XLim = [0 app.EDF_Info.NumDataRecords];
            app.UIAxes_TENERGY.XLim = [0 app.EDF_Info.NumDataRecords];
            app.UIAxes_TVAR.XLim = [0 app.EDF_Info.NumDataRecords];
            app.UIAxes_TF.XLim = [0 app.EDF_Info.NumDataRecords];
            app.SecondsSlider.Limits = [0 app.EDF_Info.NumDataRecords];
            app.SecondsSlider_2.Limits = [0 app.EDF_Info.NumDataRecords];
            app.SecondsSlider_3.Limits = [0 app.EDF_Info.NumDataRecords];
            app.EDF_Frequency = 256;
            app.EDF_SignalColumns = size(app.EDF_Signals, 2);
            app.EDF_Axes_All = 1 / app.EDF_Frequency:1 / app.EDF_Frequency:app.EDF_Info.NumDataRecords;
            app.EDF_Axes_Seconds = 1:1:app.EDF_Info.NumDataRecords;

            summary = fileread('Seizure Examples/chb01-summary.txt');
            exprs = {'.{9}edf', '(?<=Number of Seizures in File: )\d*(?=\n)', '(?<=Start Time: )\d*(?= sec)', '(?<=End Time: )\d*(?= sec)'};
            files_array = regexp(summary, exprs{1}, 'match');
            seizures_array = str2double(regexp(summary, exprs{2}, 'match'));
            start_array = str2double(regexp(summary, exprs{3}, 'match'));
            end_array = str2double(regexp(summary, exprs{4}, 'match'));
            [result, index] = Which_One(app, files_array, seizures_array, file);
            app.EDF_Information_FileName = file;
            app.EDF_Information_SeizureCheck = seizures_array(index);
            app.EDF_Information_StartTime = start_array(result);
            app.EDF_Information_EndTime = end_array(result);
            app.EDF_Information_DurationTime = end_array(result) - start_array(result);

            signal_names = app.EDF_Data.Properties.VariableNames(:);
            signal_names = cellfun(@(x) regexprep(x, 'SignalLabel', 'CH'), signal_names, 'UniformOutput', false);
            signal_table = signal_names;
            signal_table = [signal_table repmat({true}, length(signal_table), 1)];
            signal_table = [signal_table repmat({''}, length(signal_table), 1)];
            app.EDF_Signal_Table = signal_table;
            set(app.SignalTable, 'Data', app.EDF_Signal_Table);
            newcolors_set = num2cell(app.UIAxes_T.ColorOrder);

            for i = 1:23
                s = uistyle('BackgroundColor', [newcolors_set{i, :}]);
                addStyle(app.SignalTable, s, 'cell', [i 3]);
            end

            information_table = {'EDF File', app.EDF_Information_FileName;
                            'Seizure Number', char(string(app.EDF_Information_SeizureCheck));
                            'Seizure Start Time', char(append(string(app.EDF_Information_StartTime), 's'));
                            'Seizure End Time', char(append(string(app.EDF_Information_EndTime), 's'));
                            'Seziure Duration Time', char(append(string(app.EDF_Information_DurationTime), 's'))};
            set(app.InformationTable, 'Data', information_table);

            analyse_table = {'ZCR', '0';
                        'Min. Energy', '0';
                        'Max. Energy', '0';
                        'Avg. Energy', '0';
                        'Std. Energy', '0';
                        'Min. Variance', '0';
                        'Max. Variance', '0';
                        'Avg. Variance', '0';
                        'Std. Variance', '0';
                        'Normalised E/V', '0'};
            set(app.AnalyseTable, 'Data', analyse_table);
        end

        % Menu selected function: TimeAmplitudeMenu
        function TimeAmplitudeMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                plot(app.UIAxes_T, app.EDF_Axes_All, app.EDF_Signals);
                app.UIAxes_T.XLim = [0 app.EDF_Info.NumDataRecords];
                app.EDF_UIAxes_T_Time_MinMax = app.UIAxes_T.XLim;
                app.UIAxes_T.YLim = [min(app.EDF_Signals, [], 'all') max(app.EDF_Signals, [], 'all')];
                app.EDF_UIAxes_T_Amplitude_MinMax = app.UIAxes_T.YLim;
                app.EDF_Flipped_Lines_UIAxes_T = flip(app.UIAxes_T.Children);
                [~, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                onlyOpenPlots = 1:app.EDF_SignalColumns;
                onlyOpenPlots(selected_CH_Indexes) = [];
                set(app.EDF_Flipped_Lines_UIAxes_T(onlyOpenPlots), 'Visible', 'off');
            end

        end

        % Menu selected function: TimeZeroCrossingMenu
        function TimeZeroCrossingMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                app.EDF_Signal_ZeroCrossing = diff(sign(app.EDF_Signals));
                zeroCrossingTime = 2 / app.EDF_Frequency:1 / app.EDF_Frequency:app.EDF_Info.NumDataRecords;
                plot(app.UIAxes_TZCR, zeroCrossingTime, app.EDF_Signal_ZeroCrossing);
                app.UIAxes_TZCR.XLim = [0 app.EDF_Info.NumDataRecords];
                app.EDF_UIAxes_TZCR_Time_MinMax = app.UIAxes_TZCR.XLim;
                app.UIAxes_TZCR.YLim = [min(app.EDF_Signal_ZeroCrossing, [], 'all') max(app.EDF_Signal_ZeroCrossing, [], 'all')];
                app.EDF_UIAxes_TZCR_ZeroCrossing_MinMax = app.UIAxes_TZCR.YLim;
                app.EDF_Flipped_Lines_UIAxes_TZCR = flip(app.UIAxes_TZCR.Children);
                [~, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                onlyOpenPlots = 1:app.EDF_SignalColumns;
                onlyOpenPlots(selected_CH_Indexes) = [];
                set(app.EDF_Flipped_Lines_UIAxes_TZCR(onlyOpenPlots), 'Visible', 'off');
            end

        end

        % Menu selected function: TimeEnergyMenu
        function TimeEnergyMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                energyArray = zeros(1, app.EDF_Info.NumDataRecords);
                absValues = zeros(1, app.EDF_Info.NumDataRecords);
                cellStorage = cell(app.EDF_SignalColumns, 1);

                for k = 1:app.EDF_SignalColumns
                    y = reshape(app.EDF_Signals(:, k), app.EDF_Frequency, []);

                    for i = 1:length(y)
                        absValues(i) = sumabs(y(:, i));
                        energyArray(i) = absValues(i)^2;
                    end

                    cellStorage{k} = energyArray;
                end

                app.EDF_Signal_Energy = cell2mat(cellStorage);
                app.EDF_Normalised_Signal_Energy = app.EDF_Signal_Energy ./ max(app.EDF_Signal_Energy, [], 'all');
                plot(app.UIAxes_TENERGY, app.EDF_Axes_Seconds, app.EDF_Signal_Energy)
                app.UIAxes_TENERGY.XLim = [0 app.EDF_Info.NumDataRecords];
                app.EDF_UIAxes_TENERGY_Time_MinMax = app.UIAxes_TENERGY.XLim;
                app.UIAxes_TENERGY.YLim = [min(app.EDF_Signal_Energy, [], 'all') max(app.EDF_Signal_Energy, [], 'all')];
                app.EDF_UIAxes_TENERGY_Energy_MinMax = app.UIAxes_TENERGY.YLim;
                app.EDF_Flipped_Lines_UIAxes_TENERGY = flip(app.UIAxes_TENERGY.Children);
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                onlyOpenPlots = 1:app.EDF_SignalColumns;
                onlyOpenPlots(selected_CH_Indexes) = [];
                set(app.EDF_Flipped_Lines_UIAxes_TENERGY(onlyOpenPlots), 'Visible', 'off');

                if selected_CH_Numbers == 1
                    patch(app.UIAxes_TENERGY, [app.EDF_Axes_Seconds fliplr(app.EDF_Axes_Seconds)], [app.EDF_Signal_Energy(selected_CH_Indexes, :) min(app.UIAxes_TENERGY.YLim) * ones(size(app.EDF_Signal_Energy(selected_CH_Indexes, :)))], app.UIAxes_TENERGY.ColorOrder(selected_CH_Indexes, :));
                end

            end

        end

        % Menu selected function: TimeVarianceMenu
        function TimeVarianceMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                varianceArray = zeros(1, app.EDF_Info.NumDataRecords);
                cellStorage = cell(app.EDF_SignalColumns, 1);

                for k = 1:app.EDF_SignalColumns
                    y = reshape(app.EDF_Signals(:, k), app.EDF_Frequency, []);

                    for i = 1:length(y)
                        varianceArray(i) = var(y(:, i));
                    end

                    cellStorage{k} = varianceArray;
                end

                app.EDF_Signal_Variance = cell2mat(cellStorage);
                app.EDF_Normalised_Signal_Variance = app.EDF_Signal_Variance ./ max(app.EDF_Signal_Variance, [], 'all');
                plot(app.UIAxes_TVAR, app.EDF_Axes_Seconds, app.EDF_Signal_Variance)
                app.UIAxes_TVAR.XLim = [0 app.EDF_Info.NumDataRecords];
                app.EDF_UIAxes_TVAR_Time_MinMax = app.UIAxes_TVAR.XLim;
                app.UIAxes_TVAR.YLim = [min(app.EDF_Signal_Variance, [], 'all') max(app.EDF_Signal_Variance, [], 'all')];
                app.EDF_UIAxes_TVAR_Variance_MinMax = app.UIAxes_TVAR.YLim;
                app.EDF_Flipped_Lines_UIAxes_TVAR = flip(app.UIAxes_TVAR.Children);
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                onlyOpenPlots = 1:app.EDF_SignalColumns;
                onlyOpenPlots(selected_CH_Indexes) = [];
                set(app.EDF_Flipped_Lines_UIAxes_TVAR(onlyOpenPlots), 'Visible', 'off');

                if selected_CH_Numbers == 1
                    patch(app.UIAxes_TVAR, [app.EDF_Axes_Seconds fliplr(app.EDF_Axes_Seconds)], [app.EDF_Signal_Variance(selected_CH_Indexes, :) min(app.UIAxes_TVAR.YLim) * ones(size(app.EDF_Signal_Variance(selected_CH_Indexes, :)))], app.UIAxes_TVAR.ColorOrder(selected_CH_Indexes, :));
                end

            end

        end

        % Menu selected function: LagsAutocorrelationMenu
        function LagsAutocorrelationMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);

                if selected_CH_Numbers > 1 || selected_CH_Numbers == 0
                    message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                    errordlg(message, 'Plot Error');
                elseif selected_CH_Numbers == 1
                    autoCorrArray = app.EDF_Signals(app.UIAxes_TENERGY.XLim(1) * 256 + 1:app.UIAxes_TENERGY.XLim(2) * 256 - 1, selected_CH_Indexes);
                    autocorr(app.UIAxes_TAUTOCORR, autoCorrArray)
                    app.EDF_UIAxes_Opened_Before = {selected_CH_Indexes};
                    app.EDF_UIAxes_Opened_Before = cell2mat(app.EDF_UIAxes_Opened_Before);
                end

            end

        end

        % Menu selected function: FrequencyPowerSpectrumMenu
        function FrequencyPowerSpectrumMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                table = array2table(app.EDF_Signals, 'VariableNames', app.EDF_Data.Properties.VariableNames);
                time_wseconds = (seconds(1 / app.EDF_Frequency):seconds(1 / app.EDF_Frequency):seconds(app.EDF_Info.NumDataRecords));
                table = table2timetable(table, 'RowTimes', time_wseconds);
                app.EDF_Signals_With_Seconds = table;
                [pxx, f] = pspectrum(table);
                decibels = pow2db(pxx);
                plot(app.UIAxes_F, f, decibels);
                app.UIAxes_F.XLim = [0 max(f)];
                app.EDF_UIAxes_F_Frequency_MinMax = app.UIAxes_F.XLim;
                app.UIAxes_F.YLim = [min(decibels, [], 'all') max(decibels, [], 'all')];
                app.EDF_UIAxes_F_Decibels_MinMax = app.UIAxes_F.YLim;
                app.EDF_Flipped_Lines_UIAxes_F = flip(app.UIAxes_F.Children);
                [~, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                onlyOpenPlots = 1:app.EDF_SignalColumns;
                onlyOpenPlots(selected_CH_Indexes) = [];
                set(app.EDF_Flipped_Lines_UIAxes_F(onlyOpenPlots), 'Visible', 'off');
            end

        end

        % Menu selected function: TimeFrequencyPowerMenu
        function TimeFrequencyPowerMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);

                if selected_CH_Numbers > 1 || selected_CH_Numbers == 0
                    message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                    errordlg(message, 'Plot Error');
                elseif selected_CH_Numbers == 1
                    Time_Frequency_Spectogram(app, selected_CH_Indexes);
                    app.EDF_UIAxes_Opened_Before = {selected_CH_Indexes};
                    app.EDF_UIAxes_Opened_Before = cell2mat(app.EDF_UIAxes_Opened_Before);
                end

            end

        end

        % Menu selected function: FrequencyPowerDensityMenu
        function FrequencyPowerDensityMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);

                if selected_CH_Numbers > 1 || selected_CH_Numbers == 0
                    message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                    errordlg(message, 'Plot Error');
                elseif selected_CH_Numbers == 1
                    time = seconds(app.EDF_Axes_All).';
                    yTable = timetable(time, app.EDF_Signals(:, selected_CH_Indexes));
                    pspectrum(yTable, 'persistence');
                    app.EDF_UIAxes_Opened_Before = {selected_CH_Indexes};
                    app.EDF_UIAxes_Opened_Before = cell2mat(app.EDF_UIAxes_Opened_Before);
                end

            end

        end

        % Menu selected function: TimeFrequencyPower3DMenu
        function TimeFrequencyPower3DMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);

                if selected_CH_Numbers > 1 || selected_CH_Numbers == 0
                    message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                    errordlg(message, 'Plot Error');
                elseif selected_CH_Numbers == 1
                    time = seconds(app.EDF_Axes_All).';
                    yTable = timetable(time, app.EDF_Signals(:, selected_CH_Indexes));
                    figure;
                    pspectrum(yTable, 'spectrogram');
                    view([-30 45])
                end

            end

        end

        % Menu selected function: TimeFrequencyPowerFrequency3DMenu
        function TimeFrequencyPowerFrequency3DMenuSelected(app, ~)

            if isempty(app.SignalTable.Data)
                errordlg('No EDF file not imported. Please import an EDF file', 'Plot Error');
            else
                [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);

                if selected_CH_Numbers > 1 || selected_CH_Numbers == 0
                    message = append(string(selected_CH_Numbers), ' channel selected. Please select only one channel.');
                    errordlg(message, 'Plot Error');
                elseif selected_CH_Numbers == 1
                    figure;
                    spectrogram(app.EDF_Signals(:, selected_CH_Indexes), 100, 80, 100, app.EDF_Frequency, 'yaxis');
                    view([-30 45])
                end

            end

        end

        % Menu selected function: snMenu_5sn
        function snMenu_5snSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            app.EDF_Axes_Interval_Time = 5;
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Menu selected function: snMenu_30sn
        function snMenu_30snSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            app.EDF_Axes_Interval_Time = 30;
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Menu selected function: snMenu_60sn
        function snMenu_60snSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            app.EDF_Axes_Interval_Time = 60;
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Menu selected function: snMenu_120sn
        function snMenu_120snSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            app.EDF_Axes_Interval_Time = 120;
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Menu selected function: snMenu_240sn
        function snMenu_240snSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            app.EDF_Axes_Interval_Time = 240;
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Menu selected function: snMenu_Custom
        function snMenu_CustomSelected(app, ~)
            sliderValue = app.SecondsSlider.Value;
            sliderValue_2 = app.SecondsSlider_2.Value;
            sliderValue_3 = app.SecondsSlider_3.Value;
            XLimInterval = app.EDF_Axes_Interval_Time;
            XLimInterval = inputdlg('Enter interval time', 'Input', [1 35], {num2str(XLimInterval)});
            app.EDF_Axes_Interval_Time = str2double(XLimInterval);
            app.UIAxes_T.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TZCR.XLim = [sliderValue sliderValue + app.EDF_Axes_Interval_Time];
            app.UIAxes_TENERGY.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TVAR.XLim = [sliderValue_2 sliderValue_2 + app.EDF_Axes_Interval_Time];
            app.UIAxes_TF.XLim = [sliderValue_3 sliderValue_3 + app.EDF_Axes_Interval_Time];
        end

        % Clicked callback: FitToScreenButton
        function FitToScreenButtonClicked(app, ~)

            if isempty(app.UIAxes_T.Children) == false
                app.UIAxes_T.XLim = app.EDF_UIAxes_T_Time_MinMax;
                app.UIAxes_T.YLim = app.EDF_UIAxes_T_Amplitude_MinMax;
            end

            if isempty(app.UIAxes_TZCR.Children) == false
                app.UIAxes_TZCR.XLim = app.EDF_UIAxes_TZCR_Time_MinMax;
                app.UIAxes_TZCR.YLim = app.EDF_UIAxes_TZCR_ZeroCrossing_MinMax;
            end

            if isempty(app.UIAxes_TENERGY.Children) == false
                app.UIAxes_TENERGY.XLim = app.EDF_UIAxes_TENERGY_Time_MinMax;
                app.UIAxes_TENERGY.YLim = app.EDF_UIAxes_TENERGY_Energy_MinMax;
            end

            if isempty(app.UIAxes_TVAR.Children) == false
                app.UIAxes_TVAR.XLim = app.EDF_UIAxes_TVAR_Time_MinMax;
                app.UIAxes_TVAR.YLim = app.EDF_UIAxes_TVAR_Variance_MinMax;
            end

            if isempty(app.UIAxes_F.Children) == false
                app.UIAxes_F.XLim = app.EDF_UIAxes_F_Frequency_MinMax;
                app.UIAxes_F.YLim = app.EDF_UIAxes_F_Decibels_MinMax;
            end

            if isempty(app.UIAxes_TF.Children) == false
                app.UIAxes_TF.XLim = app.EDF_UIAxes_TF_Time_MinMax;
                app.UIAxes_TF.YLim = app.EDF_UIAxes_TF_Frequency_MinMax;
            end

        end

        % Clicked callback: ShowAllSignals
        function ShowAllSignalsClicked(app, ~)
            set(app.SignalTable, 'Data', app.EDF_Signal_Table, 'ColumnFormat', {'char', 'logical', 'char'});
            set(app.UIAxes_T.Children, 'Visible', 'on');
            set(app.UIAxes_TZCR.Children, 'Visible', 'on');
            set(app.UIAxes_TENERGY.Children, 'Visible', 'on');
            delete(findobj(app.UIAxes_TENERGY, 'type', 'patch'));
            set(app.UIAxes_TVAR.Children, 'Visible', 'on');
            delete(findobj(app.UIAxes_TVAR, 'type', 'patch'));
            set(app.UIAxes_F.Children, 'Visible', 'on');
        end

        % Clicked callback: AnalyseVariables
        function AnalyseVariablesClicked(app, ~)
            app.SynchronizeGraphsClicked(app)
            [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
            Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes);
        end

        % Clicked callback: SynchronizeGraphs
        function SynchronizeGraphsClicked(app, ~)
            value = app.EDF_Last_SliderOrButton_EventHandler;

            if app.EDF_Last_SliderOrButton_Detect == "Time & Observation"
                Slider_2_Changing(app, value)
                Slider_3_Changing(app, value)
                app.SecondsSlider_2.Value = value;
                app.SecondsSlider_3.Value = value;
            end

            if app.EDF_Last_SliderOrButton_Detect == "Time & Analysis"
                Slider_1_Changing(app, value)
                Slider_3_Changing(app, value)
                app.SecondsSlider.Value = value;
                app.SecondsSlider_3.Value = value;
            end

            if app.EDF_Last_SliderOrButton_Detect == "Time-Frequency & Analysis"
                Slider_1_Changing(app, value)
                Slider_2_Changing(app, value)
                app.SecondsSlider.Value = value;
                app.SecondsSlider_2.Value = value;
            end

        end

        % Cell edit callback: SignalTable
        function SignalTableCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            [selected_CH_Numbers, ~] = Detect_Which_Channel_Selected(app);

            if newData == 0

                if length(app.UIAxes_T.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_T(indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TZCR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TZCR(indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TENERGY.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TENERGY(indices(1, 1)), 'Visible', 'off');
                    delete(findobj(app.UIAxes_TENERGY, 'type', 'patch'));
                end

                if length(app.UIAxes_TVAR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TVAR(indices(1, 1)), 'Visible', 'off');
                    delete(findobj(app.UIAxes_TVAR, 'type', 'patch'));
                end

                if length(app.UIAxes_F.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_F(indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TAUTOCORR.Children) == 1
                    indexOfSpectrum = find(app.EDF_UIAxes_Opened_Before == indices(1, 1));
                    app.EDF_UIAxes_Opened_Before(indexOfSpectrum) = [];

                    if selected_CH_Numbers ~= 0
                        autoCorrArray = app.EDF_Signals(:, app.EDF_UIAxes_Opened_Before(end));
                        autocorr(app.UIAxes_TAUTOCORR, autoCorrArray)
                    end

                    if selected_CH_Numbers == 0
                        app.EDF_UIAxes_Opened_Before = [];
                        set(app.UIAxes_TF.Children(1), 'Visible', 'off');
                    end

                end

                if length(app.UIAxes_TF.Children) == 1
                    indexOfSpectrum = find(app.EDF_UIAxes_Opened_Before == indices(1, 1));
                    app.EDF_UIAxes_Opened_Before(indexOfSpectrum) = [];

                    if selected_CH_Numbers ~= 0
                        Time_Frequency_Spectogram(app, app.EDF_UIAxes_Opened_Before(end));
                    end

                    if selected_CH_Numbers == 0
                        app.EDF_UIAxes_Opened_Before = [];
                        set(app.UIAxes_TF.Children(1), 'Visible', 'off');
                    end

                end

            end

            if newData == 1

                if length(app.UIAxes_T.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_T(indices(1, 1)), 'Visible', 'on');
                end

                if length(app.UIAxes_TZCR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TZCR(indices(1, 1)), 'Visible', 'on');
                end

                if length(app.UIAxes_TENERGY.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TENERGY(indices(1, 1)), 'Visible', 'on');
                    delete(findobj(app.UIAxes_TENERGY, 'type', 'patch'));
                end

                if length(app.UIAxes_TVAR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TVAR(indices(1, 1)), 'Visible', 'on');
                    delete(findobj(app.UIAxes_TVAR, 'type', 'patch'));
                end

                if length(app.UIAxes_F.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_F(indices(1, 1)), 'Visible', 'on');
                end

                if length(app.UIAxes_TAUTOCORR.Children) == 1
                    app.EDF_UIAxes_Selected_Spectrum = indices(1, 1);
                    app.EDF_UIAxes_Opened_Before(end + 1) = indices(1, 1);
                    autoCorrArray = app.EDF_Signals(:, app.EDF_UIAxes_Opened_Before(end));
                    autocorr(app.UIAxes_TAUTOCORR, autoCorrArray)
                end

                if length(app.UIAxes_TF.Children) == 1
                    app.EDF_UIAxes_Selected_Spectrum = indices(1, 1);
                    app.EDF_UIAxes_Opened_Before(end + 1) = indices(1, 1);
                    Time_Frequency_Spectogram(app, indices(1, 1))
                end

            end

        end

        % Cell selection callback: SignalTable
        function SignalTableCellSelection(app, event)
            indices = event.Indices;

            if indices(1, 2) == 3 || indices(1, 2) == 1
                OnlyOnceSignalTable = app.EDF_Signal_Table;
                ToCloseData = OnlyOnceSignalTable(:, 2);
                ToCloseData = str2double(ToCloseData);
                ToCloseData(1:end ~= indices(1, 1)) = false;
                ToCloseData(indices(1, 1)) = true;
                ToCloseData = num2cell(ToCloseData);
                OnlyOnceSignalTable(:, 2) = ToCloseData;
                set(app.SignalTable, 'Data', OnlyOnceSignalTable, 'ColumnFormat', {'char', 'logical', 'char'});

                if length(app.UIAxes_T.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_T(indices(1, 1)), 'Visible', 'on');
                    set(app.EDF_Flipped_Lines_UIAxes_T(1:end ~= indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TZCR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TZCR(indices(1, 1)), 'Visible', 'on');
                    set(app.EDF_Flipped_Lines_UIAxes_TZCR(1:end ~= indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TENERGY.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TENERGY(indices(1, 1)), 'Visible', 'on');
                    set(app.EDF_Flipped_Lines_UIAxes_TENERGY(1:end ~= indices(1, 1)), 'Visible', 'off');
                    delete(findobj(app.UIAxes_TENERGY, 'type', 'patch'));
                    patch(app.UIAxes_TENERGY, [app.EDF_Axes_Seconds fliplr(app.EDF_Axes_Seconds)], [app.EDF_Signal_Energy(indices(1, 1), :) min(app.UIAxes_TENERGY.YLim) * ones(size(app.EDF_Signal_Energy(indices(1, 1), :)))], app.UIAxes_TENERGY.ColorOrder(indices(1, 1), :));
                end

                if length(app.UIAxes_TVAR.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_TVAR(indices(1, 1)), 'Visible', 'on');
                    set(app.EDF_Flipped_Lines_UIAxes_TVAR(1:end ~= indices(1, 1)), 'Visible', 'off');
                    delete(findobj(app.UIAxes_TVAR, 'type', 'patch'));
                    patch(app.UIAxes_TVAR, [app.EDF_Axes_Seconds fliplr(app.EDF_Axes_Seconds)], [app.EDF_Signal_Variance(indices(1, 1), :) min(app.UIAxes_TVAR.YLim) * ones(size(app.EDF_Signal_Variance(indices(1, 1), :)))], app.UIAxes_TVAR.ColorOrder(indices(1, 1), :));
                end

                if length(app.UIAxes_F.Children) > 1
                    set(app.EDF_Flipped_Lines_UIAxes_F(indices(1, 1)), 'Visible', 'on');
                    set(app.EDF_Flipped_Lines_UIAxes_F(1:end ~= indices(1, 1)), 'Visible', 'off');
                end

                if length(app.UIAxes_TAUTOCORR.Children) == 4
                    [~, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                    app.EDF_UIAxes_Opened_Before = {selected_CH_Indexes};
                    app.EDF_UIAxes_Opened_Before = cell2mat(app.EDF_UIAxes_Opened_Before);
                    autoCorrArray = app.EDF_Signals(:, app.EDF_UIAxes_Opened_Before(end));
                    autocorr(app.UIAxes_TAUTOCORR, autoCorrArray)
                end

                if length(app.UIAxes_TF.Children) == 1
                    [~, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
                    app.EDF_UIAxes_Opened_Before = {selected_CH_Indexes};
                    app.EDF_UIAxes_Opened_Before = cell2mat(app.EDF_UIAxes_Opened_Before);
                    Time_Frequency_Spectogram(app, selected_CH_Indexes)
                end

            end

        end

        % Cell selection callback: InformationTable
        function InformationTableCellSelection(app, event)
            indices = event.Indices;

            if indices(1, 1) == 3 || indices(1, 1) == 4
                selectedValue = app.InformationTable.Data{indices(1, 1), 2};
                selectedValue = regexp(selectedValue, '\d{1,4}', 'match');
                selectedValue = str2double(selectedValue);
                app.UIAxes_T.XLim = [selectedValue selectedValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TZCR.XLim = [selectedValue selectedValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TENERGY.XLim = [selectedValue selectedValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TVAR.XLim = [selectedValue selectedValue + app.EDF_Axes_Interval_Time];
                app.UIAxes_TF.XLim = [selectedValue selectedValue + app.EDF_Axes_Interval_Time];
                app.SecondsSlider.Value = selectedValue;
                app.SecondsSlider_2.Value = selectedValue;
                app.SecondsSlider_3.Value = selectedValue;
            end

            if indices(1, 1) == 5
                app.UIAxes_T.XLim = [app.EDF_Information_StartTime app.EDF_Information_EndTime];
                app.UIAxes_TZCR.XLim = [app.EDF_Information_StartTime app.EDF_Information_EndTime];
                app.UIAxes_TENERGY.XLim = [app.EDF_Information_StartTime app.EDF_Information_EndTime];
                app.UIAxes_TVAR.XLim = [app.EDF_Information_StartTime app.EDF_Information_EndTime];
                app.UIAxes_TF.XLim = [app.EDF_Information_StartTime app.EDF_Information_EndTime];
                app.SecondsSlider.Value = app.EDF_Information_StartTime;
                app.SecondsSlider_2.Value = app.EDF_Information_StartTime;
                app.SecondsSlider_3.Value = app.EDF_Information_StartTime;
            end

        end

        % Value changing function: SecondsSlider
        function SecondsSliderValueChanging(app, event)
            changingValue = event.Value;
            Slider_1_Changing(app, changingValue);
            app.EDF_Last_SliderOrButton_Detect = 'Time & Observation';
            app.EDF_Last_SliderOrButton_EventHandler = changingValue;
        end

        % Value changing function: SecondsSlider_2
        function SecondsSlider_2ValueChanging(app, event)
            changingValue = event.Value;
            Slider_2_Changing(app, changingValue);
            app.EDF_Last_SliderOrButton_Detect = 'Time & Analysis';
            app.EDF_Last_SliderOrButton_EventHandler = changingValue;
        end

        % Value changing function: SecondsSlider_3
        function SecondsSlider_3ValueChanging(app, event)
            changingValue = event.Value;
            Slider_3_Changing(app, changingValue);
            app.EDF_Last_SliderOrButton_Detect = 'Time-Frequency & Analysis';
            app.EDF_Last_SliderOrButton_EventHandler = changingValue;
        end

        % Button pushed function: Button__Back_1
        function Button__Back_1Pushed(app, ~)
            subtractedValue = app.EDF_Axes_Interval_Time;
            app.UIAxes_T.XLim = [app.UIAxes_T.XLim(1) - subtractedValue app.UIAxes_T.XLim(2) - subtractedValue];
            app.UIAxes_TZCR.XLim = [app.UIAxes_TZCR.XLim(1) - subtractedValue app.UIAxes_TZCR.XLim(2) - subtractedValue];
            app.SecondsSlider.Value = app.SecondsSlider.Value - subtractedValue;
            app.EDF_Last_SliderOrButton_Detect = 'Time & Observation';
            app.EDF_Last_SliderOrButton_EventHandler = app.UIAxes_T.XLim(1);
            app.SynchronizeGraphsClicked(app)
            [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
            Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes);
        end

        % Button pushed function: Button_Forward_1
        function Button_Forward_1Pushed(app, ~)
            addedValue = app.EDF_Axes_Interval_Time;
            app.UIAxes_T.XLim = [app.UIAxes_T.XLim(1) + addedValue app.UIAxes_T.XLim(2) + addedValue];
            app.UIAxes_TZCR.XLim = [app.UIAxes_TZCR.XLim(1) + addedValue app.UIAxes_TZCR.XLim(2) + addedValue];
            app.SecondsSlider.Value = app.SecondsSlider.Value + addedValue;
            app.EDF_Last_SliderOrButton_Detect = 'Time & Observation';
            app.EDF_Last_SliderOrButton_EventHandler = app.UIAxes_T.XLim(1);
            app.SynchronizeGraphsClicked(app)
            [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
            Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes);
        end

        % Button pushed function: Button__Back_2
        function Button__Back_2Pushed(app, ~)
            subtractedValue = app.EDF_Axes_Interval_Time;
            app.UIAxes_TENERGY.XLim = [app.UIAxes_TENERGY.XLim(1) - subtractedValue app.UIAxes_TENERGY.XLim(2) - subtractedValue];
            app.UIAxes_TVAR.XLim = [app.UIAxes_TVAR.XLim(1) - subtractedValue app.UIAxes_TVAR.XLim(2) - subtractedValue];
            app.SecondsSlider_2.Value = app.SecondsSlider_2.Value - subtractedValue;
            app.EDF_Last_SliderOrButton_Detect = 'Time & Analysis';
            app.EDF_Last_SliderOrButton_EventHandler = app.UIAxes_TENERGY.XLim(1);
            app.SynchronizeGraphsClicked(app)
            [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
            Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes);
        end

        % Button pushed function: Button_Forward_2
        function Button_Forward_2Pushed(app, ~)
            addedValue = app.EDF_Axes_Interval_Time;
            app.UIAxes_TENERGY.XLim = [app.UIAxes_TENERGY.XLim(1) + addedValue app.UIAxes_TENERGY.XLim(2) + addedValue];
            app.UIAxes_TVAR.XLim = [app.UIAxes_TVAR.XLim(1) + addedValue app.UIAxes_TVAR.XLim(2) + addedValue];
            app.SecondsSlider_2.Value = app.SecondsSlider_2.Value + addedValue;
            app.EDF_Last_SliderOrButton_Detect = 'Time & Analysis';
            app.EDF_Last_SliderOrButton_EventHandler = app.UIAxes_TENERGY.XLim(1);
            app.SynchronizeGraphsClicked(app)
            [selected_CH_Numbers, selected_CH_Indexes] = Detect_Which_Channel_Selected(app);
            Analyse_Variables(app, selected_CH_Numbers, selected_CH_Indexes);
        end

    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.AutoResizeChildren = 'off';
            app.UIFigure.Position = [100 100 860 480];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.SizeChangedFcn = createCallbackFcn(app, @updateAppLayout, true);

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {220, '1x', 220};
            app.GridLayout.RowHeight = {'1x'};
            app.GridLayout.ColumnSpacing = 0;
            app.GridLayout.RowSpacing = 0;
            app.GridLayout.Padding = [0 0 0 0];
            app.GridLayout.Scrollable = 'on';

            % Create LeftPanel
            app.LeftPanel = uipanel(app.GridLayout);
            app.LeftPanel.Layout.Row = 1;
            app.LeftPanel.Layout.Column = 1;

            % Create SignalTable
            app.SignalTable = uitable(app.LeftPanel);
            app.SignalTable.ColumnName = {'Description'; 'Value'; 'Color'};
            app.SignalTable.RowName = {};
            app.SignalTable.ColumnEditable = [false true false];
            app.SignalTable.CellEditCallback = createCallbackFcn(app, @SignalTableCellEdit, true);
            app.SignalTable.CellSelectionCallback = createCallbackFcn(app, @SignalTableCellSelection, true);
            app.SignalTable.Position = [0 127 219 352];

            % Create InformationTable
            app.InformationTable = uitable(app.LeftPanel);
            app.InformationTable.ColumnName = {'Description'; 'Value'};
            app.InformationTable.RowName = {};
            app.InformationTable.CellSelectionCallback = createCallbackFcn(app, @InformationTableCellSelection, true);
            app.InformationTable.Position = [1 1 219 122];

            % Create CenterPanel
            app.CenterPanel = uipanel(app.GridLayout);
            app.CenterPanel.Layout.Row = 1;
            app.CenterPanel.Layout.Column = 2;

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CenterPanel);
            app.TabGroup.Position = [1 4 413 473];

            % Create TimeObservationTab
            app.TimeObservationTab = uitab(app.TabGroup);
            app.TimeObservationTab.Title = 'Time & Observation';

            % Create UIAxes_T
            app.UIAxes_T = uiaxes(app.TimeObservationTab);
            title(app.UIAxes_T, 'Time - Amplitude Plot')
            xlabel(app.UIAxes_T, 'Time (s)')
            ylabel(app.UIAxes_T, 'Amplitude (uV)')
            zlabel(app.UIAxes_T, 'Z')
            app.UIAxes_T.XGrid = 'on';
            app.UIAxes_T.YGrid = 'on';
            app.UIAxes_T.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_T.MinorGridAlpha = 0.25;
            app.UIAxes_T.Position = [1 261 403 182];

            % Create UIAxes_TZCR
            app.UIAxes_TZCR = uiaxes(app.TimeObservationTab);
            title(app.UIAxes_TZCR, 'Time - Zero Corssing Plot')
            xlabel(app.UIAxes_TZCR, 'Time (s)')
            ylabel(app.UIAxes_TZCR, 'Value')
            zlabel(app.UIAxes_TZCR, 'Z')
            app.UIAxes_TZCR.XGrid = 'on';
            app.UIAxes_TZCR.YGrid = 'on';
            app.UIAxes_TZCR.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_TZCR.Position = [1 84 403 178];

            % Create SecondsSlider
            app.SecondsSlider = uislider(app.TimeObservationTab);
            app.SecondsSlider.ValueChangingFcn = createCallbackFcn(app, @SecondsSliderValueChanging, true);
            app.SecondsSlider.Position = [34 66 346 3];

            % Create Button_Forward_1
            app.Button_Forward_1 = uibutton(app.TimeObservationTab, 'push');
            app.Button_Forward_1.ButtonPushedFcn = createCallbackFcn(app, @Button_Forward_1Pushed, true);
            app.Button_Forward_1.Position = [388 57 20 22];
            app.Button_Forward_1.Text = '+';

            % Create Button__Back_1
            app.Button__Back_1 = uibutton(app.TimeObservationTab, 'push');
            app.Button__Back_1.ButtonPushedFcn = createCallbackFcn(app, @Button__Back_1Pushed, true);
            app.Button__Back_1.Position = [5 57 20 22];
            app.Button__Back_1.Text = '-';

            % Create TimeAnalysisTab
            app.TimeAnalysisTab = uitab(app.TabGroup);
            app.TimeAnalysisTab.Title = 'Time & Analysis';

            % Create UIAxes_TENERGY
            app.UIAxes_TENERGY = uiaxes(app.TimeAnalysisTab);
            title(app.UIAxes_TENERGY, 'Time - Energy')
            xlabel(app.UIAxes_TENERGY, 'Time (s)')
            ylabel(app.UIAxes_TENERGY, 'Energy')
            zlabel(app.UIAxes_TENERGY, 'Z')
            app.UIAxes_TENERGY.XGrid = 'on';
            app.UIAxes_TENERGY.YGrid = 'on';
            app.UIAxes_TENERGY.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_TENERGY.Position = [1 203 193 240];

            % Create UIAxes_TVAR
            app.UIAxes_TVAR = uiaxes(app.TimeAnalysisTab);
            title(app.UIAxes_TVAR, 'Time - Variance')
            xlabel(app.UIAxes_TVAR, 'Time (s)')
            ylabel(app.UIAxes_TVAR, 'Variance')
            zlabel(app.UIAxes_TVAR, 'Z')
            app.UIAxes_TVAR.XGrid = 'on';
            app.UIAxes_TVAR.YGrid = 'on';
            app.UIAxes_TVAR.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_TVAR.Position = [215 203 193 240];

            % Create UIAxes_TAUTOCORR
            app.UIAxes_TAUTOCORR = uiaxes(app.TimeAnalysisTab);
            title(app.UIAxes_TAUTOCORR, 'Lags - Autocorrelation')
            xlabel(app.UIAxes_TAUTOCORR, 'Lags')
            ylabel(app.UIAxes_TAUTOCORR, 'Sample Autocorrelation')
            zlabel(app.UIAxes_TAUTOCORR, 'Z')
            app.UIAxes_TAUTOCORR.XGrid = 'on';
            app.UIAxes_TAUTOCORR.YGrid = 'on';
            app.UIAxes_TAUTOCORR.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_TAUTOCORR.Position = [1 1 407 139];

            % Create SecondsSlider_2
            app.SecondsSlider_2 = uislider(app.TimeAnalysisTab);
            app.SecondsSlider_2.ValueChangingFcn = createCallbackFcn(app, @SecondsSlider_2ValueChanging, true);
            app.SecondsSlider_2.Position = [34 187 346 3];

            % Create Button_Forward_2
            app.Button_Forward_2 = uibutton(app.TimeAnalysisTab, 'push');
            app.Button_Forward_2.ButtonPushedFcn = createCallbackFcn(app, @Button_Forward_2Pushed, true);
            app.Button_Forward_2.Position = [388 178 20 22];
            app.Button_Forward_2.Text = '+';

            % Create Button__Back_2
            app.Button__Back_2 = uibutton(app.TimeAnalysisTab, 'push');
            app.Button__Back_2.ButtonPushedFcn = createCallbackFcn(app, @Button__Back_2Pushed, true);
            app.Button__Back_2.Position = [5 177 20 22];
            app.Button__Back_2.Text = '-';

            % Create FrequencyTab
            app.FrequencyTab = uitab(app.TabGroup);
            app.FrequencyTab.Title = 'Frequency';

            % Create UIAxes_F
            app.UIAxes_F = uiaxes(app.FrequencyTab);
            title(app.UIAxes_F, 'Frequency - Power Spectrum Plot')
            xlabel(app.UIAxes_F, 'Frequency (Hz)')
            ylabel(app.UIAxes_F, 'Power Spectrum (dB)')
            zlabel(app.UIAxes_F, 'Z')
            app.UIAxes_F.XGrid = 'on';
            app.UIAxes_F.YGrid = 'on';
            app.UIAxes_F.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_F.Position = [1 84 407 359];

            % Create TimeFrequencyTab
            app.TimeFrequencyTab = uitab(app.TabGroup);
            app.TimeFrequencyTab.Title = 'Time-Frequency';

            % Create UIAxes_TF
            app.UIAxes_TF = uiaxes(app.TimeFrequencyTab);
            title(app.UIAxes_TF, 'Time - Frequency Plot')
            xlabel(app.UIAxes_TF, 'Time (s)')
            ylabel(app.UIAxes_TF, 'Frequency (Hz)')
            zlabel(app.UIAxes_TF, 'Z')
            app.UIAxes_TF.XGrid = 'on';
            app.UIAxes_TF.YGrid = 'on';
            app.UIAxes_TF.ColorOrder = [0 0.4471 0.7412; 0.851 0.3255 0.098; 0.9294 0.6941 0.1255; 0.4941 0.1843 0.5569; 0.4667 0.6745 0.1882; 0.302 0.7451 0.9333; 0.6353 0.0784 0.1843; 1 1 0.0706; 0.0745 0.6235 1; 1 0.4118 0.1608; 0.3922 0.8314 0.0745; 0.7176 0.2745 1; 0.0588 1 1; 0.749 0.2118 0.5412; 1 0 0; 0 0.7647 1; 0 1 0; 0 0 1; 0 1 1; 0.8784 0.5569 0; 0.6824 0.0667 0.749; 0.0941 0.8588 0.6824; 0.9216 0.0549 0.5451];
            app.UIAxes_TF.Position = [1 84 407 359];

            % Create SecondsSlider_3
            app.SecondsSlider_3 = uislider(app.TimeFrequencyTab);
            app.SecondsSlider_3.ValueChangingFcn = createCallbackFcn(app, @SecondsSlider_3ValueChanging, true);
            app.SecondsSlider_3.Position = [18 66 378 3];

            % Create RightPanel
            app.RightPanel = uipanel(app.GridLayout);
            app.RightPanel.Layout.Row = 1;
            app.RightPanel.Layout.Column = 3;

            % Create AnalyseTable
            app.AnalyseTable = uitable(app.RightPanel);
            app.AnalyseTable.ColumnName = {'Variables'; 'Value'};
            app.AnalyseTable.RowName = {};
            app.AnalyseTable.Position = [0 6 219 471];

            % Create ImportMenu
            app.ImportMenu = uimenu(app.UIFigure);
            app.ImportMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportMenuSelected, true);
            app.ImportMenu.Text = 'Import';

            % Create PlotMenu
            app.PlotMenu = uimenu(app.UIFigure);
            app.PlotMenu.Text = 'Plot';

            % Create TimeAmplitudeMenu
            app.TimeAmplitudeMenu = uimenu(app.PlotMenu);
            app.TimeAmplitudeMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeAmplitudeMenuSelected, true);
            app.TimeAmplitudeMenu.Text = 'Time - Amplitude';

            % Create TimeZeroCrossingMenu
            app.TimeZeroCrossingMenu = uimenu(app.PlotMenu);
            app.TimeZeroCrossingMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeZeroCrossingMenuSelected, true);
            app.TimeZeroCrossingMenu.Text = 'Time - Zero Crossing';

            % Create TimeEnergyMenu
            app.TimeEnergyMenu = uimenu(app.PlotMenu);
            app.TimeEnergyMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeEnergyMenuSelected, true);
            app.TimeEnergyMenu.Text = 'Time - Energy';

            % Create TimeVarianceMenu
            app.TimeVarianceMenu = uimenu(app.PlotMenu);
            app.TimeVarianceMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeVarianceMenuSelected, true);
            app.TimeVarianceMenu.Text = 'Time - Variance';

            % Create LagsAutocorrelationMenu
            app.LagsAutocorrelationMenu = uimenu(app.PlotMenu);
            app.LagsAutocorrelationMenu.MenuSelectedFcn = createCallbackFcn(app, @LagsAutocorrelationMenuSelected, true);
            app.LagsAutocorrelationMenu.Text = 'Lags - Autocorrelation';

            % Create FrequencyPowerSpectrumMenu
            app.FrequencyPowerSpectrumMenu = uimenu(app.PlotMenu);
            app.FrequencyPowerSpectrumMenu.MenuSelectedFcn = createCallbackFcn(app, @FrequencyPowerSpectrumMenuSelected, true);
            app.FrequencyPowerSpectrumMenu.Text = 'Frequency - Power Spectrum';

            % Create TimeFrequencyPowerMenu
            app.TimeFrequencyPowerMenu = uimenu(app.PlotMenu);
            app.TimeFrequencyPowerMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeFrequencyPowerMenuSelected, true);
            app.TimeFrequencyPowerMenu.Text = 'Time - Frequency - Power';

            % Create FrequencyPowerDensityMenu
            app.FrequencyPowerDensityMenu = uimenu(app.PlotMenu);
            app.FrequencyPowerDensityMenu.MenuSelectedFcn = createCallbackFcn(app, @FrequencyPowerDensityMenuSelected, true);
            app.FrequencyPowerDensityMenu.Text = 'Frequency - Power - Density';

            % Create TimeFrequencyPower3DMenu
            app.TimeFrequencyPower3DMenu = uimenu(app.PlotMenu);
            app.TimeFrequencyPower3DMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeFrequencyPower3DMenuSelected, true);
            app.TimeFrequencyPower3DMenu.Text = 'Time - Frequency - Power [3D]';

            % Create TimeFrequencyPowerFrequency3DMenu
            app.TimeFrequencyPowerFrequency3DMenu = uimenu(app.PlotMenu);
            app.TimeFrequencyPowerFrequency3DMenu.MenuSelectedFcn = createCallbackFcn(app, @TimeFrequencyPowerFrequency3DMenuSelected, true);
            app.TimeFrequencyPowerFrequency3DMenu.Text = 'Time - Frequency - Power/Frequency [3D]';

            % Create GraphOptionsMenu
            app.GraphOptionsMenu = uimenu(app.UIFigure);
            app.GraphOptionsMenu.Text = 'Graph Options';

            % Create ChangeIntervalTimeMenu
            app.ChangeIntervalTimeMenu = uimenu(app.GraphOptionsMenu);
            app.ChangeIntervalTimeMenu.Text = 'Change Interval Time';

            % Create snMenu_5sn
            app.snMenu_5sn = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_5sn.MenuSelectedFcn = createCallbackFcn(app, @snMenu_5snSelected, true);
            app.snMenu_5sn.Text = '5 sn';

            % Create snMenu_30sn
            app.snMenu_30sn = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_30sn.MenuSelectedFcn = createCallbackFcn(app, @snMenu_30snSelected, true);
            app.snMenu_30sn.Text = '30 sn';

            % Create snMenu_60sn
            app.snMenu_60sn = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_60sn.MenuSelectedFcn = createCallbackFcn(app, @snMenu_60snSelected, true);
            app.snMenu_60sn.Text = '60 sn';

            % Create snMenu_120sn
            app.snMenu_120sn = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_120sn.MenuSelectedFcn = createCallbackFcn(app, @snMenu_120snSelected, true);
            app.snMenu_120sn.Text = '120 sn';

            % Create snMenu_240sn
            app.snMenu_240sn = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_240sn.MenuSelectedFcn = createCallbackFcn(app, @snMenu_240snSelected, true);
            app.snMenu_240sn.Text = '240 sn';

            % Create snMenu_Custom
            app.snMenu_Custom = uimenu(app.ChangeIntervalTimeMenu);
            app.snMenu_Custom.MenuSelectedFcn = createCallbackFcn(app, @snMenu_CustomSelected, true);
            app.snMenu_Custom.Text = 'Custom';

            % Create Toolbar
            app.Toolbar = uitoolbar(app.UIFigure);

            % Create FitToScreenButton
            app.FitToScreenButton = uipushtool(app.Toolbar);
            app.FitToScreenButton.Tooltip = {'Fit to Screen'};
            app.FitToScreenButton.ClickedCallback = createCallbackFcn(app, @FitToScreenButtonClicked, true);

            % Create ShowAllSignals
            app.ShowAllSignals = uipushtool(app.Toolbar);
            app.ShowAllSignals.Tooltip = {'Show All Signals'};
            app.ShowAllSignals.ClickedCallback = createCallbackFcn(app, @ShowAllSignalsClicked, true);

            % Create AnalyseVariables
            app.AnalyseVariables = uipushtool(app.Toolbar);
            app.AnalyseVariables.Tooltip = {'Analyse Variables'};
            app.AnalyseVariables.ClickedCallback = createCallbackFcn(app, @AnalyseVariablesClicked, true);

            % Create SynchronizeGraphs
            app.SynchronizeGraphs = uipushtool(app.Toolbar);
            app.SynchronizeGraphs.Tooltip = {'Synchronize Graphs'};
            app.SynchronizeGraphs.ClickedCallback = createCallbackFcn(app, @SynchronizeGraphsClicked, true);

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end

    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = EDF_GUI_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end

        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end

    end

end
