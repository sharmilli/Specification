using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskUtility
{
    public class File
    {
        public int FileId { get; set; }

        public string FileName { get; set; }

        public int FilePathId { get; set; }

        public bool IsImport { get; set; }
    }
}
