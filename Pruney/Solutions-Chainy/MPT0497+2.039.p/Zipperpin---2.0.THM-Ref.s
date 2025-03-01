%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.FkU0Af4mU5

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:41:11 EST 2020

% Result     : Theorem 0.19s
% Output     : Refutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   63 (  83 expanded)
%              Number of leaves         :   25 (  33 expanded)
%              Depth                    :   11
%              Number of atoms          :  423 ( 635 expanded)
%              Number of equality atoms :   38 (  58 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(t95_relat_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( ( k7_relat_1 @ B @ A )
          = k1_xboole_0 )
      <=> ( r1_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ( ( k7_relat_1 @ B @ A )
            = k1_xboole_0 )
        <=> ( r1_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t95_relat_1])).

thf('0',plain,
    ( ~ ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['2'])).

thf(t90_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('4',plain,(
    ! [X19: $i,X20: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X19 @ X20 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X19 ) @ X20 ) )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf('5',plain,
    ( ( ( ( k1_relat_1 @ k1_xboole_0 )
        = ( k3_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_B ) )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('6',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('7',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( k1_xboole_0
      = ( k3_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('9',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_xboole_0 @ X2 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X2 ) @ ( k3_xboole_0 @ X2 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('10',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_A @ ( k1_relat_1 @ sk_B ) ) @ k1_xboole_0 )
      | ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('11',plain,(
    ! [X6: $i] :
      ( r1_xboole_0 @ X6 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf(t55_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        & ( r2_hidden @ A @ C ) ) )).

thf('12',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_tarski @ X9 @ X10 ) @ X11 )
      | ~ ( r2_hidden @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t55_zfmisc_1])).

thf('13',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(clc,[status(thm)],['10','13'])).

thf('15',plain,
    ( ~ ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
   <= ~ ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('16',plain,
    ( ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['2'])).

thf(t94_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k7_relat_1 @ B @ A )
        = ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) ) ) )).

thf('18',plain,(
    ! [X21: $i,X22: $i] :
      ( ( ( k7_relat_1 @ X22 @ X21 )
        = ( k5_relat_1 @ ( k6_relat_1 @ X21 ) @ X22 ) )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t94_relat_1])).

thf('19',plain,
    ( ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('21',plain,
    ( ( r1_xboole_0 @ sk_A @ ( k1_relat_1 @ sk_B ) )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('22',plain,(
    ! [X18: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X18 ) )
      = X18 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf(t67_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
           => ( ( k5_relat_1 @ A @ B )
              = k1_xboole_0 ) ) ) ) )).

thf('23',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( v1_relat_1 @ X15 )
      | ( ( k5_relat_1 @ X16 @ X15 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ ( k2_relat_1 @ X16 ) @ ( k1_relat_1 @ X15 ) )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t67_relat_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ ( k1_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf(dt_k6_relat_1,axiom,(
    ! [A: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ A ) ) )).

thf('25',plain,(
    ! [X14: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relat_1])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ ( k1_relat_1 @ X1 ) )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['24','25'])).

thf('27',plain,
    ( ( ~ ( v1_relat_1 @ sk_B )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B )
        = k1_xboole_0 ) )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['21','26'])).

thf('28',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,
    ( ( ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B )
      = k1_xboole_0 )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,
    ( ( ( ( k7_relat_1 @ sk_B @ sk_A )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ sk_B ) )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sup+',[status(thm)],['18','29'])).

thf('31',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,
    ( ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 )
   <= ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['30','31'])).

thf('33',plain,
    ( ( ( k7_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 )
   <= ( ( k7_relat_1 @ sk_B @ sk_A )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('34',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( ( ( k7_relat_1 @ sk_B @ sk_A )
       != k1_xboole_0 )
      & ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,
    ( ~ ( r1_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ( ( k7_relat_1 @ sk_B @ sk_A )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['34'])).

thf('36',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','16','17','35'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.FkU0Af4mU5
% 0.13/0.33  % Computer   : n005.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:11:48 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.19/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.19/0.46  % Solved by: fo/fo7.sh
% 0.19/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.19/0.46  % done 43 iterations in 0.019s
% 0.19/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.19/0.46  % SZS output start Refutation
% 0.19/0.46  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.19/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.19/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.19/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.19/0.46  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.19/0.46  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.19/0.46  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.19/0.46  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.19/0.46  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.19/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.19/0.46  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.19/0.46  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.19/0.46  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.19/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.19/0.46  thf(t95_relat_1, conjecture,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ B ) =>
% 0.19/0.46       ( ( ( k7_relat_1 @ B @ A ) = ( k1_xboole_0 ) ) <=>
% 0.19/0.46         ( r1_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.19/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.19/0.46    (~( ![A:$i,B:$i]:
% 0.19/0.46        ( ( v1_relat_1 @ B ) =>
% 0.19/0.46          ( ( ( k7_relat_1 @ B @ A ) = ( k1_xboole_0 ) ) <=>
% 0.19/0.46            ( r1_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) )),
% 0.19/0.46    inference('cnf.neg', [status(esa)], [t95_relat_1])).
% 0.19/0.46  thf('0', plain,
% 0.19/0.46      ((~ (r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)
% 0.19/0.46        | ((k7_relat_1 @ sk_B @ sk_A) != (k1_xboole_0)))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('1', plain,
% 0.19/0.46      (~ ((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)) | 
% 0.19/0.46       ~ (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.19/0.46      inference('split', [status(esa)], ['0'])).
% 0.19/0.46  thf('2', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)
% 0.19/0.46        | ((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('3', plain,
% 0.19/0.46      ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))
% 0.19/0.46         <= ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('split', [status(esa)], ['2'])).
% 0.19/0.46  thf(t90_relat_1, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ B ) =>
% 0.19/0.46       ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) =
% 0.19/0.46         ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.19/0.46  thf('4', plain,
% 0.19/0.46      (![X19 : $i, X20 : $i]:
% 0.19/0.46         (((k1_relat_1 @ (k7_relat_1 @ X19 @ X20))
% 0.19/0.46            = (k3_xboole_0 @ (k1_relat_1 @ X19) @ X20))
% 0.19/0.46          | ~ (v1_relat_1 @ X19))),
% 0.19/0.46      inference('cnf', [status(esa)], [t90_relat_1])).
% 0.19/0.46  thf('5', plain,
% 0.19/0.46      (((((k1_relat_1 @ k1_xboole_0)
% 0.19/0.46           = (k3_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A))
% 0.19/0.46         | ~ (v1_relat_1 @ sk_B)))
% 0.19/0.46         <= ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('sup+', [status(thm)], ['3', '4'])).
% 0.19/0.46  thf(t60_relat_1, axiom,
% 0.19/0.46    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.19/0.46     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.19/0.46  thf('6', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.19/0.46      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.19/0.46  thf('7', plain, ((v1_relat_1 @ sk_B)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('8', plain,
% 0.19/0.46      ((((k1_xboole_0) = (k3_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))
% 0.19/0.46         <= ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.19/0.46  thf(t4_xboole_0, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.19/0.46            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.19/0.46       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.19/0.46            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.19/0.46  thf('9', plain,
% 0.19/0.46      (![X2 : $i, X3 : $i]:
% 0.19/0.46         ((r1_xboole_0 @ X2 @ X3)
% 0.19/0.46          | (r2_hidden @ (sk_C @ X3 @ X2) @ (k3_xboole_0 @ X2 @ X3)))),
% 0.19/0.46      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.19/0.46  thf('10', plain,
% 0.19/0.46      ((((r2_hidden @ (sk_C @ sk_A @ (k1_relat_1 @ sk_B)) @ k1_xboole_0)
% 0.19/0.46         | (r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))
% 0.19/0.46         <= ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('sup+', [status(thm)], ['8', '9'])).
% 0.19/0.46  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.19/0.46  thf('11', plain, (![X6 : $i]: (r1_xboole_0 @ X6 @ k1_xboole_0)),
% 0.19/0.46      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.19/0.46  thf(t55_zfmisc_1, axiom,
% 0.19/0.46    (![A:$i,B:$i,C:$i]:
% 0.19/0.46     ( ~( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) & ( r2_hidden @ A @ C ) ) ))).
% 0.19/0.46  thf('12', plain,
% 0.19/0.46      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ (k2_tarski @ X9 @ X10) @ X11)
% 0.19/0.46          | ~ (r2_hidden @ X9 @ X11))),
% 0.19/0.46      inference('cnf', [status(esa)], [t55_zfmisc_1])).
% 0.19/0.46  thf('13', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.19/0.46      inference('sup-', [status(thm)], ['11', '12'])).
% 0.19/0.46  thf('14', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A))
% 0.19/0.46         <= ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('clc', [status(thm)], ['10', '13'])).
% 0.19/0.46  thf('15', plain,
% 0.19/0.46      ((~ (r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A))
% 0.19/0.46         <= (~ ((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('split', [status(esa)], ['0'])).
% 0.19/0.46  thf('16', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)) | 
% 0.19/0.46       ~ (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['14', '15'])).
% 0.19/0.46  thf('17', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)) | 
% 0.19/0.46       (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.19/0.46      inference('split', [status(esa)], ['2'])).
% 0.19/0.46  thf(t94_relat_1, axiom,
% 0.19/0.46    (![A:$i,B:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ B ) =>
% 0.19/0.46       ( ( k7_relat_1 @ B @ A ) = ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) ) ))).
% 0.19/0.46  thf('18', plain,
% 0.19/0.46      (![X21 : $i, X22 : $i]:
% 0.19/0.46         (((k7_relat_1 @ X22 @ X21) = (k5_relat_1 @ (k6_relat_1 @ X21) @ X22))
% 0.19/0.46          | ~ (v1_relat_1 @ X22))),
% 0.19/0.46      inference('cnf', [status(esa)], [t94_relat_1])).
% 0.19/0.46  thf('19', plain,
% 0.19/0.46      (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('split', [status(esa)], ['2'])).
% 0.19/0.46  thf(symmetry_r1_xboole_0, axiom,
% 0.19/0.46    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.19/0.46  thf('20', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.19/0.46      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.19/0.46  thf('21', plain,
% 0.19/0.46      (((r1_xboole_0 @ sk_A @ (k1_relat_1 @ sk_B)))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['19', '20'])).
% 0.19/0.46  thf(t71_relat_1, axiom,
% 0.19/0.46    (![A:$i]:
% 0.19/0.46     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.19/0.46       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.19/0.46  thf('22', plain, (![X18 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X18)) = (X18))),
% 0.19/0.46      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.19/0.46  thf(t67_relat_1, axiom,
% 0.19/0.46    (![A:$i]:
% 0.19/0.46     ( ( v1_relat_1 @ A ) =>
% 0.19/0.46       ( ![B:$i]:
% 0.19/0.46         ( ( v1_relat_1 @ B ) =>
% 0.19/0.46           ( ( r1_xboole_0 @ ( k2_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) =>
% 0.19/0.46             ( ( k5_relat_1 @ A @ B ) = ( k1_xboole_0 ) ) ) ) ) ))).
% 0.19/0.46  thf('23', plain,
% 0.19/0.46      (![X15 : $i, X16 : $i]:
% 0.19/0.46         (~ (v1_relat_1 @ X15)
% 0.19/0.46          | ((k5_relat_1 @ X16 @ X15) = (k1_xboole_0))
% 0.19/0.46          | ~ (r1_xboole_0 @ (k2_relat_1 @ X16) @ (k1_relat_1 @ X15))
% 0.19/0.46          | ~ (v1_relat_1 @ X16))),
% 0.19/0.46      inference('cnf', [status(esa)], [t67_relat_1])).
% 0.19/0.46  thf('24', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ X0 @ (k1_relat_1 @ X1))
% 0.19/0.46          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.19/0.46          | ((k5_relat_1 @ (k6_relat_1 @ X0) @ X1) = (k1_xboole_0))
% 0.19/0.46          | ~ (v1_relat_1 @ X1))),
% 0.19/0.46      inference('sup-', [status(thm)], ['22', '23'])).
% 0.19/0.46  thf(dt_k6_relat_1, axiom, (![A:$i]: ( v1_relat_1 @ ( k6_relat_1 @ A ) ))).
% 0.19/0.46  thf('25', plain, (![X14 : $i]: (v1_relat_1 @ (k6_relat_1 @ X14))),
% 0.19/0.46      inference('cnf', [status(esa)], [dt_k6_relat_1])).
% 0.19/0.46  thf('26', plain,
% 0.19/0.46      (![X0 : $i, X1 : $i]:
% 0.19/0.46         (~ (r1_xboole_0 @ X0 @ (k1_relat_1 @ X1))
% 0.19/0.46          | ((k5_relat_1 @ (k6_relat_1 @ X0) @ X1) = (k1_xboole_0))
% 0.19/0.46          | ~ (v1_relat_1 @ X1))),
% 0.19/0.46      inference('demod', [status(thm)], ['24', '25'])).
% 0.19/0.46  thf('27', plain,
% 0.19/0.46      (((~ (v1_relat_1 @ sk_B)
% 0.19/0.46         | ((k5_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B) = (k1_xboole_0))))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['21', '26'])).
% 0.19/0.46  thf('28', plain, ((v1_relat_1 @ sk_B)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('29', plain,
% 0.19/0.46      ((((k5_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B) = (k1_xboole_0)))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('demod', [status(thm)], ['27', '28'])).
% 0.19/0.46  thf('30', plain,
% 0.19/0.46      (((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)) | ~ (v1_relat_1 @ sk_B)))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('sup+', [status(thm)], ['18', '29'])).
% 0.19/0.46  thf('31', plain, ((v1_relat_1 @ sk_B)),
% 0.19/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.46  thf('32', plain,
% 0.19/0.46      ((((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))
% 0.19/0.46         <= (((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('demod', [status(thm)], ['30', '31'])).
% 0.19/0.46  thf('33', plain,
% 0.19/0.46      ((((k7_relat_1 @ sk_B @ sk_A) != (k1_xboole_0)))
% 0.19/0.46         <= (~ (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))))),
% 0.19/0.46      inference('split', [status(esa)], ['0'])).
% 0.19/0.46  thf('34', plain,
% 0.19/0.46      ((((k1_xboole_0) != (k1_xboole_0)))
% 0.19/0.46         <= (~ (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0))) & 
% 0.19/0.46             ((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 0.19/0.46      inference('sup-', [status(thm)], ['32', '33'])).
% 0.19/0.46  thf('35', plain,
% 0.19/0.46      (~ ((r1_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_A)) | 
% 0.19/0.46       (((k7_relat_1 @ sk_B @ sk_A) = (k1_xboole_0)))),
% 0.19/0.46      inference('simplify', [status(thm)], ['34'])).
% 0.19/0.46  thf('36', plain, ($false),
% 0.19/0.46      inference('sat_resolution*', [status(thm)], ['1', '16', '17', '35'])).
% 0.19/0.46  
% 0.19/0.46  % SZS output end Refutation
% 0.19/0.46  
% 0.19/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
