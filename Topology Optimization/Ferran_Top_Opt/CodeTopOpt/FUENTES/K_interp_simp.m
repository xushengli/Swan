function [K_func,kappa] = K_interp_simp(alpha_minus,alpha_plus,E_minus,E_plus,nu_minus,nu_plus,p)
alpha = sym('alpha','real');
% kappa = -(((2*E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (2*E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)))*((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(2*(nu_minus + 1)) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/(2*(alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)))/(((6*((E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)))/((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)) + 3)*((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)));
kappa = -(((2*E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (2*E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)))*((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(2*(nu_minus + 1)) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/(2*(alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)))/(((2*((E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)))/((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)) + 2)*((E_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus + 1) - (E_minus*nu_minus*((alpha - alpha_minus)^p/(alpha_plus - alpha_minus)^p - 1))/(nu_minus^2 - 1) - (E_plus*(alpha - alpha_minus)^p)/((alpha_plus - alpha_minus)^p*(nu_plus + 1)) + (E_plus*nu_plus*(alpha - alpha_minus)^p)/((nu_plus^2 - 1)*(alpha_plus - alpha_minus)^p)));

K_func = matlabFunction(kappa);
end