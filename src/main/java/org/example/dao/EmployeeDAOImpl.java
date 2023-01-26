package org.example.dao;

import org.example.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Employee> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        List<Employee> allEmployees = session.createQuery("from Employee", Employee.class)
                .getResultList();

        for (Employee allEmployee : allEmployees) {
            if (allEmployee.getIs_work() == null) {
                allEmployee.setIs_work("true");
            }
        }

        List<Employee> employees = new ArrayList<>();
        for (Employee allEmployee : allEmployees) {
            if (Objects.equals(allEmployee.getIs_work(), "true")) {
                employees.add(allEmployee);
            }
        }

        return employees;
    }

    @Override
    public void saveEmployee(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.merge(employee);
    }

    @Override
    public Employee getEmployee(int id) {
        Session session = sessionFactory.getCurrentSession();
        Employee employee = session.get(Employee.class, id);

        return employee;
    }

    @Override
    public void deleteEmployee(int id) {
        Session session = sessionFactory.getCurrentSession();
        Employee employee = getEmployee(id);
        employee.setIs_work("false");
        session.merge(employee);
    }
}
