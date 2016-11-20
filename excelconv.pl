sub excelpos2ltr
{my($oldcol)=@_; # Col starts at 0='A'
    my($procname,$numeric,$ltr,$num2,$outs);

    $procname="excelpos2ltr";

    # Alt method 4.
    # $numeric = $oldcol % 26;
    # $ltr = chr(65 + $numeric);
    # #$num2 = intval($oldcol / 26); # old line
    # $num2 = int($oldcol / 26);
    # if ($num2 > 0)
    #     {
    #         $outs=excelpos2ltr($num2 - 1) . $ltr;
    #             }
    #             else
    #                 {
    #                     $outs=$ltr;
    #                         }
    #                         return $outs;
    #                         }
