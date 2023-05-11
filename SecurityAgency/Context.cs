using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecurityAgency
{
    class Context
    {
        private static dbSecurityAgencyEntities _context;

        public static dbSecurityAgencyEntities GetContext()
        {
            if (_context == null)
            {
                _context = new dbSecurityAgencyEntities();
            }

            return _context;
        }
    }
}
