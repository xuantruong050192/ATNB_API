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
        private IRepository<Author> _authorRepository;
        private IRepository<Publisher> _publisherRepository;
        private IRepository<User> _userRepository;
        //private BookStoreDbContext _context;
        public BookManagementDbContext _context;
        public IRepository<Category> CategoryRepository
        {
            get
            {

                if (_categoryRepository == null)
                    _categoryRepository = new Repository<Category>(_context);
                return _categoryRepository;
            }
        }
        public IRepository<Author> AuthorRepository
        {
            get
            {

                if (_authorRepository == null)
                   _authorRepository = new Repository<Author>(_context);
                return _authorRepository;
            }
        }
        public IRepository<Publisher> PublisherRepository
        {
            get
            {

                if (_publisherRepository == null)
                    _publisherRepository = new Repository<Publisher>(_context);
                return _publisherRepository;
            }
        }
        public IRepository<User> UserRepository
        {
            get
            {

                if (_userRepository == null)
                   _userRepository = new Repository<User>(_context);
                return _userRepository;
            }
        }


        public UnitOfWork()
        {
            _context = new BookManagementDbContext();
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
