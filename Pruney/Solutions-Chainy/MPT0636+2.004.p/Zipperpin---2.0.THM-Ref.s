%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.cAv6wa0Ocg

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:54 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 104 expanded)
%              Number of leaves         :   15 (  38 expanded)
%              Depth                    :    8
%              Number of atoms          :  544 (1325 expanded)
%              Number of equality atoms :    4 (   6 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(t40_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ ( k6_relat_1 @ B ) ) ) )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ ( k6_relat_1 @ B ) ) ) )
        <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
            & ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t40_funct_1])).

thf('0',plain,
    ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B )
    | ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
    | ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(split,[status(esa)],['2'])).

thf(t21_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ! [C: $i] :
          ( ( ( v1_relat_1 @ C )
            & ( v1_funct_1 @ C ) )
         => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) )
          <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
              & ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ ( k1_relat_1 @ B ) ) ) ) ) ) )).

thf('4',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ~ ( r2_hidden @ X5 @ ( k1_relat_1 @ ( k5_relat_1 @ X4 @ X6 ) ) )
      | ( r2_hidden @ ( k1_funct_1 @ X4 @ X5 ) @ ( k1_relat_1 @ X6 ) )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t21_funct_1])).

thf('5',plain,
    ( ( ~ ( v1_relat_1 @ ( k6_relat_1 @ sk_B ) )
      | ~ ( v1_funct_1 @ ( k6_relat_1 @ sk_B ) )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ ( k1_relat_1 @ ( k6_relat_1 @ sk_B ) ) )
      | ~ ( v1_funct_1 @ sk_C )
      | ~ ( v1_relat_1 @ sk_C ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(fc3_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('6',plain,(
    ! [X2: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('7',plain,(
    ! [X3: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('8',plain,(
    ! [X0: $i] :
      ( ( k1_relat_1 @ ( k6_relat_1 @ X0 ) )
      = X0 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('9',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(demod,[status(thm)],['5','6','7','8','9','10'])).

thf('12',plain,
    ( ~ ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B )
    | ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
    | ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ~ ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B )
   <= ~ ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['12'])).

thf('14',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['11','13'])).

thf('15',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
    | ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ~ ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['12'])).

thf('16',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) ) ),
    inference(split,[status(esa)],['2'])).

thf('17',plain,
    ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B )
   <= ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k1_relat_1 @ ( k6_relat_1 @ X0 ) )
      = X0 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('19',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ~ ( r2_hidden @ X5 @ ( k1_relat_1 @ X4 ) )
      | ~ ( r2_hidden @ ( k1_funct_1 @ X4 @ X5 ) @ ( k1_relat_1 @ X6 ) )
      | ( r2_hidden @ X5 @ ( k1_relat_1 @ ( k5_relat_1 @ X4 @ X6 ) ) )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t21_funct_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ ( k1_funct_1 @ X2 @ X1 ) @ X0 )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k6_relat_1 @ X0 ) )
      | ( r2_hidden @ X1 @ ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) ) )
      | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X2 ) )
      | ~ ( v1_funct_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X2: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('22',plain,(
    ! [X3: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ ( k1_funct_1 @ X2 @ X1 ) @ X0 )
      | ( r2_hidden @ X1 @ ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) ) )
      | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X2 ) )
      | ~ ( v1_funct_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(demod,[status(thm)],['20','21','22'])).

thf('24',plain,
    ( ( ~ ( v1_relat_1 @ sk_C )
      | ~ ( v1_funct_1 @ sk_C )
      | ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
      | ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) )
   <= ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['17','23'])).

thf('25',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,
    ( ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
      | ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) )
   <= ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
   <= ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
      & ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['16','27'])).

thf('29',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(split,[status(esa)],['12'])).

thf('30',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
    | ~ ( r2_hidden @ ( k1_funct_1 @ sk_C @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) ) ),
    inference(split,[status(esa)],['2'])).

thf('32',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(split,[status(esa)],['2'])).

thf('33',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ~ ( r2_hidden @ X5 @ ( k1_relat_1 @ ( k5_relat_1 @ X4 @ X6 ) ) )
      | ( r2_hidden @ X5 @ ( k1_relat_1 @ X4 ) )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t21_funct_1])).

