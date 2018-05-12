using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public partial class UnitOfWork : IUnitOfWork
    {
        private IRepository<Category> _categoryRepository;
        private BookStoreDbContext _context;
        public IRepository<Category> CategoryRepository
        {
            get
            {

                if (_categoryRepository == null)
                    _categoryRepository = new Repository<Category>(_context);
                return _categoryRepository;
            }
        }


        public UnitOfWork()
        {
            _context = new BookStoreDbContext();
        }

        public void Save()
        {
            _context.SaveChanges();
        }


        public void Dispose()
        {
          
        }

    }
}
