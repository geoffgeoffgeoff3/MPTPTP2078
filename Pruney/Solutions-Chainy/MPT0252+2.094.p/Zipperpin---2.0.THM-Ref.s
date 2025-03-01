%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.dHYcBY8Pgf

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:32:28 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   53 (  63 expanded)
%              Number of leaves         :   22 (  28 expanded)
%              Depth                    :   10
%              Number of atoms          :  326 ( 430 expanded)
%              Number of equality atoms :   20 (  28 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(r2_xboole_0_type,type,(
    r2_xboole_0: $i > $i > $o )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t47_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) @ C )
     => ( r2_hidden @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( r1_tarski @ ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) @ C )
       => ( r2_hidden @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t47_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_A @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C ) @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d8_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_xboole_0 @ A @ B )
    <=> ( ( r1_tarski @ A @ B )
        & ( A != B ) ) ) )).

thf('2',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r2_xboole_0 @ X0 @ X2 )
      | ( X0 = X2 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d8_xboole_0])).

thf('3',plain,
    ( ( ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
      = sk_C )
    | ( r2_xboole_0 @ ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('4',plain,(
    ! [X21: $i,X22: $i] :
      ( ( k1_enumset1 @ X21 @ X21 @ X22 )
      = ( k2_tarski @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_1,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_2,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf(zf_stmt_3,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('5',plain,(
    ! [X10: $i,X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( zip_tseitin_0 @ X10 @ X11 @ X12 @ X13 )
      | ( r2_hidden @ X10 @ X14 )
      | ( X14
       != ( k1_enumset1 @ X13 @ X12 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('6',plain,(
    ! [X10: $i,X11: $i,X12: $i,X13: $i] :
      ( ( r2_hidden @ X10 @ ( k1_enumset1 @ X13 @ X12 @ X11 ) )
      | ( zip_tseitin_0 @ X10 @ X11 @ X12 @ X13 ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','6'])).

thf('8',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( X6 != X7 )
      | ~ ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X5 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('9',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ~ ( zip_tseitin_0 @ X7 @ X7 @ X8 @ X5 ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X1 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['7','9'])).

thf(l49_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('11',plain,(
    ! [X48: $i,X49: $i] :
      ( ( r1_tarski @ X48 @ ( k3_tarski @ X49 ) )
      | ~ ( r2_hidden @ X48 @ X49 ) ) ),
    inference(cnf,[status(esa)],[l49_zfmisc_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('13',plain,(
    ! [X50: $i,X51: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X50 @ X51 ) )
      = ( k2_xboole_0 @ X50 @ X51 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['12','13'])).

thf(t60_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r1_tarski @ A @ B )
        & ( r2_xboole_0 @ B @ A ) ) )).

thf('15',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( r1_tarski @ X3 @ X4 )
      | ~ ( r2_xboole_0 @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t60_xboole_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ~ ( r2_xboole_0 @ ( k2_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
    = sk_C ),
    inference('sup-',[status(thm)],['3','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','6'])).

thf('19',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( X6 != X5 )
      | ~ ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X5 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('20',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ~ ( zip_tseitin_0 @ X5 @ X7 @ X8 @ X5 ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['18','20'])).

thf('22',plain,(
    ! [X48: $i,X49: $i] :
      ( ( r1_tarski @ X48 @ ( k3_tarski @ X49 ) )
      | ~ ( r2_hidden @ X48 @ X49 ) ) ),
    inference(cnf,[status(esa)],[l49_zfmisc_1])).

thf('23',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X1 @ ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    ! [X50: $i,X51: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X50 @ X51 ) )
      = ( k2_xboole_0 @ X50 @ X51 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['23','24'])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('26',plain,(
    ! [X52: $i,X53: $i,X54: $i] :
      ( ( r2_hidden @ X52 @ X53 )
      | ~ ( r1_tarski @ ( k2_tarski @ X52 @ X54 ) @ X53 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( r2_hidden @ X2 @ ( k2_xboole_0 @ ( k2_tarski @ X2 @ X1 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    r2_hidden @ sk_A @ sk_C ),
    inference('sup+',[status(thm)],['17','27'])).

thf('29',plain,(
    $false ),
    inference(demod,[status(thm)],['0','28'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.dHYcBY8Pgf
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 10:36:34 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.34  % Running in FO mode
% 0.20/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.49  % Solved by: fo/fo7.sh
% 0.20/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.49  % done 82 iterations in 0.043s
% 0.20/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.49  % SZS output start Refutation
% 0.20/0.49  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.20/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.49  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.49  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.20/0.49  thf(r2_xboole_0_type, type, r2_xboole_0: $i > $i > $o).
% 0.20/0.49  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.20/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.49  thf(t47_zfmisc_1, conjecture,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( r1_tarski @ ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) @ C ) =>
% 0.20/0.49       ( r2_hidden @ A @ C ) ))).
% 0.20/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.49    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.49        ( ( r1_tarski @ ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) @ C ) =>
% 0.20/0.49          ( r2_hidden @ A @ C ) ) )),
% 0.20/0.49    inference('cnf.neg', [status(esa)], [t47_zfmisc_1])).
% 0.20/0.49  thf('0', plain, (~ (r2_hidden @ sk_A @ sk_C)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('1', plain,
% 0.20/0.49      ((r1_tarski @ (k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ sk_C) @ sk_C)),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(d8_xboole_0, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( r2_xboole_0 @ A @ B ) <=>
% 0.20/0.49       ( ( r1_tarski @ A @ B ) & ( ( A ) != ( B ) ) ) ))).
% 0.20/0.49  thf('2', plain,
% 0.20/0.49      (![X0 : $i, X2 : $i]:
% 0.20/0.49         ((r2_xboole_0 @ X0 @ X2) | ((X0) = (X2)) | ~ (r1_tarski @ X0 @ X2))),
% 0.20/0.49      inference('cnf', [status(esa)], [d8_xboole_0])).
% 0.20/0.49  thf('3', plain,
% 0.20/0.49      ((((k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ sk_C) = (sk_C))
% 0.20/0.49        | (r2_xboole_0 @ (k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ sk_C) @ 
% 0.20/0.49           sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.49  thf(t70_enumset1, axiom,
% 0.20/0.49    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.20/0.49  thf('4', plain,
% 0.20/0.49      (![X21 : $i, X22 : $i]:
% 0.20/0.49         ((k1_enumset1 @ X21 @ X21 @ X22) = (k2_tarski @ X21 @ X22))),
% 0.20/0.49      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.20/0.49  thf(d1_enumset1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.20/0.49       ( ![E:$i]:
% 0.20/0.49         ( ( r2_hidden @ E @ D ) <=>
% 0.20/0.49           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.20/0.49  thf(zf_stmt_2, axiom,
% 0.20/0.49    (![E:$i,C:$i,B:$i,A:$i]:
% 0.20/0.49     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.20/0.49       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_3, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.20/0.49       ( ![E:$i]:
% 0.20/0.49         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.20/0.49  thf('5', plain,
% 0.20/0.49      (![X10 : $i, X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.49         ((zip_tseitin_0 @ X10 @ X11 @ X12 @ X13)
% 0.20/0.49          | (r2_hidden @ X10 @ X14)
% 0.20/0.49          | ((X14) != (k1_enumset1 @ X13 @ X12 @ X11)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.20/0.49  thf('6', plain,
% 0.20/0.49      (![X10 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.20/0.49         ((r2_hidden @ X10 @ (k1_enumset1 @ X13 @ X12 @ X11))
% 0.20/0.49          | (zip_tseitin_0 @ X10 @ X11 @ X12 @ X13))),
% 0.20/0.49      inference('simplify', [status(thm)], ['5'])).
% 0.20/0.49  thf('7', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.49         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.20/0.49          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.20/0.49      inference('sup+', [status(thm)], ['4', '6'])).
% 0.20/0.49  thf('8', plain,
% 0.20/0.49      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.20/0.49         (((X6) != (X7)) | ~ (zip_tseitin_0 @ X6 @ X7 @ X8 @ X5))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.20/0.49  thf('9', plain,
% 0.20/0.49      (![X5 : $i, X7 : $i, X8 : $i]: ~ (zip_tseitin_0 @ X7 @ X7 @ X8 @ X5)),
% 0.20/0.49      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.49  thf('10', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r2_hidden @ X1 @ (k2_tarski @ X0 @ X1))),
% 0.20/0.49      inference('sup-', [status(thm)], ['7', '9'])).
% 0.20/0.49  thf(l49_zfmisc_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.20/0.49  thf('11', plain,
% 0.20/0.49      (![X48 : $i, X49 : $i]:
% 0.20/0.49         ((r1_tarski @ X48 @ (k3_tarski @ X49)) | ~ (r2_hidden @ X48 @ X49))),
% 0.20/0.49      inference('cnf', [status(esa)], [l49_zfmisc_1])).
% 0.20/0.49  thf('12', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (r1_tarski @ X0 @ (k3_tarski @ (k2_tarski @ X1 @ X0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.49  thf(l51_zfmisc_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.20/0.49  thf('13', plain,
% 0.20/0.49      (![X50 : $i, X51 : $i]:
% 0.20/0.49         ((k3_tarski @ (k2_tarski @ X50 @ X51)) = (k2_xboole_0 @ X50 @ X51))),
% 0.20/0.49      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.20/0.49  thf('14', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ X0 @ (k2_xboole_0 @ X1 @ X0))),
% 0.20/0.49      inference('demod', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf(t60_xboole_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]: ( ~( ( r1_tarski @ A @ B ) & ( r2_xboole_0 @ B @ A ) ) ))).
% 0.20/0.49  thf('15', plain,
% 0.20/0.49      (![X3 : $i, X4 : $i]:
% 0.20/0.49         (~ (r1_tarski @ X3 @ X4) | ~ (r2_xboole_0 @ X4 @ X3))),
% 0.20/0.49      inference('cnf', [status(esa)], [t60_xboole_1])).
% 0.20/0.49  thf('16', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: ~ (r2_xboole_0 @ (k2_xboole_0 @ X1 @ X0) @ X0)),
% 0.20/0.49      inference('sup-', [status(thm)], ['14', '15'])).
% 0.20/0.49  thf('17', plain,
% 0.20/0.49      (((k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ sk_C) = (sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['3', '16'])).
% 0.20/0.49  thf('18', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.49         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.20/0.49          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.20/0.49      inference('sup+', [status(thm)], ['4', '6'])).
% 0.20/0.49  thf('19', plain,
% 0.20/0.49      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.20/0.49         (((X6) != (X5)) | ~ (zip_tseitin_0 @ X6 @ X7 @ X8 @ X5))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.20/0.49  thf('20', plain,
% 0.20/0.49      (![X5 : $i, X7 : $i, X8 : $i]: ~ (zip_tseitin_0 @ X5 @ X7 @ X8 @ X5)),
% 0.20/0.49      inference('simplify', [status(thm)], ['19'])).
% 0.20/0.49  thf('21', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X0 @ X1))),
% 0.20/0.49      inference('sup-', [status(thm)], ['18', '20'])).
% 0.20/0.49  thf('22', plain,
% 0.20/0.49      (![X48 : $i, X49 : $i]:
% 0.20/0.49         ((r1_tarski @ X48 @ (k3_tarski @ X49)) | ~ (r2_hidden @ X48 @ X49))),
% 0.20/0.49      inference('cnf', [status(esa)], [l49_zfmisc_1])).
% 0.20/0.49  thf('23', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (r1_tarski @ X1 @ (k3_tarski @ (k2_tarski @ X1 @ X0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['21', '22'])).
% 0.20/0.49  thf('24', plain,
% 0.20/0.49      (![X50 : $i, X51 : $i]:
% 0.20/0.49         ((k3_tarski @ (k2_tarski @ X50 @ X51)) = (k2_xboole_0 @ X50 @ X51))),
% 0.20/0.49      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.20/0.49  thf('25', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ X1 @ (k2_xboole_0 @ X1 @ X0))),
% 0.20/0.49      inference('demod', [status(thm)], ['23', '24'])).
% 0.20/0.49  thf(t38_zfmisc_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.20/0.49       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.20/0.49  thf('26', plain,
% 0.20/0.49      (![X52 : $i, X53 : $i, X54 : $i]:
% 0.20/0.49         ((r2_hidden @ X52 @ X53)
% 0.20/0.49          | ~ (r1_tarski @ (k2_tarski @ X52 @ X54) @ X53))),
% 0.20/0.49      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.20/0.49  thf('27', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.49         (r2_hidden @ X2 @ (k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['25', '26'])).
% 0.20/0.49  thf('28', plain, ((r2_hidden @ sk_A @ sk_C)),
% 0.20/0.49      inference('sup+', [status(thm)], ['17', '27'])).
% 0.20/0.49  thf('29', plain, ($false), inference('demod', [status(thm)], ['0', '28'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
