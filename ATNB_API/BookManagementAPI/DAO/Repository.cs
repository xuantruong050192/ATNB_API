using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class Repository<T> : IRepository<T> where T : class
    {


        public BookStoreDbContext _context;
        public IDbSet<T> dbset;
        public Repository(BookStoreDbContext context)
        {


            this._context = context;
            dbset = context.Set<T>(); 
        }

        public T GetById(int id)
        {
            return dbset.Find(id);
        }


        public List<T> GetAll()
        {

            return dbset.AsQueryable().ToList();

        }

        public void Insert(T entity)
        {
            dbset.Add(entity);
        }


        public void Edit(T entity)
        {
            _context.Entry(entity).State = EntityState.Modified;
        }


        public void Delete(T entity)
        {
            _context.Entry(entity).State = EntityState.Deleted;
        }

    }
}