thf('34',plain,
    ( ( ~ ( v1_relat_1 @ ( k6_relat_1 @ sk_B ) )
      | ~ ( v1_funct_1 @ ( k6_relat_1 @ sk_B ) )
      | ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
      | ~ ( v1_funct_1 @ sk_C )
      | ~ ( v1_relat_1 @ sk_C ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X2: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('36',plain,(
    ! [X3: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('37',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,
    ( ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
   <= ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) ) ),
    inference(demod,[status(thm)],['34','35','36','37','38'])).

thf('40',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) ) ),
    inference(split,[status(esa)],['12'])).

thf('41',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) ) )
    | ( r2_hidden @ sk_A @ ( k1_relat_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','14','15','30','31','41'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.cAv6wa0Ocg
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 11:36:52 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.52  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.52  % Solved by: fo/fo7.sh
% 0.21/0.52  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.52  % done 27 iterations in 0.016s
% 0.21/0.52  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.52  % SZS output start Refutation
% 0.21/0.52  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.52  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.52  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.52  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.52  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.52  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.21/0.52  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.52  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.21/0.52  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.52  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.52  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.21/0.52  thf(t40_funct_1, conjecture,
% 0.21/0.52    (![A:$i,B:$i,C:$i]:
% 0.21/0.52     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.52       ( ( r2_hidden @
% 0.21/0.52           A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ ( k6_relat_1 @ B ) ) ) ) <=>
% 0.21/0.52         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.21/0.52           ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ B ) ) ) ))).
% 0.21/0.52  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.52    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.52        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.52          ( ( r2_hidden @
% 0.21/0.52              A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ ( k6_relat_1 @ B ) ) ) ) <=>
% 0.21/0.52            ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.21/0.52              ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ B ) ) ) ) )),
% 0.21/0.52    inference('cnf.neg', [status(esa)], [t40_funct_1])).
% 0.21/0.52  thf('0', plain,
% 0.21/0.52      (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)
% 0.21/0.52        | (r2_hidden @ sk_A @ 
% 0.21/0.52           (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('1', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))),
% 0.21/0.52      inference('split', [status(esa)], ['0'])).
% 0.21/0.52  thf('2', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))
% 0.21/0.52        | (r2_hidden @ sk_A @ 
% 0.21/0.52           (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('3', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('split', [status(esa)], ['2'])).
% 0.21/0.52  thf(t21_funct_1, axiom,
% 0.21/0.52    (![A:$i,B:$i]:
% 0.21/0.52     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.52       ( ![C:$i]:
% 0.21/0.52         ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.52           ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) <=>
% 0.21/0.52             ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.21/0.52               ( r2_hidden @ ( k1_funct_1 @ C @ A ) @ ( k1_relat_1 @ B ) ) ) ) ) ) ))).
% 0.21/0.52  thf('4', plain,
% 0.21/0.52      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.52         (~ (v1_relat_1 @ X4)
% 0.21/0.52          | ~ (v1_funct_1 @ X4)
% 0.21/0.52          | ~ (r2_hidden @ X5 @ (k1_relat_1 @ (k5_relat_1 @ X4 @ X6)))
% 0.21/0.52          | (r2_hidden @ (k1_funct_1 @ X4 @ X5) @ (k1_relat_1 @ X6))
% 0.21/0.52          | ~ (v1_funct_1 @ X6)
% 0.21/0.52          | ~ (v1_relat_1 @ X6))),
% 0.21/0.52      inference('cnf', [status(esa)], [t21_funct_1])).
% 0.21/0.52  thf('5', plain,
% 0.21/0.52      (((~ (v1_relat_1 @ (k6_relat_1 @ sk_B))
% 0.21/0.52         | ~ (v1_funct_1 @ (k6_relat_1 @ sk_B))
% 0.21/0.52         | (r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ 
% 0.21/0.52            (k1_relat_1 @ (k6_relat_1 @ sk_B)))
% 0.21/0.52         | ~ (v1_funct_1 @ sk_C)
% 0.21/0.52         | ~ (v1_relat_1 @ sk_C)))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['3', '4'])).
% 0.21/0.52  thf(fc3_funct_1, axiom,
% 0.21/0.52    (![A:$i]:
% 0.21/0.52     ( ( v1_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.21/0.52       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.21/0.52  thf('6', plain, (![X2 : $i]: (v1_relat_1 @ (k6_relat_1 @ X2))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf('7', plain, (![X3 : $i]: (v1_funct_1 @ (k6_relat_1 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf(t71_relat_1, axiom,
% 0.21/0.52    (![A:$i]:
% 0.21/0.52     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.21/0.52       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.21/0.52  thf('8', plain, (![X0 : $i]: ((k1_relat_1 @ (k6_relat_1 @ X0)) = (X0))),
% 0.21/0.52      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.21/0.52  thf('9', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('10', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('11', plain,
% 0.21/0.52      (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('demod', [status(thm)], ['5', '6', '7', '8', '9', '10'])).
% 0.21/0.52  thf('12', plain,
% 0.21/0.52      ((~ (r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)
% 0.21/0.52        | ~ (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))
% 0.21/0.52        | ~ (r2_hidden @ sk_A @ 
% 0.21/0.52             (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('13', plain,
% 0.21/0.52      ((~ (r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))
% 0.21/0.52         <= (~ ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)))),
% 0.21/0.52      inference('split', [status(esa)], ['12'])).
% 0.21/0.52  thf('14', plain,
% 0.21/0.52      (~
% 0.21/0.52       ((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))),
% 0.21/0.52      inference('sup-', [status(thm)], ['11', '13'])).
% 0.21/0.52  thf('15', plain,
% 0.21/0.52      (~ ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))) | 
% 0.21/0.52       ~
% 0.21/0.52       ((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ~ ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))),
% 0.21/0.52      inference('split', [status(esa)], ['12'])).
% 0.21/0.52  thf('16', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C)))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))))),
% 0.21/0.52      inference('split', [status(esa)], ['2'])).
% 0.21/0.52  thf('17', plain,
% 0.21/0.52      (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))
% 0.21/0.52         <= (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)))),
% 0.21/0.52      inference('split', [status(esa)], ['0'])).
% 0.21/0.52  thf('18', plain, (![X0 : $i]: ((k1_relat_1 @ (k6_relat_1 @ X0)) = (X0))),
% 0.21/0.52      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.21/0.52  thf('19', plain,
% 0.21/0.52      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.52         (~ (v1_relat_1 @ X4)
% 0.21/0.52          | ~ (v1_funct_1 @ X4)
% 0.21/0.52          | ~ (r2_hidden @ X5 @ (k1_relat_1 @ X4))
% 0.21/0.52          | ~ (r2_hidden @ (k1_funct_1 @ X4 @ X5) @ (k1_relat_1 @ X6))
% 0.21/0.52          | (r2_hidden @ X5 @ (k1_relat_1 @ (k5_relat_1 @ X4 @ X6)))
% 0.21/0.52          | ~ (v1_funct_1 @ X6)
% 0.21/0.52          | ~ (v1_relat_1 @ X6))),
% 0.21/0.52      inference('cnf', [status(esa)], [t21_funct_1])).
% 0.21/0.52  thf('20', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.52         (~ (r2_hidden @ (k1_funct_1 @ X2 @ X1) @ X0)
% 0.21/0.52          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.21/0.52          | ~ (v1_funct_1 @ (k6_relat_1 @ X0))
% 0.21/0.52          | (r2_hidden @ X1 @ 
% 0.21/0.52             (k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0))))
% 0.21/0.52          | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X2))
% 0.21/0.52          | ~ (v1_funct_1 @ X2)
% 0.21/0.52          | ~ (v1_relat_1 @ X2))),
% 0.21/0.52      inference('sup-', [status(thm)], ['18', '19'])).
% 0.21/0.52  thf('21', plain, (![X2 : $i]: (v1_relat_1 @ (k6_relat_1 @ X2))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf('22', plain, (![X3 : $i]: (v1_funct_1 @ (k6_relat_1 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf('23', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.52         (~ (r2_hidden @ (k1_funct_1 @ X2 @ X1) @ X0)
% 0.21/0.52          | (r2_hidden @ X1 @ 
% 0.21/0.52             (k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0))))
% 0.21/0.52          | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X2))
% 0.21/0.52          | ~ (v1_funct_1 @ X2)
% 0.21/0.52          | ~ (v1_relat_1 @ X2))),
% 0.21/0.52      inference('demod', [status(thm)], ['20', '21', '22'])).
% 0.21/0.52  thf('24', plain,
% 0.21/0.52      (((~ (v1_relat_1 @ sk_C)
% 0.21/0.52         | ~ (v1_funct_1 @ sk_C)
% 0.21/0.52         | ~ (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))
% 0.21/0.52         | (r2_hidden @ sk_A @ 
% 0.21/0.52            (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))
% 0.21/0.52         <= (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)))),
% 0.21/0.52      inference('sup-', [status(thm)], ['17', '23'])).
% 0.21/0.52  thf('25', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('26', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('27', plain,
% 0.21/0.52      (((~ (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))
% 0.21/0.52         | (r2_hidden @ sk_A @ 
% 0.21/0.52            (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))
% 0.21/0.52         <= (((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)))),
% 0.21/0.52      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.21/0.52  thf('28', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))) & 
% 0.21/0.52             ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B)))),
% 0.21/0.52      inference('sup-', [status(thm)], ['16', '27'])).
% 0.21/0.52  thf('29', plain,
% 0.21/0.52      ((~ (r2_hidden @ sk_A @ 
% 0.21/0.52           (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))
% 0.21/0.52         <= (~
% 0.21/0.52             ((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('split', [status(esa)], ['12'])).
% 0.21/0.52  thf('30', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ~ ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))) | 
% 0.21/0.52       ~ ((r2_hidden @ (k1_funct_1 @ sk_C @ sk_A) @ sk_B))),
% 0.21/0.52      inference('sup-', [status(thm)], ['28', '29'])).
% 0.21/0.52  thf('31', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C)))),
% 0.21/0.52      inference('split', [status(esa)], ['2'])).
% 0.21/0.52  thf('32', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)))))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('split', [status(esa)], ['2'])).
% 0.21/0.52  thf('33', plain,
% 0.21/0.52      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.52         (~ (v1_relat_1 @ X4)
% 0.21/0.52          | ~ (v1_funct_1 @ X4)
% 0.21/0.52          | ~ (r2_hidden @ X5 @ (k1_relat_1 @ (k5_relat_1 @ X4 @ X6)))
% 0.21/0.52          | (r2_hidden @ X5 @ (k1_relat_1 @ X4))
% 0.21/0.52          | ~ (v1_funct_1 @ X6)
% 0.21/0.52          | ~ (v1_relat_1 @ X6))),
% 0.21/0.52      inference('cnf', [status(esa)], [t21_funct_1])).
% 0.21/0.52  thf('34', plain,
% 0.21/0.52      (((~ (v1_relat_1 @ (k6_relat_1 @ sk_B))
% 0.21/0.52         | ~ (v1_funct_1 @ (k6_relat_1 @ sk_B))
% 0.21/0.52         | (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))
% 0.21/0.52         | ~ (v1_funct_1 @ sk_C)
% 0.21/0.52         | ~ (v1_relat_1 @ sk_C)))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['32', '33'])).
% 0.21/0.52  thf('35', plain, (![X2 : $i]: (v1_relat_1 @ (k6_relat_1 @ X2))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf('36', plain, (![X3 : $i]: (v1_funct_1 @ (k6_relat_1 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.21/0.52  thf('37', plain, ((v1_funct_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('38', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('39', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C)))
% 0.21/0.52         <= (((r2_hidden @ sk_A @ 
% 0.21/0.52               (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))))),
% 0.21/0.52      inference('demod', [status(thm)], ['34', '35', '36', '37', '38'])).
% 0.21/0.52  thf('40', plain,
% 0.21/0.52      ((~ (r2_hidden @ sk_A @ (k1_relat_1 @ sk_C)))
% 0.21/0.52         <= (~ ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C))))),
% 0.21/0.52      inference('split', [status(esa)], ['12'])).
% 0.21/0.52  thf('41', plain,
% 0.21/0.52      (~
% 0.21/0.52       ((r2_hidden @ sk_A @ 
% 0.21/0.52         (k1_relat_1 @ (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B))))) | 
% 0.21/0.52       ((r2_hidden @ sk_A @ (k1_relat_1 @ sk_C)))),
% 0.21/0.52      inference('sup-', [status(thm)], ['39', '40'])).
% 0.21/0.52  thf('42', plain, ($false),
% 0.21/0.52      inference('sat_resolution*', [status(thm)],
% 0.21/0.52                ['1', '14', '15', '30', '31', '41'])).
% 0.21/0.52  
% 0.21/0.52  % SZS output end Refutation
% 0.21/0.52  
% 0.21/0.53  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
