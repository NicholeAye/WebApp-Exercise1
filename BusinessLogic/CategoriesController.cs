using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entities;


namespace BusinessLogic
{
    public class CategoriesController
    {
        CategoriesDataController dataaccess;
        public CategoriesController()
        {
            dataaccess = new CategoriesDataController();
        }

        public int Insert(xsdCodeTest.CategoriesRow row)
        {
            return dataaccess.Insert(row);
        }
        public int Update(xsdCodeTest.CategoriesRow row)
        {
            return dataaccess.Update(row);
        }

        public int Delete(xsdCodeTest.CategoriesRow row)
        {
            return dataaccess.Delete(row);
        }
    }

}

