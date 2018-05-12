using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public interface IRepository<T>
    {
        T GetById(int id);

        List<T> GetAll();

        void Edit(T entity);

        void Insert(T entity);

        void Delete(T entity);
    }
}
