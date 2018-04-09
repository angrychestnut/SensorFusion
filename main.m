close all; clear all; clc;
% startup()
%%
load('meas.mat');
load('xhat.mat');
acc = meas.acc(:, ~any(isnan(meas.acc), 1));
mag = meas.mag(:, ~any(isnan(meas.mag), 1));
gyr = meas.gyr(:, ~any(isnan(meas.gyr), 1));
acc_m = mean(meas.acc(:, ~any(isnan(meas.acc), 1)), 2);
mag_m = mean(meas.acc(:, ~any(isnan(meas.mag), 1)), 2);
gyr_m = mean(meas.acc(:, ~any(isnan(meas.gyr), 1)), 2);
var_acc = (acc-repmat(acc_m,1,1910))*((acc-repmat(acc_m,1,1910))')/1910;
var_mag = (acc-repmat(mag_m,1,1910))*((acc-repmat(acc_m,1,1910))')/1910;
%%
load('data.mat');
% L = mean_mag;
% [xhat, meas] = filterTemplate(L, Ra, Rm, Rw);