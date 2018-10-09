package per.zqx.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import per.zqx.dao.EmpMapper;
import per.zqx.domain.Emp;
import per.zqx.service.IEmpService;

import java.util.List;

@Service
public class EmpServiceImpl implements IEmpService {

    @Autowired
    private EmpMapper mapper;

    @RequestMapping
    public List<Emp> listE() {
//        System.out.println(empDao.list());
        return mapper.listEmp();
    }
}
