using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DAO;
using DTO;
namespace BookManagementAPI.Controllers
{
    public class CategoryController : ApiController
    {
        [HttpGet]
        public HttpResponseMessage GetAllCategory()
        {
            object obj;
            try
            {
                using(var _unitOfWork = new UnitOfWork())

                obj = new { StatusCode = 200, data = _unitOfWork.CategoryRepository.GetAll().ToList()};


            }
            catch (Exception ex)
            {
                obj = new { StatusCode = 500, data = new List<Category>() };
            }
            return Request.CreateResponse(obj);



        }
        [HttpPost]
        public HttpResponseMessage Post([FromBody] Category p_Category)
        {
            object obj;

            try
            {
                using (var _unitOfWork = new UnitOfWork())
                {
                    _unitOfWork.CategoryRepository.Insert(p_Category);
                    _unitOfWork.Save();
                    obj = new { StatusCode = 200, data = p_Category };
                }

                   

            }
            catch (Exception e)
            {
                obj = new { StatusCode = 500, data = new Category() };
            }
            return Request.CreateResponse(obj);
        }
        [HttpPut]
        public HttpResponseMessage Put([FromBody] Category p_Category)
        {
            object obj;

            try
            {
                using (var _unitOfWork = new UnitOfWork())
                {
                    _unitOfWork.CategoryRepository.Edit(p_Category);
                    _unitOfWork.Save();
                    obj = new { StatusCode = 200, data = p_Category };
                }



            }
            catch (Exception e)
            {
                obj = new { StatusCode = 500, data = new Category() };
            }
            return Request.CreateResponse(obj);
        }
    }
}
