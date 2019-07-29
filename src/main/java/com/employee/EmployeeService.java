package com.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;

    @Autowired
    public EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    Employee createEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    List<Employee> findEmployees() {
        return employeeRepository.findAll();
    }

    Employee findEmployee(int employeeId) {
        return employeeRepository.findById(employeeId).orElseThrow(() -> new RuntimeException("Employee does not exist"));
    }

    Employee updateEmployee(int employeeId, Employee employee) {
        employee.setEmployeeId(employeeId);
        return employeeRepository.save(employee);
    }

    void deleteEmployee(int employeeId) {
        if (employeeRepository.existsById(employeeId)) {
            employeeRepository.deleteById(employeeId);
        }

    }

}
