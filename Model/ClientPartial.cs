using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mordochka.Model
{
    public partial class ClientService
    {
        public string CountVisit
        {
            get
            {
                return AppData.db.ClientService.Where(x => x.ClientID == this.ID).Count().ToString();
                ;
            } 
        }
    }
}
