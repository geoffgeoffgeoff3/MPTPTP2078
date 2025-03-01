%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.xJs8Wlmy1E

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:24:39 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   45 (  93 expanded)
%              Number of leaves         :   10 (  26 expanded)
%              Depth                    :   11
%              Number of atoms          :  318 ( 779 expanded)
%              Number of equality atoms :   40 ( 108 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(t66_xboole_1,conjecture,(
    ! [A: $i] :
      ( ~ ( ( A != k1_xboole_0 )
          & ( r1_xboole_0 @ A @ A ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ A )
          & ( A = k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( ( A != k1_xboole_0 )
            & ( r1_xboole_0 @ A @ A ) )
        & ~ ( ~ ( r1_xboole_0 @ A @ A )
            & ( A = k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t66_xboole_1])).

thf('0',plain,
    ( ( r1_xboole_0 @ sk_A @ sk_A )
    | ( sk_A = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r1_xboole_0 @ sk_A @ sk_A )
   <= ( r1_xboole_0 @ sk_A @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ( sk_A != k1_xboole_0 )
    | ~ ( r1_xboole_0 @ sk_A @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( sk_A != k1_xboole_0 )
    | ~ ( r1_xboole_0 @ sk_A @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('4',plain,(
    ! [X9: $i] :
      ( ( k3_xboole_0 @ X9 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('5',plain,(
    ! [X6: $i,X8: $i] :
      ( ( r1_xboole_0 @ X6 @ X8 )
      | ( ( k3_xboole_0 @ X6 @ X8 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ X0 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('9',plain,
    ( ~ ( r1_xboole_0 @ sk_A @ sk_A )
   <= ~ ( r1_xboole_0 @ sk_A @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf('10',plain,
    ( ~ ( r1_xboole_0 @ sk_A @ k1_xboole_0 )
   <= ( ~ ( r1_xboole_0 @ sk_A @ sk_A )
      & ( sk_A = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('12',plain,
    ( ~ ( r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0 )
   <= ( ~ ( r1_xboole_0 @ sk_A @ sk_A )
      & ( sk_A = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,
    ( ( r1_xboole_0 @ sk_A @ sk_A )
    | ( sk_A != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['7','12'])).

thf('14',plain,
    ( ( r1_xboole_0 @ sk_A @ sk_A )
    | ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('15',plain,(
    r1_xboole_0 @ sk_A @ sk_A ),
    inference('sat_resolution*',[status(thm)],['3','13','14'])).

thf('16',plain,(
    r1_xboole_0 @ sk_A @ sk_A ),
    inference(simpl_trail,[status(thm)],['1','15'])).

thf('17',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k3_xboole_0 @ X6 @ X7 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('18',plain,
    ( ( k3_xboole_0 @ sk_A @ sk_A )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['16','17'])).

thf(d4_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k3_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ( r2_hidden @ D @ B ) ) ) ) )).

thf('19',plain,(
    ! [X1: $i,X2: $i,X5: $i] :
      ( ( X5
        = ( k3_xboole_0 @ X1 @ X2 ) )
      | ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X2 )
      | ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['19'])).

thf('22',plain,(
    ! [X1: $i,X2: $i,X5: $i] :
      ( ( X5
        = ( k3_xboole_0 @ X1 @ X2 ) )
      | ~ ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X2 )
      | ~ ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X1 )
      | ~ ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('23',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ~ ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X1 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X1 )
      | ~ ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['19'])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X1 ) ) ),
    inference(clc,[status(thm)],['24','25'])).

thf('27',plain,(
    ! [X0: $i] :
      ( ( X0
        = ( k3_xboole_0 @ X0 @ X0 ) )
      | ( X0
        = ( k3_xboole_0 @ X0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['20','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( X0
      = ( k3_xboole_0 @ X0 @ X0 ) ) ),
    inference(simplify,[status(thm)],['27'])).

thf('29',plain,(
    sk_A = k1_xboole_0 ),
    inference(demod,[status(thm)],['18','28'])).

thf('30',plain,
    ( ( sk_A != k1_xboole_0 )
   <= ( sk_A != k1_xboole_0 ) ),
    inference(split,[status(esa)],['2'])).

thf('31',plain,(
    sk_A != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['3','13'])).

thf('32',plain,(
    sk_A != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['30','31'])).

thf('33',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['29','32'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.xJs8Wlmy1E
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:58:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 32 iterations in 0.020s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.49  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.21/0.49  thf(t66_xboole_1, conjecture,
% 0.21/0.49    (![A:$i]:
% 0.21/0.49     ( ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( r1_xboole_0 @ A @ A ) ) ) & 
% 0.21/0.49       ( ~( ( ~( r1_xboole_0 @ A @ A ) ) & ( ( A ) = ( k1_xboole_0 ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i]:
% 0.21/0.49        ( ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( r1_xboole_0 @ A @ A ) ) ) & 
% 0.21/0.49          ( ~( ( ~( r1_xboole_0 @ A @ A ) ) & ( ( A ) = ( k1_xboole_0 ) ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t66_xboole_1])).
% 0.21/0.49  thf('0', plain, (((r1_xboole_0 @ sk_A @ sk_A) | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('1', plain,
% 0.21/0.49      (((r1_xboole_0 @ sk_A @ sk_A)) <= (((r1_xboole_0 @ sk_A @ sk_A)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      ((((sk_A) != (k1_xboole_0)) | ~ (r1_xboole_0 @ sk_A @ sk_A))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      (~ (((sk_A) = (k1_xboole_0))) | ~ ((r1_xboole_0 @ sk_A @ sk_A))),
% 0.21/0.49      inference('split', [status(esa)], ['2'])).
% 0.21/0.49  thf(t2_boole, axiom,
% 0.21/0.49    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      (![X9 : $i]: ((k3_xboole_0 @ X9 @ k1_xboole_0) = (k1_xboole_0))),
% 0.21/0.49      inference('cnf', [status(esa)], [t2_boole])).
% 0.21/0.49  thf(d7_xboole_0, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.21/0.49       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.21/0.49  thf('5', plain,
% 0.21/0.49      (![X6 : $i, X8 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ X6 @ X8) | ((k3_xboole_0 @ X6 @ X8) != (k1_xboole_0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.21/0.49  thf('6', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (((k1_xboole_0) != (k1_xboole_0)) | (r1_xboole_0 @ X0 @ k1_xboole_0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.49  thf('7', plain, (![X0 : $i]: (r1_xboole_0 @ X0 @ k1_xboole_0)),
% 0.21/0.49      inference('simplify', [status(thm)], ['6'])).
% 0.21/0.49  thf('8', plain, ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ sk_A @ sk_A)) <= (~ ((r1_xboole_0 @ sk_A @ sk_A)))),
% 0.21/0.49      inference('split', [status(esa)], ['2'])).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ sk_A @ k1_xboole_0))
% 0.21/0.49         <= (~ ((r1_xboole_0 @ sk_A @ sk_A)) & (((sk_A) = (k1_xboole_0))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['8', '9'])).
% 0.21/0.49  thf('11', plain,
% 0.21/0.49      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0))
% 0.21/0.49         <= (~ ((r1_xboole_0 @ sk_A @ sk_A)) & (((sk_A) = (k1_xboole_0))))),
% 0.21/0.49      inference('demod', [status(thm)], ['10', '11'])).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (((r1_xboole_0 @ sk_A @ sk_A)) | ~ (((sk_A) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['7', '12'])).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      (((r1_xboole_0 @ sk_A @ sk_A)) | (((sk_A) = (k1_xboole_0)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('15', plain, (((r1_xboole_0 @ sk_A @ sk_A))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['3', '13', '14'])).
% 0.21/0.49  thf('16', plain, ((r1_xboole_0 @ sk_A @ sk_A)),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['1', '15'])).
% 0.21/0.49  thf('17', plain,
% 0.21/0.49      (![X6 : $i, X7 : $i]:
% 0.21/0.49         (((k3_xboole_0 @ X6 @ X7) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X6 @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.21/0.49  thf('18', plain, (((k3_xboole_0 @ sk_A @ sk_A) = (k1_xboole_0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['16', '17'])).
% 0.21/0.49  thf(d4_xboole_0, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ( ( C ) = ( k3_xboole_0 @ A @ B ) ) <=>
% 0.21/0.49       ( ![D:$i]:
% 0.21/0.49         ( ( r2_hidden @ D @ C ) <=>
% 0.21/0.49           ( ( r2_hidden @ D @ A ) & ( r2_hidden @ D @ B ) ) ) ) ))).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (![X1 : $i, X2 : $i, X5 : $i]:
% 0.21/0.49         (((X5) = (k3_xboole_0 @ X1 @ X2))
% 0.21/0.49          | (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X2)
% 0.21/0.49          | (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X5))),
% 0.21/0.49      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.49          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.49      inference('eq_fact', [status(thm)], ['19'])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.49          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.49      inference('eq_fact', [status(thm)], ['19'])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      (![X1 : $i, X2 : $i, X5 : $i]:
% 0.21/0.49         (((X5) = (k3_xboole_0 @ X1 @ X2))
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X2)
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X1)
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X5))),
% 0.21/0.49      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.21/0.49  thf('23', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((X0) = (k3_xboole_0 @ X1 @ X0))
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X1)
% 0.21/0.49          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['21', '22'])).
% 0.21/0.49  thf('24', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X1)
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.49          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['23'])).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.49          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.49      inference('eq_fact', [status(thm)], ['19'])).
% 0.21/0.49  thf('26', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((X0) = (k3_xboole_0 @ X1 @ X0))
% 0.21/0.49          | ~ (r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X1))),
% 0.21/0.49      inference('clc', [status(thm)], ['24', '25'])).
% 0.21/0.49  thf('27', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (((X0) = (k3_xboole_0 @ X0 @ X0)) | ((X0) = (k3_xboole_0 @ X0 @ X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['20', '26'])).
% 0.21/0.49  thf('28', plain, (![X0 : $i]: ((X0) = (k3_xboole_0 @ X0 @ X0))),
% 0.21/0.49      inference('simplify', [status(thm)], ['27'])).
% 0.21/0.49  thf('29', plain, (((sk_A) = (k1_xboole_0))),
% 0.21/0.49      inference('demod', [status(thm)], ['18', '28'])).
% 0.21/0.49  thf('30', plain,
% 0.21/0.49      ((((sk_A) != (k1_xboole_0))) <= (~ (((sk_A) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['2'])).
% 0.21/0.49  thf('31', plain, (~ (((sk_A) = (k1_xboole_0)))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['3', '13'])).
% 0.21/0.49  thf('32', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['30', '31'])).
% 0.21/0.49  thf('33', plain, ($false),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['29', '32'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
