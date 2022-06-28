﻿using shopping_online.Context;
using shopping_online.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace shopping_online.Controllers.Marketing
{
    //Add blog
    public class AddBlogAdminController : Controller
    {
        DBContext db = new DBContext();
        // GET: AddBlogAdmin
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult uploadFile(HttpPostedFileBase uploadedFiles)
        {
            string returnImagePath = string.Empty;
            string fileName;
            string Extension;
            string imageName;
            string imageSavePath;

            if (uploadedFiles.ContentLength > 0)
            {
                fileName = System.IO.Path.GetFileNameWithoutExtension(uploadedFiles.FileName);
                Extension = System.IO.Path.GetExtension(uploadedFiles.FileName);
                imageName = fileName + DateTime.Now.ToString("yyyyMMddHHmmss");
                imageSavePath = Server.MapPath("/Content/images/") + imageName + Extension;

                uploadedFiles.SaveAs(imageSavePath);
                returnImagePath = "/Content/images/" + imageName + Extension;
            }
            return Json(Convert.ToString(returnImagePath), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Blog entity, string createdate, string modifydate, string images, 
                                    string Title, string Author, string Descriptions, string CreateBy, string Detail, string ModifyBy, string Back_Link)
        {
            if (ModelState.IsValid)
            {
                entity.blog_title = Title;
                entity.blog_author = Author;
                entity.blog_descriptions = Descriptions;
                entity.blog_createby = CreateBy;
                entity.blog_detail = Detail;
                entity.blog_modifyby = ModifyBy;
                entity.blog_back_link = Back_Link;
                entity.blog_createdate = DateTime.ParseExact(createdate, "yyyy-MM-dd", null);
                entity.blog_modifydate = DateTime.ParseExact(modifydate, "yyyy-MM-dd", null);
                entity.blog_images = images;
                db.Blogs.Add(entity);
                db.SaveChanges();
                return RedirectToAction("Index", "BlogAdmin");
            }
            return View("Index");
        }
    }
}