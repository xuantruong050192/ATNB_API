﻿using DAO;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.Entity;
using System.IO;

namespace BookManagementAPI.Controllers
{
    public class BookController : ApiController
    {
        [HttpGet]
        [Route("api/book/{searchname}/{skip}/{pagesize}")]
        public HttpResponseMessage GetAllBook(string searchname, int skip, int pagesize)
        {
            object obj;
            try
            {

                using (var _unitOfWork = new UnitOfWork())
                {

                    obj = new
                    {
                        StatusCode = 200,
                        data = _unitOfWork._context.Books.Where(x => (x.IsActive == true && x.Title.Contains(searchname)) || (x.IsActive == true && searchname == "0"))
                        .Include(x => x.Category)
                        .Include(x => x.Author)
                        .Include(x => x.Publisher)
                        .Include(x => x.BookStatu)
                        .OrderByDescending(x => x.CreateDay)
                        .Skip(skip * pagesize).Take(pagesize)
                        .ToList(),
                        total = _unitOfWork._context.Books.Count(x => (x.IsActive == true && x.Title.Contains(searchname)) || (x.IsActive == true && searchname == "0"))
                    };

                }



            }
            catch (Exception ex)
            {
                obj = new { StatusCode = 500, data = new List<Book>() };

            }
            return Request.CreateResponse(obj);



        }

        [HttpGet]
        [Route("api/Book/gettotalrecord")]
        public HttpResponseMessage GetTotalRecord()
        {
            object obj;
            try
            {
                using (var _unitOfWork = new UnitOfWork())

                    obj = new { StatusCode = 200, data = _unitOfWork.BookRepository.GetTotalRecord() };


            }
            catch (Exception ex)
            {
                obj = new { StatusCode = 500, data = new List<Book>() };
            }
            return Request.CreateResponse(obj);



        }
        [HttpPost]
        public HttpResponseMessage AddBook()
        {
            object obj = new
            {

            };
            int iUploadedCnt = 0;

            // DEFINE THE PATH WHERE WE WANT TO SAVE THE FILES.
            string sPath = "";
            sPath = System.Web.Hosting.HostingEnvironment.MapPath("~/Images/");
            System.Web.HttpFileCollection hfc = System.Web.HttpContext.Current.Request.Files;
            for (int iCnt = 0; iCnt <= hfc.Count - 1; iCnt++)
            {
                System.Web.HttpPostedFile hpf = hfc[iCnt];

                if (hpf.ContentLength > 0)
                {
                    // CHECK IF THE SELECTED FILE(S) ALREADY EXISTS IN FOLDER. (AVOID DUPLICATE)
                    if (!File.Exists(sPath + Path.GetFileName(hpf.FileName)))
                    {
                        // SAVE THE FILES IN THE FOLDER.
                        hpf.SaveAs(sPath + Path.GetFileName(hpf.FileName));
                        iUploadedCnt = iUploadedCnt + 1;
                    }
                }
            }

          

            //try
            //{
            //    using (var _unitOfWork = new UnitOfWork())
            //    {
            //        p_Book.IsActive = true;
            //        p_Book.CreateDay = DateTime.Now;


            //        _unitOfWork.BookRepository.Insert(p_Book);
            //        _unitOfWork.Save();
            //        obj = new { StatusCode = 200, data = p_Book };
            //    }



            //}
            //catch (Exception e)
            //{
            //    obj = new { StatusCode = 500, data = new Book() };
            //}
            return Request.CreateResponse(obj);
        }
        [HttpPut]
        public HttpResponseMessage EditBook([FromBody] Book p_Book)
        {
            object obj;

            try
            {
                using (var _unitOfWork = new UnitOfWork())
                {
                    //Book v_obj = _unitOfWork._context.Categories.FirstOrDefault(x => x.BookID == p_Book.BookID);
                    //v_obj.BookName = p_Book.BookName;
                    //v_obj.Description = p_Book.Description;
                    //_unitOfWork.BookRepository.Edit(v_obj);

                    _unitOfWork.Save();
                    obj = new { StatusCode = 200, data = p_Book };
                }



            }
            catch (Exception e)
            {
                obj = new { StatusCode = 500, data = new Book() };
            }
            return Request.CreateResponse(obj);
        }
        [HttpDelete]
        public HttpResponseMessage DeleteBook([FromBody] Book p_Book)
        {
            object obj;

            try
            {
                using (var _unitOfWork = new UnitOfWork())
                {
                    p_Book.IsActive = false;

                    _unitOfWork.BookRepository.Edit(p_Book);
                    _unitOfWork.Save();
                    obj = new { StatusCode = 200, data = p_Book };
                }



            }
            catch (Exception e)
            {
                obj = new { StatusCode = 500, data = new Book() };
            }
            return Request.CreateResponse(obj);
        }
    }
}
