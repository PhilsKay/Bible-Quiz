using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BibleQuiz.Models
{
    public class Quiz
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(500,ErrorMessage ="maxlength of 500 characters ")]
        public string Question { get; set; }
        [Required]
        [StringLength(500, ErrorMessage = "maxlength of 500 characters ")]
        public string Answer { get; set; }
        [Required]
        [DataType(DataType.Date,ErrorMessage ="Input correct date")]
        public string ReleasedDate { get; set; }
    }
}
