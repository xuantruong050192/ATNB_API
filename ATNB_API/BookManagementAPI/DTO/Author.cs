﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    using System;
    using System.Collections.Generic;

    public partial class Author
    {
      
        public Author()
        {
            this.Books = new HashSet<Book>();
        }
        
        public int AuthorID { get; set; }
        public string AuthorName { get; set; }
        public string History { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Book> Books { get; set; }
    }
}